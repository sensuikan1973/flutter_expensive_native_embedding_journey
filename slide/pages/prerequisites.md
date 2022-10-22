<PageTitleHeader section="prerequisites"/>

# prerequisites

---

<PageTitleHeader section="prerequisites" title="Concurrency in Dart"/>

## Event Handling

<div align="center">
    <img src="https://dart.dev/guides/language/concurrency/images/event-jank.png" width="300"/>
    <small>
    (ref: <a href="https://dart.dev/guides/language/concurrency#event-handling">Dart Docs</a>)
    </small>
</div>

---
layout: two-cols
---

<PageTitleHeader section="prerequisites" title="Concurrency in Dart"/>

## Background workers

<div align="center">
    <img src="https://dart.dev/guides/language/concurrency/images/isolate-bg-worker.png
" width="400"/>
    <small>
    (ref: <a href="https://dart.dev/guides/language/concurrency#background-workers">Dart Docs</a>)
    </small>
</div>

::right::

<br/>
<br/>
<br/>

```dart
// example
void main() async {
  final result = await _computeSomething();
  print(result.foo);
}

Future<String> _computeSomething() async {
  final p = ReceivePort();
  await Isolate.spawn(_executeExpensiveWork, p.sendPort);
  return await p.first as String;
}

Future<void> _executeExpensiveWork(SendPort p) async {
  final message = "expensive work result";
  Isolate.exit(p, message);
}
```
