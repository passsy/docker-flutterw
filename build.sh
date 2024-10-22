set -ex

docker pull ubuntu:focal

cd flutterw-base
docker build --platform linux/amd64 -t passsy/flutterw:base-latest .
cd ..

cd flutterw-android
docker build --platform linux/amd64 -t passsy/flutterw:android-latest .
cd ..
