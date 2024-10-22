set -ex

docker pull ubuntu:22.04

cd flutterw-base
docker build --platform linux/amd64 -t passsy/flutterw:base-latest .
cd ..

cd flutterw-android
docker build --platform linux/amd64 -t passsy/flutterw:android-latest .
cd ..
