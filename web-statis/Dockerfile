FROM nginx:1.27-alpine

LABEL maintainer="mohamadfirdaus12"
LABEL description="Web statis compro NIM - Nginx"

# Copy seluruh konten web statis
COPY . /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1
