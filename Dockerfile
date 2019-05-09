FROM fluent/fluentd:v1.4-1

USER root

COPY ./fluent.conf /fluentd/etc/

# install plugin
RUN apk add --update --virtual .build-deps \
    sudo build-base ruby-dev \
    && sudo gem install fluent-plugin-s3 -v 1.0.0 --no-document \
    && sudo gem install uuidtools \
    && sudo gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* \
    /home/fluent/.gem/ruby/*/cache/*.gem

# set timezone (Alpine)
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/* && \
    date