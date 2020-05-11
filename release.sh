set -ex

VERSION=`cat VERSION`
echo "version: $VERSION"

./build.sh

git add -A
git commit -m "Version $VERSION"
git tag -a "v$VERSION" -m "Version $VERSION"
git push
git push --tags

docker tag passsy/flutterw:latest passsy/flutterw:base-VERSION
docker push passsy/flutterw:latest

docker tag passsy/flutterw:base-latest passsy/flutterw:base-VERSION
docker push passsy/flutterw:base-latest

docker tag passsy/flutterw:android-latest passsy/flutterw:android-VERSION
docker push passsy/flutterw:android-latest