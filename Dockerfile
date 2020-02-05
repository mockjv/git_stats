FROM ruby:alpine

COPY ./git_stats-1.0.17.1.gem /

RUN apk add --no-cache git alpine-sdk && \
    gem install git_stats-1.0.17.1.gem && \
    gem update --system && \
    apk del alpine-sdk && \
    rm /git_stats-1.0.17.1.gem

ADD ./start.sh /start.sh
CMD ["/start.sh"]