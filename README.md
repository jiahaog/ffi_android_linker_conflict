# Minimal Repro for `DynamicLibrary.open` and `System.loadLibrary`

On Android API <=23, calling a Android SDK function that triggers `System.loadLibrary` will cause subsequent calls to `DynamicLibrary.open` in Dart to fail.

```sh
# First start an API <=23 emulator.

cd app
flutter run
```
