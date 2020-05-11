# Flutterw docker image

A docker image which contains all Flutter dependencies without actually installing Flutter. This image should be used together with the [flutter_wrapper](https://github.com/passsy/flutter_wrapper), which installs Flutter automatically based on the version used in the project.


Two versions are available on [dockerhub](https://cloud.docker.com/repository/docker/passsy/flutterw/)

Base variant, contains only Flutter dependencies
```
passsy/flutterw:base-latest
```

Variant with all 
```
passsy/flutterw:android-latest
```

## License

```
Copyright 2020 Pascal Welsch

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```