FROM ubuntu:latest

LABEL maintainer="marta.arcones@gmail.com"

RUN apt update -y && apt install -y python3-pip python3-apt && pip3 install ansible 

COPY playbook.yml .

CMD ansible localhost -m ping
