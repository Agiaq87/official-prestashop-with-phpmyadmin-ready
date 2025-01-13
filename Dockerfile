FROM prestashop/prestashop:latest

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libxml2-dev \
    && pecl install xdebug-3.1.5 \
    && docker-php-ext-enable xdebug

# Configurazione Xdebug
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.client_port=9003" >> /usr/local/etc/php/conf.d/xdebug.ini

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
