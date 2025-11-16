import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    if (input.config.buildCodeAssets) {
      switch (input.config.code.targetOS) {
        // case OS.android || OS.iOS || OS.linux || OS.macOS:
        //   output.assets.code.add(
        //     CodeAsset(
        //       package: 'host_name',
        //       name: 'src/third_party/file.dart',
        //       linkMode: LookupInProcess(),
        //     ),
        //   );
        case OS.windows:
          output.assets.code.add(
            CodeAsset(
              package: 'host_name',
              name: 'src/third_party/raylib_win.dart',
              linkMode: DynamicLoadingSystem(Uri.file('dll/raylib.dll')),
            ),
          );
        case final os:
          throw UnsupportedError('Unsupported OS: ${os.name}.');
      }
    }
  });
}
