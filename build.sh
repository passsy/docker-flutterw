set -ex

docker pull ubuntu:focal

cd flutterw-base
docker build -t passsy/flutterw:base-latest .
cd ..

cd flutterw-android
docker build -t passsy/flutterw:android-latest .
cd ..
