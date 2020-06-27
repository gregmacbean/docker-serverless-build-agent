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

RUN yarn global add serverless
