FROM golang:latest

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN apt-get update

RUN apt-get install unzip

RUN apt-get install zip

RUN unzip awscliv2.zip

RUN apt-get install sudo -y

RUN sudo ./aws/install

RUN sudo apt-get install -yy less

RUN rm awscliv2.zip