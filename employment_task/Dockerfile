FROM python:3.8.5
RUN apt-get update
RUN apt-get install apt-utils nano mc python3-pip libpq-dev systemd git -y
ADD . /home/studenttesting
WORKDIR /home/studenttesting/employment_task
RUN pip install --upgrade pip
RUN pip install -r requirements.txt