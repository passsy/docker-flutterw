# inspired by https://github.com/cirruslabs/docker-images-flutter/blob/master/base/Dockerfile but without installing flutter

# use android as base and allow building android apps
FROM cirrusci/android-sdk:28

# Install all dependencies which flutter requires
RUN sudo apt-get update \
    && sudo apt-get -y install unzip \
    && sudo apt-get install -y --allow-unauthenticated --no-install-recommends lib32stdc++6 libstdc++6 libglu1-mesa locales locales-all lcov \
    && sudo rm -rf /var/lib/apt/lists/*

# Install android tools, required for flutter to detect the android SDK
# https://github.com/flutter/flutter/issues/11225
RUN touch ~/.android/repositories.cfg \
    && sdkmanager "platforms;android-28" \
    && sdkmanager "tools" \
    && sdkmanager "platform-tools"