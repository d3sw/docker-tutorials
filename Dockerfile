# Start with the base nginx image.  This implicitly uses nginx:latest
FROM nginx

MAINTAINER first.last@domain.com

# Add our custom index.html
ADD index.html /usr/share/nginx/html/
