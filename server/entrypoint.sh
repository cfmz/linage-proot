#!/bin/sh
set -eu

: "${PORT:=8080}"
: "${UUID:=00000000-0000-0000-0000-000000000000}"
: "${WSPATH:=/linage}"

case "$WSPATH" in
  /*) ;;
  *) WSPATH="/$WSPATH" ;;
esac

export PORT UUID WSPATH

envsubst < /opt/xray/config.tmpl.json > /opt/xray/config.json

exec /opt/xray/xray run -config /opt/xray/config.json
