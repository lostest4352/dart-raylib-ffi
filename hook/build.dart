import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
// import 'package:native_toolchain_c/native_toolchain_c.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    // if (input.config.buildCodeAssets) {
    //   output.assets.code.add(
    //     // Asset ID: "package:sqlite_prebuilt/src/third_party/sqlite3.g.dart"
    //     CodeAsset(
    //       package: 'raylib',
    //       name: 'lib/raylib.g.dart',
    //       linkMode: DynamicLoadingBundled(),
    //       file: Uri(path: "dll/raylib.dll"),
    //     ),
    //   );
    // }
  });
}
