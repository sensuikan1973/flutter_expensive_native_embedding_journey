<PageTitleHeader section="prerequisite information"/>

# prerequisite information

---

<PageTitleHeader section="prerequisite information" title="Dart Isolate"/>

## Event Handling

<div align="center">
    <img src="https://dart.dev/assets/img/language/concurrency/event-loop.png" width="500"/>
    <small>
    (<a href="https://dart.dev/guides/language/concurrency#event-handling" target="_blank">https://dart.dev/guides/language/concurrency#event-handling</a>)
    </small>
</div>

---

<PageTitleHeader section="prerequisite information" title="Dart Isolate"/>

## Event Handling

<div align="center">
    <img src="https://dart.dev/assets/img/language/concurrency/event-jank.png" width="300"/>
    <small>
    (<a href="https://dart.dev/guides/language/concurrency#event-handling" target="_blank">https://dart.dev/guides/language/concurrency#event-handling</a>)
    </small>
</div>

---
layout: two-cols
---

<PageTitleHeader section="prerequisite information" title="Dart Isolate"/>

## Background Workers

<div align="center">
    <img src="https://dart.dev/assets/img/language/concurrency/isolate-bg-worker.png" width="400"/>
    <small>
    (<a href="https://dart.dev/guides/language/concurrency#background-workers" target="_blank">https://dart.dev/guides/language/<br/>concurrency#background-workers</a>)
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
