import "dart:ffi" as ffi;

import "package:ffi/ffi.dart";

import "raylib.g.dart";

// final ffi.Pointer<Color> myStructPtr = malloc<Color>()
//   ..ref = createStructFn();

void loadUI() {
  final ptr = calloc<Color>();
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
}
