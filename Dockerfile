FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Устанавливаем ffmpeg, Python и yt-dlp (через apk или pip с флагом break-system-packages)
RUN apk add --no-cache ffmpeg python3 py3-pip curl && \
    pip install --no-cache-dir -U yt-dlp --break-system-packages && \
    chown -R node:node /home/node/.n8n

USER node

# Опциональные ENV для удобства
ENV GENERIC_TIMEZONE=Asia/Bishkek
ENV NODE_ENV=production
