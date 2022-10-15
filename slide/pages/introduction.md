<PageTitleHeader section="Introduction" title="Term Definition"/>

## What is **_Expensive_** here ?

Operations require a lot of CPU, Memory and Running Time.  
e.g. Connection to remote server, Huge Numerical computation, ...

## What is **_Native_** here ?

- ① <Term val="native C APIs"/> <br> <small>on **Android/iOS/macOS**</small>
- ② <Term val="platform-specific APIs"/> <br> <small>(Kotlin/Java on Android, Swift/Objective-C on iOS, C++ on Windows, Objective-C on macOS, C on Linux)</small>

<!--
https://docs.flutter.dev/development/platform-integration/platform-channels

https://docs.flutter.dev/development/platform-integration/android/c-interop
https://docs.flutter.dev/development/platform-integration/ios/c-interop
https://docs.flutter.dev/development/platform-integration/macos/c-interop
-->

---

<PageTitleHeader section="Introduction" title="Use Case"/>

## Use Case of <Term val="native C APIs"/>

aa

---

<PageTitleHeader section="Introduction" title="Use Case"/>

## Use Case of <Term val="platform-specific APIs"/>

aa

---
layout: two-cols
---
<!-- https://github.com/slidevjs/slidev/blob/main/packages/client/layouts/two-cols.vue -->

<PageTitleHeader section="Introduction" title="Journey Overview"/>

## Journey: <Term val="native C APIs"/>
<br/>

```mermaid {scale: 0.6}
journey
    platform channels: 3: developer
    dart#58;ffi : 5: developer
```
<!-- https://mermaid-js.github.io/mermaid/#/./flowchart?id=entity-codes-to-escape-characters -->

::right::

## Journey: <Term val="platform-specific APIs"/>

```mermaid {scale: 0.6}
journey
    platform channels: 3: developer
    isolate platform channels : 5: developer
```
