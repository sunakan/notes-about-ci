FROM node:10.15.3-alpine
WORKDIR /app
COPY . ./
RUN apk --no-cache --virtual build-dependencies add \
  python \
  make \
  g++ \
  && npm install
