FROM ubuntu:20.04
LABEL maintainer="telebot"
LABEL version="0.1"
LABEL description="Telebot Ubuntu Docker"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt -y update && \
  apt install -y nano wget unzip python python3-pip \
  python-configparser python-argparse python-email 
RUN pip install python-telegram-bot && pip install imaplib2

RUN mkdir -p /opt/telebot

RUN chown root:users -R /opt/telebot && chmod 775 -R /opt/telebot
