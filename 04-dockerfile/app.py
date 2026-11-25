import os
import socket

from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return (
        "<h1>Hello from a custom Docker image!</h1>"
        f"<p>Container hostname: {socket.gethostname()}</p>"
        f"<p>GREETING env var: {os.getenv('GREETING', '(not set)')}</p>"
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
