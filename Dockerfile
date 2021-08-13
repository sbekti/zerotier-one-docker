FROM alpine:3.14
LABEL maintainer="Samudra Harapan Bekti <samudra.bekti@gmail.com>"

# ZeroTier relies on UDP port 9993
EXPOSE 9993/udp

ENV ZEROTIER_ONE_VERSION=1.6.5-r0

RUN apk add --no-cache zerotier-one=$ZEROTIER_ONE_VERSION
COPY main.sh /main.sh

RUN chmod 0755 /main.sh
ENTRYPOINT ["/main.sh"]
CMD ["zerotier-one"]
