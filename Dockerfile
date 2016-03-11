FROM alpine
MAINTAINER Ryan Zhao <zhaoxin@qiyestore.com>

RUN apk --update --no-cache add git

WORKDIR /usr/local/bin

ADD peach peach

RUN chmod +x peach

WORKDIR /var

RUN peach new -target=peachdoc

WORKDIR /var/peachdoc

VOLUME /var/peachdoc/custom

EXPOSE 5556

CMD ["peach","web"]
