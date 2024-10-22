# inspired by https://github.com/cirruslabs/docker-images-android/blob/master/sdk/tools/Dockerfile but without installing flutter

FROM ubuntu:24.04

ENV HOME=/home/dash \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US:en

# Install Flutter Linux tooling
RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --no-install-recommends curl git unzip xz-utils zip libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Install Flutter Linux tooling
RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --no-install-recommends clang cmake git ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev \
    && rm -rf /var/lib/apt/lists/*

# Tools that are welcomed in the flutter world
RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --no-install-recommends locales locales-all lcov xdg-utils wget \
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

# Allow git usage within mounted volumes
RUN git config --global --add safe.directory "*"

# Install ssh
WORKDIR /root/.ssh
RUN  apt-get update \
    && apt-get install -y --allow-unauthenticated --no-install-recommends ssh \   
    && chmod 0600 /root/.ssh \
    && ssh-keyscan -t rsa github.com >> known_hosts \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/dash