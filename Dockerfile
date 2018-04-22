FROM ruby:2-alpine

RUN apk add --no-cache git alpine-sdk && \
    gem install git_stats && \
    apk del alpine-sdk

ADD ./start.sh /start.sh
CMD ["/start.sh"]