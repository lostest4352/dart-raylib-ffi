import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
// import 'package:native_toolchain_c/native_toolchain_c.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    if (input.config.buildCodeAssets) {
      final packageName = input.packageName;

      final assetPathInPackage = input.packageRoot.resolve('shared/raylib.dll');

      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "$packageName.g.dart",
          linkMode: DynamicLoadingBundled(),
          file: assetPathInPackage,
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "ogl.g.dart",
          linkMode: DynamicLoadingSystem(Uri.file('opengl32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "gdi.g.dart",
          linkMode: DynamicLoadingSystem(Uri.file('gdi32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "winmm.g.dart",
          linkMode: DynamicLoadingSystem(Uri.file('winmm.dll')),
        ),
      );
    }
  });
}
