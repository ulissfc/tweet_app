FROM nginx:latest

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
RUN apt update 

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
