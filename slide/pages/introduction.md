<PageTitleHeader section="Introduction" title="UniqueTerm Definition"/>

## What is **_Expensive_** here ?

Operations require a lot of CPU, Memory and Running Time.  
e.g. Connection to remote server, Huge Numerical computation, ...

## What is **_Native_** here ?

- ① <UniqueTerm val="native C APIs"/> <br> <small>on **Android/iOS/macOS**</small>
- ② <UniqueTerm val="platform-specific APIs"/> <br> <small>(Kotlin/Java on Android, Swift/Objective-C on iOS, C++ on Windows, Objective-C on macOS, C on Linux)</small>

<!--
https://docs.flutter.dev/development/platform-integration/platform-channels

https://docs.flutter.dev/development/platform-integration/android/c-interop
https://docs.flutter.dev/development/platform-integration/ios/c-interop
https://docs.flutter.dev/development/platform-integration/macos/c-interop
-->

---
src: ./pages/summary.md
---

---

<PageTitleHeader section="Introduction" title="Topic"/>

### Topic of calling <UniqueTerm val="native C APIs"/>

● Use case  
● Journey Overview  
● Past Issue  
● Impact by <TechnicalTerm val="dart:ffi"/>

### Topic of calling <UniqueTerm val="platform-specific APIs"/>

● Use case  
● Journey Overview  
● Current Issue  
● (Future) Impact by <TechnicalTerm val="Isolate Platform Channels"/>
