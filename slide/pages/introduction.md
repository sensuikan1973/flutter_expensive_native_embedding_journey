<PageTitleHeader section="introduction" title="Term Definition"/>

## What is **<UniqueTerm val="Expensive"/>** here ?

The operations require a lot of CPU, Memory and Running Time.  
e.g. Connection to database, Huge numerical computation, ...

## What is **<UniqueTerm val="Native"/>** here ?

- ① <UniqueTechnicalTerm val="native C APIs"/>

```c
printf("Hello, World!");
```

- ② <UniqueTechnicalTerm val="platform-specific APIs"/> <br> <small>(Kotlin/Java on Android, Swift/Objective-C on iOS, C++ on Windows, Objective-C on macOS, C on Linux)</small>

```swift
URL(fileURLWithPath: "/path/to/xxx").bookmarkData(~) // macos. security-scoped bookmarks.
```

<!--
https://docs.flutter.dev/development/platform-integration/platform-channels

https://docs.flutter.dev/development/platform-integration/android/c-interop
https://docs.flutter.dev/development/platform-integration/ios/c-interop
https://docs.flutter.dev/development/platform-integration/macos/c-interop
-->

---

<PageTitleHeader section="introduction" title="Agenda"/>
<br>

● **summary**  
● **prerequisite information**  
　○ Dart Isolate  
● **calling <UniqueTechnicalTerm val="native C APIs"/>**  
　○ Use Case  
　○ Journey Overview  
　○ Performance Issue in the beginning  
　○ Performance Impact by <TechnicalTerm val="dart:ffi"/>  
● **calling <UniqueTechnicalTerm val="platform-specific APIs"/>**  
　○ Use Case  
　○ Journey Overview  
　○ Current Performance Issue  
　○ (Future) Performance Impact by <TechnicalTerm val="Isolate Platform Channels"/>  
● **summary**
