FROM ubuntu:18.04
ADD ./backup_21.02.2021 /home/web
RUN apt-get update
RUN apt-get install gcc g++ nano mc postgresql python3-pip libpq-dev git -y
RUN mkdir /home/web
WORKDIR /home/web
RUN git clone https://github.com/strax88/studenttesting.git
WORKDIR /home/web/studenttesting/