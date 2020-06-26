FROM node:lts-alpine

RUN apk add --no-cache bash \ 
  make \ 
  nodejs \ 
  npm \ 
  yarn \ 
  curl \ 
  wget \ 
  zip \ 
  py-pip \ 
  && \
  pip --no-cache-dir install awscli

RUN npm install -g serverless

WORKDIR /opt/app