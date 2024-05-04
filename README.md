# windows_appcommand

https://pub.dev/packages/windows_appcommand

A Flutter plugin that adds WM_APPCOMMAND message functionality for windows.

https://learn.microsoft.com/en-us/windows/win32/inputdev/wm-appcommand?redirectedfrom=MSDN

## Installation

```yaml
dependencies:
  windows_appcommand: ^0.0.1
```

or

```shell
$ flutter pub add windows_appcommand
```


## Usage

```dart
import 'package:flutter/material.dart';
import 'package:windows_appcommand/windows_appcommand.dart';

...

class _MyAppState extends State<MyApp> with AppCommand {
  @override
  void initState() {
    super.initState();
    // addListener
    windowsAppCommand.addListener(this);
  }

  @override
  void dispose() {
    // removeListener
    windowsAppCommand.removeListener(this);
    super.dispose();
  }

  ...
  
  
  // Listening events
  
  @override
  void onBassBoost() {
    // APPCOMMAND_BASS_BOOST
  }

}

```

> Please see the example app of this plugin for a full example.