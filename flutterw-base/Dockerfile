# inspired by https://github.com/cirruslabs/docker-images-flutter/blob/master/base/Dockerfile but without installing flutter

FROM ubuntu:bionic

ENV HOME=/home/dash \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US:en

# Install all dependencies which flutter requires
RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:git-core/ppa \
    && apt-get update \
    && apt-get install -y unzip curl git \
    && apt-get install -y --allow-unauthenticated --no-install-recommends lib32stdc++6 libstdc++6 libglu1-mesa locales locales-all lcov \
    && apt-get remove -y software-properties-common \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/dash