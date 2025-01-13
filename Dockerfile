FROM prestashop/prestashop:latest

# Installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libxml2-dev \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Pulisci la cache di apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
