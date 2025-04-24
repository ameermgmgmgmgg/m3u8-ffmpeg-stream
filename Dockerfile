FROM alpine:latest

RUN apk add --no-cache ffmpeg curl

# رابط البث المباشر (غيّره على راحتك)
ENV STREAM_URL=https://stream.sainaertebat.com/hls2/ssc1.m3u8
ENV RTMP_URL=rtmps://dc4-1.rtmp.t.me/s/2400775751:287QyHiIjgQbhfel_a3S2A

CMD ffmpeg -re -i "$STREAM_URL" -c copy -f flv "$RTMP_URL"
