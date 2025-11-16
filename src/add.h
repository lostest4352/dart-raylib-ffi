// add.h
#ifdef BUILD_DLL
#define DLL_EXPORT __declspec(dllexport)
#else
#define DLL_EXPORT __declspec(dllimport)
#endif

#ifdef __cplusplus
extern "C" {
#endif

DLL_EXPORT int add(int a, int b);

#ifdef __cplusplus
}
#endif