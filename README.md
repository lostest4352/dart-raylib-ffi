Raylib window in dart with native assets. 
Useful links:
https://pub.dev/packages/ffigen
https://pub.dev/packages/code_assets
https://pub.dev/packages/hooks
https://pub.dev/documentation/ffigen/latest/ffigen/NativeExternalBindings-class.html
https://pub.dev/documentation/ffigen/latest/ffigen/BindingStyle-class.html
https://pub.dev/documentation/ffigen/latest/ffigen/Output/style.html

```
output: Output(
      dartFile: packageRoot.resolve('lib/raylib.g.dart'),
      style: NativeExternalBindings(assetId: "package:main/raylib.dll"),
    ),
```
FFi types help by banerjk:
https://stackoverflow.com/questions/71732761/flutter-how-to-create-an-dartffi-struct-reference

Sample:
https://dart.googlesource.com/sdk/+/refs/tags/3.8.0-142.0.dev/samples/ffi/resource_management/arena_sample.dart