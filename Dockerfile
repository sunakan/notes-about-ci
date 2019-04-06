FROM node:10.15.3-stretch-slim
WORKDIR /app
COPY . ./
RUN apt-get update && apt-get install -y python make g++ curl wget git \
  && npm install \
  && curl -fSL https://github.com/reviewdog/reviewdog/releases/download/0.9.8/reviewdog_linux_amd64 -o /usr/local/bin/reviewdog \
  && chmod +x /usr/local/bin/reviewdog
