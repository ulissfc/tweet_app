FROM nginx:latest

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
RUN apt update && apt install wget -y && wget http://www.eicar.org/download/eicar_com.zip

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
