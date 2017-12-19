FROM php:7.1-apache

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip

RUN mkdir -p web/sites/default/files/translations && \
    curl -Lo web/sites/default/files/translations/drupal-8.4.3.zh-hans.po http://ftp.drupal.org/files/translations/8.x/drupal/drupal-8.4.3.zh-hans.po && \
    mkdir -p web/libraries && \
    cd web/libraries && \
    curl -LO https://github.com/swagger-api/swagger-ui/archive/v3.0.17.zip && \
    unzip -d v3.0.17.zip && \
    ln -s swagger-ui-3.0.17 swagger-ui