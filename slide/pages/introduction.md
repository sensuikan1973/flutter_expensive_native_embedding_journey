<PageTitleHeader section="Introduction" title="UniqueTechnicalTerm Definition"/>

## What is **<UniqueTerm val="Expensive"/>** here ?

Operations require a lot of CPU, Memory and Running Time.  
e.g. Connection to remote server, Huge Numerical computation, ...

## What is **<UniqueTerm val="Native"/>** here ?

- ① <UniqueTechnicalTerm val="native C APIs"/>
- ② <UniqueTechnicalTerm val="platform-specific APIs"/> <br> <small>(Kotlin/Java on Android, Swift/Objective-C on iOS, C++ on Windows, Objective-C on macOS, C on Linux)</small>

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

### Topic of calling <UniqueTechnicalTerm val="native C APIs"/>

● Use Case  
● Journey Overview  
● Performance Issue at Beginning  
● Performance Impact by <TechnicalTerm val="dart:ffi"/>

### Topic of calling <UniqueTechnicalTerm val="platform-specific APIs"/>

● Use Case  
● Journey Overview  
● Current Perofrmance Issue  
● (Future) Performance Impact by <TechnicalTerm val="Isolate Platform Channels"/>
