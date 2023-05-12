# syntax=docker/dockerfile:1
FROM alpine 
LABEL maintainer="Aleksandra Wójcik"
WORKDIR /app
COPY app.js package.json /app/
RUN apk add --no-cache nodejs npm && npm install
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1
EXPOSE 3000
CMD ["node", "app.js"]