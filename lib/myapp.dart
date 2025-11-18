import "dart:ffi" as ffi;

import "package:ffi/ffi.dart";

import "raylib.g.dart";

void loadUI() {
  // final ptr = calloc<Color>();

  // using((Arena arena) {
  //   final ptr = arena.call<Color>;
  // });

  final arena = Arena();

  final greenPtr = arena.call<Color>();
  greenPtr.ref.r = 0;
  greenPtr.ref.g = 228;
  greenPtr.ref.b = 222;
  greenPtr.ref.a = 255;

  final darkPtr = arena.call<Color>();
  darkPtr.ref.r = 40;
  darkPtr.ref.g = 40;
  darkPtr.ref.b = 40;
  darkPtr.ref.a = 255;

  InitWindow(600, 400, "myapp".toNativeUtf8().cast<ffi.Char>());
  //
  while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(darkPtr.ref);
    DrawText(
      "this app".toNativeUtf8().cast<ffi.Char>(),
      80,
      50,
      20,
      greenPtr.ref,
    );
    EndDrawing();
  }
  CloseWindow();
  // GetScreenHeight();
  // calloc.free(greenPtr);
  arena.releaseAll();
}
