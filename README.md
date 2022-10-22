# [Flutter Expensive Native Embedding Journey](https://sensuikan1973.github.io/flutter_expensive_native_embedding_journey)

Slide of ["Flutter Expensive Native Embedding Journey"](https://fortee.jp/flutterkaigi-2022/proposal/d6a2b41c-e765-4d5f-845d-9290148cd880) at [FlutterKaigi 2022](https://flutterkaigi.jp/2022/).

## References

- Flutter
  - [Flutter architectural overview](https://docs.flutter.dev/resources/architectural-overview)
  - [Writing platform-specific code](https://docs.flutter.dev/development/platform-integration/platform-channels)
    - [Channels and platform threading (iOS, Android)](https://docs.flutter.dev/development/platform-integration/platform-channels#channels-and-platform-threading)
  - [Issue | Unable to call a platform channel method from another isolate](https://github.com/flutter/flutter/issues/13937)
    - [past Workaround](https://github.com/flutter/flutter/issues/13937#issuecomment-1155630152)
    - [Flutter-to-Host Messaging Audit](https://docs.google.com/document/d/1bD_tiN987fWEPtw7tjXHzqZVg_g9H95IS32Cm609VZ8)
    - [Design Doc | FFI Platform Channels](https://docs.google.com/document/d/1QhCs6RnDHG9ltYDOx9jaPg-s4sxOTFMC_kt3AZdf25g)
    - [Design Doc | Isolate Platform Channels](https://github.com/flutter/flutter/issues/13937#issuecomment-1203232254)
      - [flutter/website | Updated the platform channels documentation for background isolate channels](https://github.com/flutter/website/pull/7592)
      - [flutter/engin | Started handling messages from background isolates for iOS](https://github.com/flutter/engine/pull/35174)
      - [gaaclarke/background_isolate_channels_sample](https://github.com/gaaclarke/background_isolate_channels_sample)
    - [Issue | A communication channel between an isolate and platform code on an arbitrary thread](https://github.com/flutter/flutter/issues/29081)
  - [Support integrating with C/C++ in plugin framework](https://github.com/flutter/flutter/issues/7053)
  - dart:ffi
    - [Dart VM FFI Vision](https://gist.github.com/mraleph/2582b57737711da40262fad71215d62e)
    - [Design and implement Dart VM FFI](https://github.com/dart-lang/sdk/issues/34452)
    - [Binding to native macOS code using dart:ffi](https://docs.flutter.dev/development/platform-integration/macos/c-interop)
    - [Binding to native iOS code using dart:ffi](https://docs.flutter.dev/development/platform-integration/ios/c-interop)
    - [Binding to native Android code using dart:ffi](https://docs.flutter.dev/development/platform-integration/android/c-interop)
    - [dart-lang/sdk | dart:ffi SQLite mini tutorial | Architecture Overview](https://github.com/dart-lang/sdk/blob/master/samples/ffi/sqlite/docs/sqlite-tutorial.md#architecture-overview)
    - [ffigen](https://pub.dev/packages/ffigen)
- Others
  - [Concurrency in Dart](https://dart.dev/guides/language/concurrency)
  - [Codemagic | Flutter isolates – everything you need to know](https://blog.codemagic.io/understanding-flutter-isolates/)
  - [What does "costly" mean in terms of software operations?](https://stackoverflow.com/a/9888431)
  - [sensuikan1973 | FFI in Flutter/Dart](https://speakerdeck.com/sensuikan1973/dart)
  - [sensuikan1973/pedax | Real world example: desktop app has native logic and background threading with `dart:ffi`](https://github.com/sensuikan1973/pedax)

---

## References for Presenter

- [FlutterKaigi 2022](https://flutterkaigi.jp/2022/)
  - [proposal cfp](https://fortee.jp/flutterkaigi-2022/speaker/proposal/cfp)
  - [requirements](https://flutterkaigi.jp/flutterkaigi/Precautions-for-Recording.ja.html)
- dockerize flutter app
  - [Codemagic | How to dockerize Flutter apps](https://blog.codemagic.io/how-to-dockerize-flutter-apps/)
    - [sbis04/flutter_docker](https://github.com/sbis04/flutter_docker)
- Others
  - [Google Cloud Text-to-Speech](https://cloud.google.com/text-to-speech/)
