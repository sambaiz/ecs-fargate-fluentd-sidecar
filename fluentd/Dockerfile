FROM fluent/fluentd:v1.4-1

USER root

COPY ./fluent.conf /fluentd/etc/

RUN apk add --update --virtual .build-deps \
    sudo build-base ruby-dev \
    && sudo gem install fluent-plugin-s3 -v 1.0.0 --no-document \
    && sudo gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* \
    /home/fluent/.gem/ruby/*/cache/*.gem

EXPOSE 24284