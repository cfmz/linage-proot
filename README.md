# Linage Proot

VPN-клиент с подписками в стиле Happ, per-app split tunneling и пресетами
игнорируемых приложений. Сервер — Xray (VLESS + WS) на Render.

## Платформы
- Android (Flutter + VpnService + libXray)
- Linux (Flutter + TUN + xray-core)

## Стек
- UI: Flutter
- Ядро VPN: Xray-core (MPL-2.0)
- Сервер: Render Web Service (Docker), VLESS + WebSocket
- CI: GitHub Actions

## Структура
- `app/` — Flutter-клиент
- `server/` — Docker-образ Xray для Render
- `presets/` — JSON-пресеты игнорируемых приложений
- `.github/workflows/` — сборки и деплой

## Лицензия
MIT (см. `LICENSE`). Сторонние компоненты — в `NOTICE`.
