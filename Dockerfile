FROM nginx:latest 
MAINTAINER mavrick202@gmail.com 
RUN apt update && apt install -y curl net-tools jq
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
#HEALTHCHECK CMD curl --fail http://localhost || exit 1
CMD ["nginx", "-g", "daemon off;"]
