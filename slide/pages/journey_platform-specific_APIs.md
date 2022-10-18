<PageTitleHeader section="calling platform-specific APIs" title="Use Case"/>

## Use Case

As the term implies, it is used to call <UniqueTerm val="platform-specific APIs"/>.  
A few examples include the use of [security-scoped bookmarks](https://pub.dev/packages/macos_secure_bookmarks) and [file_selector](https://pub.dev/packages/file_selector).

---

<PageTitleHeader section="calling platform-specific APIs" title="Journey Overview"/>

## Journey Overview

TODO: aaa

---

<PageTitleHeader section="calling platform-specific APIs" title="Issues"/>

## Issues

It's heavy to implement _Expensive_ logic to call <UniqueTerm val="platform-specific APIs"/>.  
It's because <TechnicalTerm val="Platform Channels"/> can't be used from all isolates and occupy UI thread.

---

<PageTitleHeader section="calling platform-specific APIs" title="Impact"/>

## (Future) Impact by <TechnicalTerm val="Isolate Platform Channels"/>

TODO: aaa
