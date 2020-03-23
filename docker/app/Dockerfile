FROM node:latest

RUN apt update \
    && apt install -y vim git && \
    npm install -g npm

COPY ./.ssh /root/.ssh
RUN chmod 600 /root/.ssh/id_rsa_github

WORKDIR /opt/node_app

COPY ./package.json package-lock.json* ./
RUN npm install --no-optional && npm cache clean --force
ENV PATH /opt/node_app/node_modules/.bin:$PATH
WORKDIR /opt/node_app/app

ENV HOST 0.0.0.0
EXPOSE 8080