FROM alpine:3.20

ARG XRAY_VERSION=1.8.24

RUN apk add --no-cache wget unzip ca-certificates tzdata gettext \
 && wget -q "https://github.com/XTLS/Xray-core/releases/download/v${XRAY_VERSION}/Xray-linux-64.zip" -O /tmp/xray.zip \
 && mkdir -p /opt/xray \
 && unzip -q /tmp/xray.zip -d /opt/xray \
 && chmod +x /opt/xray/xray \
 && rm /tmp/xray.zip

COPY entrypoint.sh /entrypoint.sh
COPY xray/config.tmpl.json /opt/xray/config.tmpl.json
RUN chmod +x /entrypoint.sh

ENV PORT=8080
ENV UUID=00000000-0000-0000-0000-000000000000
ENV WSPATH=/linage

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
