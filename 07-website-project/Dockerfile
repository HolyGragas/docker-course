FROM nginx:alpine

# Replace nginx's default page with our website
RUN rm -rf /usr/share/nginx/html/*
COPY site/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ > /dev/null || exit 1

# nginx:alpine already defines CMD ["nginx", "-g", "daemon off;"]
