#Kita gunakan web server Nginx sebagai base image
FROM nginx:alpine

# Kita copy file index.html ke dalam folder /usr/share/nginx/html
COPY index.html /usr/share/nginx/html

# Kita expose port 80
EXPOSE 80
