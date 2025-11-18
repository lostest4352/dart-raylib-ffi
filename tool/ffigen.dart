import 'dart:io';

import 'package:ffigen/ffigen.dart';

void main() {
  final packageRoot = Platform.script.resolve('../');
  FfiGenerator(
    // Required. Output path for the generated bindings.
    output: Output(
      dartFile: packageRoot.resolve('lib/raylib.g.dart'),
      style: NativeExternalBindings(assetId: "package:main/raylib.dll"),
    ),
    // Optional. Where to look for header files.
    headers: Headers(
      entryPoints: [packageRoot.resolve('src/raylib.h')],
      // this is wrong compilerOptions: ["/SUBSYSTEM:WINDOWS", "/ENTRY:mainCRTStartup"],
    ),
    // Optional. What functions to generate bindings for.
    functions: Functions.includeAll,
    // macros: Macros.includeAll,
    // structs: Structs.includeAll,
    // typedefs: Typedefs.includeAll,
    // unions: Unions.includeAll,
  ).generate();
}
