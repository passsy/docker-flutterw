# Inspired from https://github.com/cirruslabs/docker-images-android/blob/master/sdk/tools/Dockerfile but without launched emulator

FROM passsy/flutterw:base-latest

ENV ANDROID_HOME=/opt/android-home
ENV ANDROID_SDK_ROOT=/opt/android-home
ENV ANDROID_COMMANDLINE_TOOLS=$ANDROID_HOME/cmdline-tools
ENV PATH=${PATH}:${ANDROID_COMMANDLINE_TOOLS}/tools/bin:${ANDROID_HOME}/platform-tools

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk \
    && apt-get install -y sudo wget zip unzip git openssh-client curl software-properties-common build-essential lib32stdc++6 libstdc++6 libpulse0 libglu1-mesa locales lcov --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && sh -c 'echo "en_US.UTF-8 UTF-8" > /etc/locale.gen' \
    && locale-gen \
    && update-locale LANG=en_US.UTF-8

RUN cd /opt \
    && mkdir android-home \
    # comes from https://developer.android.com/studio/#command-tools
    && wget -q https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip -O android-commandlinetools.zip \
    && unzip -q android-commandlinetools.zip -d ${ANDROID_COMMANDLINE_TOOLS} \
    && rm android-commandlinetools.zip

RUN yes | sdkmanager --licenses
RUN touch /root/.android/repositories.cfg \
    && sdkmanager platform-tools