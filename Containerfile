FROM ubuntu:24.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y \
  golang \
  ca-certificates

RUN go install github.com/la5nta/pat@latest