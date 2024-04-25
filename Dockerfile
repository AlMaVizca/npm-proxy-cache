FROM node:20-alpine

RUN npm install -g npm-proxy-cache

VOLUME /cache

EXPOSE 8080
ENV NODE_TLS_REJECT_UNAUTHORIZED='0'
#One month cache
ENV TTL='2678400'
CMD ["-h", "0.0.0.0", "-s", "/cache", "-t", "${TTL}"]
