FROM webdevops/php-nginx-dev:ubuntu-16.04

ENV PROVISION_CONTEXT "development"

# Deploy scripts/configurations
COPY etc/             /opt/docker/etc/
COPY provision/       /opt/docker/provision/

RUN /opt/docker/bin/provision add --tag bootstrap --tag entrypoint boilerplate-main boilerplate-main-development boilerplate-deployment \
    && /opt/docker/bin/bootstrap.sh

# Configure volume/workdir
RUN mkdir -p /app/ && mkdir -p /opt/tmp && chmod -R 2777 /opt/tmp
WORKDIR /app/
