FROM nginx:alpine

# Salin konfigurasi Nginx untuk port 8080 (keperluan Google Cloud Run)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Salin fail web
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
