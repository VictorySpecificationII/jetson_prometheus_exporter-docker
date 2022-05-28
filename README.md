# Jetson Nano Node Exporter for Docker

## The idea

I am practicing my image writing skills and this seemed like a good idea.

The original work can be found at:
 - https://github.com/Ektimo

## How to use
One of two ways:
 - docker run -d intellectualplayspace/jetsonbox_exporter:latest
 - docker-compose up -d


## Notes

If you wish to change the port the service runs on, edit:
 - main.py
 - EXPOSE statement in Dockerfile
