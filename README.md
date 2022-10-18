# [flutter_expensive_native_embedding_journey](https://sensuikan1973.github.io/flutter_expensive_native_embedding_journey)

Slide and Investigation for ["Flutter Expensive Native Embedding Journey"](https://fortee.jp/flutterkaigi-2022/proposal/d6a2b41c-e765-4d5f-845d-9290148cd880) at [FlutterKaigi 2022](https://flutterkaigi.jp/2022/).


---

## For Developer

### Setup (MacOS)

```sh
./scripts/setup_flutter.sh
```

### References

- [FlutterKaigi](https://flutterkaigi.jp/2022/)
  - [requirements](https://flutterkaigi.jp/flutterkaigi/Precautions-for-Recording.ja.html)
- dockerize flutter app
  - [Codemagic | How to dockerize Flutter apps](https://blog.codemagic.io/how-to-dockerize-flutter-apps/)
    - [sbis04/flutter_docker](https://github.com/sbis04/flutter_docker)
- Flutter
  - [Writing platform-specific code](https://docs.flutter.dev/development/platform-integration/platform-channels)
  - [Unable to call a platform channel method from another isolate](https://github.com/flutter/flutter/issues/13937)
    - [flutter Isolate Platform Channels](https://github.com/flutter/flutter/issues/13937#issuecomment-1203232254)
      - [flutter/website | Updated the platform channels documentation for background isolate channels](https://github.com/flutter/website/pull/7592)
      - [gaaclarke/background_isolate_channels_sample](https://github.com/gaaclarke/background_isolate_channels_sample)
  - [Support integrating with C/C++ in plugin framework](https://github.com/flutter/flutter/issues/7053)
  - dart:ffi
    - [Dart VM FFI Vision](https://gist.github.com/mraleph/2582b57737711da40262fad71215d62e)
    - [Design and implement Dart VM FFI](https://github.com/dart-lang/sdk/issues/34452)
    - [Binding to native macOS code using dart:ffi](https://docs.flutter.dev/development/platform-integration/macos/c-interop)
    - [Binding to native iOS code using dart:ffi](https://docs.flutter.dev/development/platform-integration/ios/c-interop)
    - [Binding to native Android code using dart:ffi](https://docs.flutter.dev/development/platform-integration/android/c-interop)
- Others
  - [What does "costly" mean in terms of software operations?](https://stackoverflow.com/a/9888431)
  - [sensuikan1973 | FFI in Flutter/Dart](https://speakerdeck.com/sensuikan1973/dart)
  - [Google Cloud Text-to-Speech](https://cloud.google.com/text-to-speech/)
