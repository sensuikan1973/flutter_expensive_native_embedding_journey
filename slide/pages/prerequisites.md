<PageTitleHeader section="prerequisites" title="Concurrency in Dart"/>

## Event Handling

<div align="center">
    <img src="https://dart.dev/guides/language/concurrency/images/event-jank.png" width="300"/>
    <small>
    (<a href="https://dart.dev/guides/language/concurrency#event-handling">ref: Dart Docs</a>)
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
    (<a href="https://dart.dev/guides/language/concurrency#background-workers">ref: Dart Docs</a>)
    </small>
</div>

::right::

<br/>
<br/>
<br/>

```dart
// example
void main() async {
  final res = await _computeSomething();
  doSomething(res.foo); // Respond to events
}

Future<String> _computeSomething() async {
  final p = ReceivePort();
  await Isolate.spawn(_doExpensiveWork, p.sendPort);
  return await p.first as String;
}

Future<void> _doExpensiveWork(SendPort p) async {
  final res = "expensive work result";
  Isolate.exit(p, res);
}
```
