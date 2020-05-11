set -ex

VERSION=`cat VERSION`
echo "version: $VERSION"

./build.sh

git add -A
git commit -m "Version $VERSION"
git tag -a "v$VERSION" -m "Version $VERSION"
git push
git push --tags

# Legacy
docker tag passsy/flutterw:latest passsy/flutterw:$VERSION
docker push passsy/flutterw:$VERSION
docker push passsy/flutterw:latest

# Base version
docker tag passsy/flutterw:base-latest passsy/flutterw:base-$VERSION
docker push passsy/flutterw:base-$VERSION
docker push passsy/flutterw:base-latest

# With android
docker tag passsy/flutterw:android-latest passsy/flutterw:android-$VERSION
docker push passsy/flutterw:android-$VERSION
docker push passsy/flutterw:android-latest