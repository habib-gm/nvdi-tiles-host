FROM maptiler/tileserver-gl:latest

WORKDIR /data

COPY config.json .
COPY *.mbtiles .

EXPOSE 8080
# mb tiles server
CMD ["--config", "/data/config.json"]