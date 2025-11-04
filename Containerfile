FROM ubuntu:24.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y \
  golang \
  ca-certificates



RUN mkdir -p /opt/pat/bin
ENV GOBIN=/opt/pat/bin
RUN go install github.com/la5nta/pat@latest
