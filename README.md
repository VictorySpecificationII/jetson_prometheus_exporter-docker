# Jetson Nano Node Exporter for Docker

## The idea

I am practicing my image writing skills and this seemed like a good idea.

The original work can be found at:
 - https://github.com/Ektimo

## How to use
Either:
 - docker run -d intellectualplayspace/jetsonbox_exporter:latest
or:
 - docker-compose up -d

## Browser

If you wish to see the metrics, navigate to <jetson_ip>:8888

## Notes

If you wish to change the port the service runs on, edit:
 - __main__.py
 - EXPOSE statement in Dockerfile
