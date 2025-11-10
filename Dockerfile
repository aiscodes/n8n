FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Устанавливаем ffmpeg + python3 + pip + yt-dlp
RUN apk add --no-cache ffmpeg python3 py3-pip curl && \
    pip install --no-cache-dir -U yt-dlp && \
    chown -R node:node /home/node/.n8n

USER node

# Railway переменные можно задать в панели:
# - YOUTUBE_API_KEY
# - OPENAI_API_KEY
# - N8N_ENCRYPTION_KEY
# - GENERIC_TIMEZONE=Asia/Bishkek
