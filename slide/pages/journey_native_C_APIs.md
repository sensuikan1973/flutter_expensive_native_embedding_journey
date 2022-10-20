<PageTitleHeader section="calling native C APIs"/>

# calling <UniqueTechnicalTerm val="native C APIs"/>

---

<PageTitleHeader section="calling native C APIs" title="Use Case"/>

## Use Case

Often I want to use an existing C based library that is difficult to replace and is often highly optimized.  
A few examples include the use of [realm](https://github.com/realm/realm-core) and [opencv](https://opencv.org/).

---
layout: two-cols
---
<!-- https://github.com/slidevjs/slidev/blob/main/packages/client/layouts/two-cols.vue -->

<PageTitleHeader section="calling native C APIs" title="Journey Overview"/>

## Journey Overview

```mermaid {scale: 0.6}
journey
    section Beginning
        via「Platform Channels」: 3
    section Big impact of performance
        with「dart#58;ffi」 : 6
    section Impact of glude code
        +「ffigen」 : 7
```
<!-- https://mermaid-js.github.io/mermaid/#/./flowchart?id=entity-codes-to-escape-characters -->

::right::

<br/>
<br/>
<br/>
<br/>
<div style="margin-left: 5em; font-size: xx-small">
    <div>
        [supplement]
        <br/>
        <TechnicalTerm val="dart:ffi"/> Architecture Overview
        (<a href="https://github.com/dart-lang/sdk/blob/master/samples/ffi/sqlite/docs/sqlite-tutorial.md#architecture-overview">ref: "dart-lang/sdk docs"</a>)
    </div>
    <br/>
    <img src="https://github.com/dart-lang/sdk/raw/master/samples/ffi/sqlite/docs/lib/scenario-default.svg" width="350"/>
</div>

---

<PageTitleHeader section="calling native C APIs" title="Issues"/>

## Performance Issue at Beginning

We had to use <a href="https://docs.flutter.dev/development/platform-integration/platform-channels" target="_blank"><TechnicalTerm val="Platform Channels"/></a> to call <UniqueTechnicalTerm val="native C APIs"/> with a lot of glue code.  
<!-- [Dart VM FFI Vision written by Google dart-lang Team Engineer](https://gist.github.com/mraleph/2582b57737711da40262fad71215d62e) -->

Not only there is an **overhead** to call <TechnicalTerm val="Platform Channels"/>, but [Executing channel handlers on background threads](https://docs.flutter.dev/development/platform-integration/platform-channels#channels-and-platform-threading) isn't supported except for iOS and Android.  
Especially, If We want to call <UniqueTerm val="Expensive"/> <UniqueTechnicalTerm val="native C APIs"/> on macOS/Windows/Linux without UI lag, We would struggle to improve my performance.

example: Android

```mermaid
flowchart LR
    subgraph M ["Main#32;Isolate"]
    end
    M -->|Platform Channels| P
    subgraph P ["Platform"]
    end
    P -->|JNI| N
    subgraph N ["C APIs"]
    end
```

---

<PageTitleHeader section="calling native C APIs" title="Impact"/>

## Performance Impact by <TechnicalTerm val="dart:ffi"/>

We don't have to use <TechnicalTerm val="Platform Channels"/>, because I can use <TechnicalTerm val="dart:ffi"/> to call <UniqueTechnicalTerm val="native C APIs"/>.  
We can call <UniqueTerm val="Expensive"/> <UniqueTechnicalTerm val="native C APIs"/> in background threads, Because I can **spawn isolate** with <TechnicalTerm val="dart:ffi"/>.  

example: isolated server calls native C APIs (ref: [sensuikan1973/pedax](https://github.com/sensuikan1973/pedax))

```mermaid
flowchart LR
    subgraph M ["Main#32;Isolate"]
    end
    M -->|spawn| S
    subgraph S ["Isolate#32;as#32;server"]
    end
```

```mermaid
flowchart LR
    subgraph M ["Main#32;Isolate"]
    end
    M -->|"request#32;heavy#32;native#32;C#32;APIs"| S
    subgraph S ["Isolate#32;as#32;server"]
    end
    S -->|spawn| S2
    S -->|spawn| S3
    subgraph S2 ["Spawned#32;Isolate"]
    end
    subgraph S3 ["Spawned#32;Isolate"]
    end
    S -->|response| M
```

<!-- https://mermaid-js.github.io/mermaid/#/flowchart -->
