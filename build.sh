set -ex

cd flutterw-base
docker build --pull -t passsy/flutterw:base-latest .
cd ..

cd flutterw-android
docker build --pull -t passsy/flutterw:android-latest .
cd ..