FROM python:3.11.4-alpine3.18

# Install spotdl
RUN pip install spotdl
# Install ffmpeg
RUN apk add ffmpeg

# Copy script
COPY sync.sh /usr/sync.sh

# Add cron job
RUN echo "*/30 * * * * /bin/sh /usr/sync.sh" >> /var/spool/cron/crontabs/root

# Run cron
CMD /usr/sync.sh && crond -f