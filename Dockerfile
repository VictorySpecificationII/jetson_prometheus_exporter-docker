FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl wget lsof
RUN apt-get install -y python3-pip

RUN pip3 install jetson-stats
RUN pip3 install schedule==0.6.0
RUN pip3 install prometheus-client==0.7.1
RUN pip3 install psutil==5.6.7

RUN mkdir jetson_prometheus_exporter
ADD jetson-prometheus-exporter jetson_prometheus_exporter

COPY ./tegrastats .
COPY ./jetson_clocks .

EXPOSE 8888/udp
EXPOSE 8888/tcp
CMD ./tegrastats
ENTRYPOINT python3 -m jetson_prometheus_exporter
