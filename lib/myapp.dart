import 'dart:ffi';

import "raylib.g.dart";
import 'package:ffi/ffi.dart' as ffi;

void loadUI() {
  InitWindow(600, 400, "myapp".toNativeUtf8().cast<Char>());
}
