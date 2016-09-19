FROM nginx:alpine

COPY nginx.template /etc/nginx
COPY html /usr/share/nginx/html

RUN apk add --update bash && rm -rf /var/cache/apk/*

EXPOSE 80

CMD /bin/bash -c "envsubst < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
