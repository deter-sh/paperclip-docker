FROM ghcr.io/paperclipai/paperclip:latest

USER root
RUN apt-get update && apt-get install -y \
    software-properties-common \
    ca-certificates \
    lsb-release \
    apt-transport-https \
    && curl -sSL https://packages.sury.org/php/README.txt | bash \
    && apt-get update && apt-get install -y \
    php8.4 \
    php8.4-cli \
    php8.4-mbstring \
    php8.4-xml \
    php8.4-curl \
    php8.4-zip \
    php8.4-pdo \
    php8.4-pgsql \
    && rm -rf /var/lib/apt/lists/*

USER node