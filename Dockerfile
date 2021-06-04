FROM ubuntu:18.04

ARG VERSION=1.19.2
ARG DOWNLOAD_URL=https://github.com/allure-framework/allurectl/releases/download/$VERSION/allurectl_linux_386

RUN apt-get update && apt-get install curl --yes
RUN curl $DOWNLOAD_URL -L -o /bin/allurectl
RUN chmod +x /bin/allurectl
