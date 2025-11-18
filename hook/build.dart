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
          name: "raylib.dll",
          linkMode: DynamicLoadingBundled(),
          file: assetPathInPackage,
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "opengl32",
          linkMode: DynamicLoadingSystem(Uri.file('opengl32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "gdi32",
          linkMode: DynamicLoadingSystem(Uri.file('gdi32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "winmm32",
          linkMode: DynamicLoadingSystem(Uri.file('winmm.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "kernal32",
          linkMode: DynamicLoadingSystem(Uri.file('kernal32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "shell32",
          linkMode: DynamicLoadingSystem(Uri.file('shell32.dll')),
        ),
      );
      output.assets.code.add(
        CodeAsset(
          package: packageName,
          name: "user32",
          linkMode: DynamicLoadingSystem(Uri.file('user32.dll')),
        ),
      );
    }
  });
}
