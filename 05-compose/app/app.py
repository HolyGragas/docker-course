import os

import psycopg
from flask import Flask

app = Flask(__name__)


def connect():
    return psycopg.connect(
        host=os.environ["DB_HOST"],
        dbname=os.environ["DB_NAME"],
        user=os.environ["DB_USER"],
        password=os.environ["DB_PASSWORD"],
    )


with connect() as conn:
    conn.execute("CREATE TABLE IF NOT EXISTS visits (id SERIAL PRIMARY KEY, at TIMESTAMPTZ DEFAULT now())")


@app.route("/")
def index():
    with connect() as conn:
        conn.execute("INSERT INTO visits DEFAULT VALUES")
        count = conn.execute("SELECT count(*) FROM visits").fetchone()[0]
    return f"<h1>Docker Compose lab</h1><p>This page has been visited <b>{count}</b> times (stored in PostgreSQL).</p>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
