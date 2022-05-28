docker stop jetsonbox_exporter
docker rm jetsonbox_exporter
docker run -d -p 8888:8888 --name jetsonbox_exporter intellectualplayspace/jetsonbox_exporter:latest
