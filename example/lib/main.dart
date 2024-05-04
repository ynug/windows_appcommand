import 'package:flutter/material.dart';
import 'package:windows_appcommand/windows_appcommand.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AppCommand {
  @override
  void initState() {
    super.initState();
    windowsAppCommand.addListener(this);
  }

  @override
  void dispose() {
    windowsAppCommand.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('windows_appcommand Plugin example app'),
        ),
        body: const Center(
          child: Text('Running on: Test\n'),
        ),
      ),
    );
  }

  @override
  void onBassBoost() {
    print('onBassBoost');
  }

  @override
  void onBassDown() {
    print('onBassDown');
  }

  @override
  void onBassUp() {
    print('onBassUp');
  }

  @override
  void onBrowserBackward() {
    print('onBrowserBackward');
  }

  @override
  void onBrowserFavorites() {
    print('onBrowserFavorites');
  }

  @override
  void onBrowserForward() {
    print('onBrowserForward');
  }

  @override
  void onBrowserHome() {
    print('onBrowserHome');
  }

  @override
  void onBrowserRefresh() {
    print('onBrowserRefresh');
  }

  @override
  void onBrowserSearch() {
    print('onBrowserSearch');
  }

  @override
  void onBrowserStop() {
    print('onBrowserStop');
  }

  @override
  void onClose() {
    print('onClose');
  }

  @override
  void onCopy() {
    print('onCopy');
  }

  @override
  void onCorrectionList() {
    print('onCorrectionList');
  }

  @override
  void onCut() {
    print('onCut');
  }

  @override
  void onDictateOrCommandControlToggle() {
    print('onDictateOrCommandControlToggle');
  }

  @override
  void onFind() {
    print('onFind');
  }

  @override
  void onForwardMail() {
    print('onForwardMail');
  }

  @override
  void onHelp() {
    print('onHelp');
  }

  @override
  void onLaunchApp1() {
    print('onLaunchApp1');
  }

  @override
  void onLaunchApp2() {
    print('onLaunchApp2');
  }

  @override
  void onLaunchMail() {
    print('onLaunchMail');
  }

  @override
  void onLaunchMediaSelect() {
    print('onLaunchMediaSelect');
  }

  @override
  void onMediaChannelDown() {
    print('onMediaChannelDown');
  }

  @override
  void onMediaChannelUp() {
    print('onMediaChannelUp');
  }

  @override
  void onMediaFastForward() {
    print('onMediaFastForward');
  }

  @override
  void onMediaNextTrack() {
    print('onMediaNextTrack');
  }

  @override
  void onMediaPause() {
    print('onMediaPause');
  }

  @override
  void onMediaPlay() {
    print('onMediaPlay');
  }

  @override
  void onMediaPlayPause() {
    print('onMediaPlayPause');
  }

  @override
  void onMediaPreviousTrack() {
    print('onMediaPreviousTrack');
  }

  @override
  void onMediaRecord() {
    print('onMediaRecord');
  }

  @override
  void onMediaRewind() {
    print('onMediaRewind');
  }

  @override
  void onMediaStop() {
    print('onMediaStop');
  }

  @override
  void onMicOnOffToggle() {
    print('onMicOnOffToggle');
  }

  @override
  void onMicrophoneVolumeDown() {
    print('onMicrophoneVolumeDown');
  }

  @override
  void onMicrophoneVolumeMute() {
    print('onMicrophoneVolumeMute');
  }

  @override
  void onMicrophoneVolumeUp() {
    print('onMicrophoneVolumeUp');
  }

  @override
  void onNew() {
    print('onNew');
  }

  @override
  void onOpen() {
    print('onOpen');
  }

  @override
  void onPaste() {
    print('onPaste');
  }

  @override
  void onPrint() {
    print('onPrint');
  }

  @override
  void onRedo() {
    print('onRedo');
  }

  @override
  void onReplayToMail() {
    print('onReplayToMail');
  }

  @override
  void onSave() {
    print('onSave');
  }

  @override
  void onSendMail() {
    print('onSendMail');
  }

  @override
  void onSpellCheck() {
    print('onSpellCheck');
  }

  @override
  void onTrebleDown() {
    print('onTrebleDown');
  }

  @override
  void onTrebleUp() {
    print('onTrebleUp');
  }

  @override
  void onUndo() {
    print('onUndo');
  }

  @override
  void onVolumeDown() {
    print('onVolumeDown');
  }

  @override
  void onVolumeMute() {
    print('onVolumeMute');
  }

  @override
  void onVolumeUp() {
    print('onVolumeUp');
  }
}
