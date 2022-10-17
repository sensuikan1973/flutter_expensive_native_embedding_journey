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
