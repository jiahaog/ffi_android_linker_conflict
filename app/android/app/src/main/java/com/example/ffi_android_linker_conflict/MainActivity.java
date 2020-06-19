package com.example.ffi_android_linker_conflict;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import android.media.SoundPool;
import android.media.AudioManager;

public class MainActivity extends FlutterActivity {
  @Override
  public void configureFlutterEngine(FlutterEngine flutterEngine) {
    super.configureFlutterEngine(flutterEngine);

    // This causes DynamicLibrary.open to fail on Android for API <=23.
    new SoundPool(10, AudioManager.STREAM_MUSIC, 0);

    // Anything that does a System.loadLibrary in the Android SDK will
    // cause this.
    // Alternatively this has the same effect.
    // android.webkit.CookieManager.getInstance();

  }
}
