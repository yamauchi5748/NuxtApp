# ベースイメージを指定
FROM nginx:latest

RUN apt-get update \
    && apt-get install -y vim

COPY conf.d /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

# 作業ディレクトリ作成&設定
WORKDIR /var/www