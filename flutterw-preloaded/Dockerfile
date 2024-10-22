# inspired by https://github.com/cirruslabs/docker-images-android/blob/master/sdk/tools/Dockerfile but without installing flutter

FROM passsy/flutterw:base-latest

ENV FLUTTER_SDK=/opt/flutter-sdk
ENV PATH="$PATH:$FLUTTER_SDK/bin"

RUN mkdir -p $FLUTTER_SDK
RUN git clone https://github.com/flutter/flutter.git -b master $FLUTTER_SDK
RUN git -C $FLUTTER_SDK fetch origin
RUN echo uname -a
# RUN flutter doctor -v
RUN flutter precache
