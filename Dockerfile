FROM nginx:alpine
COPY dist/angular-starter /usr/share/nginx/html
RUN chown -R nginx. /usr/share/nginx && \
    chown -R nginx. /var/cache/nginx && \
    chown -R nginx. /var/log/nginx && \
    chown -R nginx. /etc/nginx
RUN touch /var/run/nginx.pid && \
    chown -R nginx. /var/run/nginx.pid
USER nginx
