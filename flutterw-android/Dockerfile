# Inspired from https://github.com/cirruslabs/docker-images-android/blob/master/sdk/tools/Dockerfile but without launched emulator

FROM passsy/flutterw:base-latest

ENV ANDROID_HOME=/opt/android-home
ENV ANDROID_SDK_ROOT=/opt/android-home
ENV ANDROID_COMMANDLINE_TOOLS=$ANDROID_HOME/cmdline-tools/latest
ENV PATH=${PATH}:${ANDROID_COMMANDLINE_TOOLS}/bin:${ANDROID_HOME}/platform-tools

# Install OpenJDK 17 (LTS)
RUN apt-get update \
    && apt-get install -y openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt \
    && mkdir android-home \
    # comes from https://developer.android.com/studio/#command-tools
    && wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O android-commandlinetools.zip \
    && unzip -q android-commandlinetools.zip \
    && mkdir -p ${ANDROID_COMMANDLINE_TOOLS} && mv cmdline-tools/* ${ANDROID_COMMANDLINE_TOOLS} && rm -rf cmdline-tools/ \
    && rm android-commandlinetools.zip

RUN yes | sdkmanager --licenses
RUN touch /root/.android/repositories.cfg \
    && sdkmanager platform-tools