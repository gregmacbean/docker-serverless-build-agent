FROM node:lts-alpine

RUN apk add --no-cache bash make nodejs npm yarn curl wget zip py-pip && \
    pip --no-cache-dir install awscli

RUN mkdir -p /tmp/yarn && \
    mkdir -p /opt/yarn/dist && \
    cd /tmp/yarn && \
    wget -q https://yarnpkg.com/latest.tar.gz && \
    tar zvxf latest.tar.gz && \
    find /tmp/yarn -maxdepth 2 -mindepth 2 -exec mv {} /opt/yarn/dist/ \; && \
    rm -rf /tmp/yarn

RUN ln -sf /opt/yarn/dist/bin/yarn /usr/local/bin/yarn && \
  ln -sf /opt/yarn/dist/bin/yarn /usr/local/bin/yarnpkg && \
  yarn --version

RUN yarn global add serverless

WORKDIR /opt/app