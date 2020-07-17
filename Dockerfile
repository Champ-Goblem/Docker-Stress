FROM ubuntu:latest

RUN apt update && apt install -y stress-ng

ENV CPU 8
ENV VM 8
ENV BYTES 128M
ENV STRESS-CPU true
ENV STRESS-MEMORY true

COPY start.sh /
RUN chmod +x /start.sh

CMD /start.sh
