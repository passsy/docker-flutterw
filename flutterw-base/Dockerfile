# inspired by https://github.com/cirruslabs/docker-images-android/blob/master/sdk/tools/Dockerfile but without installing flutter

FROM ubuntu:24.04

ENV HOME=/home/dash \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US:en

# Install Flutter tooling dependencies
RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --no-install-recommends lib32stdc++6 libstdc++6 libglu1-mesa locales locales-all unzip curl lcov xdg-utils \
    && rm -rf /var/lib/apt/lists/*

# Update git 
RUN apt-get update \ 
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:git-core/ppa \
    && apt-get update \
    && apt-get install -y git \
    && apt-get remove -y software-properties-common \
    && rm -rf /var/lib/apt/lists/* \
    && git --version

# add github.com to known hosts
WORKDIR /root/.ssh
RUN chmod 0600 /root/.ssh \
    && ssh-keyscan -t rsa github.com >> known_hosts

WORKDIR /home/dash