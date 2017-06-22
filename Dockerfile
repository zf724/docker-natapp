FROM alpine
MAINTAINER NatApp Docker Maintainers

ENV VERSION 2_3_4
WORKDIR /root

ADD http://download.natapp.cn/assets/downloads/clients/${VERSION}/natapp_linux_amd64_${VERSION}.zip ${VERSION}.zip
ADD https://raw.githubusercontent.com/zf724/natapp/master/config.ini .

RUN set -xe \
    && unzip ${VERSION}.zip -d /root \
    && chmod +x natapp \
    && rm ${VERSION}.zip

ENTRYPOINT ["/root/natapp"]
