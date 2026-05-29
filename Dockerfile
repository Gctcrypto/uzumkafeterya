# Üzüm Cafe — static site served by nginx (Coolify-ready)
FROM nginx:alpine

# Custom server config (utf-8, caching, clean 404s)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the site (dev-only files excluded via .dockerignore)
COPY . /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost/ || exit 1
