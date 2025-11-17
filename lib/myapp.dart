import "dart:ffi";

import "package:ffi/ffi.dart";

import "raylib.g.dart";

void loadUI() {
  InitWindow(600, 400, "myapp".toNativeUtf8().cast<Char>());
  GetScreenHeight();
}
