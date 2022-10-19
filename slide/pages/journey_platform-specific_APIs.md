# calling <UniqueTechnicalTerm val="platform-specific APIs"/>

---

<PageTitleHeader section="calling platform-specific APIs" title="Use Case"/>

## Use Case

As the term implies, it is used to call <UniqueTechnicalTerm val="platform-specific APIs"/>.  
A few examples include the use of [security-scoped bookmarks](https://pub.dev/packages/macos_secure_bookmarks) and [file_selector](https://pub.dev/packages/file_selector).

<div style="margin-left: 5em; font-size: xx-small">
    <div>
        [supplement] <TechnicalTerm val="Platform Channels"/> Architectural overview
        (<a href="https://docs.flutter.dev/development/platform-integration/platform-channels#architecture">ref: "Flutter docs"</a>)
    </div>
</div>
<img src="https://docs.flutter.dev/assets/images/docs/PlatformChannels.png" width="250"/>

---
layout: two-cols
---
<!-- https://github.com/slidevjs/slidev/blob/main/packages/client/layouts/two-cols.vue -->

<PageTitleHeader section="calling platform-specific APIs" title="Journey Overview"/>

## Journey Overview

```mermaid {scale: 0.6}
journey
    section Beginning
        with「Platform Channels」: 3
    section Impact of glude code
        +「Pigeon」: 4
    section Big impact of performance
        +「Isolate Platform Channels」 : 7
```
<!-- https://docs.flutter.dev/development/platform-integration/platform-channels#pigeon -->

---

<PageTitleHeader section="calling platform-specific APIs" title="Issues"/>

## Issues

It's heavy to call <UniqueTerm val="Expensive"/> <UniqueTechnicalTerm val="platform-specific APIs"/> Because <TechnicalTerm val="Platform Channels"/> can't be used from all isolates and occupy UI thread.

---

<PageTitleHeader section="calling platform-specific APIs" title="Impact"/>

## (Future) Impact by <TechnicalTerm val="Isolate Platform Channels"/>

TODO: aaa
