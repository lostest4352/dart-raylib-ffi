import "dart:ffi" as ffi;

import "package:ffi/ffi.dart";

import "raylib.g.dart";

void loadUI() {
  // final ptr = calloc<Color>();

  // using((Arena arena) {
  //   final ptr = arena.call<Color>;
  // });

  final arena = Arena();

  final ptr = arena.call<Color>();

  ptr.ref.r = 0;
  ptr.ref.g = 228;
  ptr.ref.b = 48;
  ptr.ref.a = 255;
  InitWindow(600, 400, "myapp".toNativeUtf8().cast<ffi.Char>());
  //
  while (!WindowShouldClose()) {
    BeginDrawing();
    // ClearBackground();
    DrawText("this app".toNativeUtf8().cast<ffi.Char>(), 80, 50, 20, ptr.ref);
    EndDrawing();
  }
  CloseWindow();
  // GetScreenHeight();
  // calloc.free(ptr);
}
