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
  var list = [];

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
        body:  ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                list[index],
                style: const TextStyle(
                    color:Colors.black,
                    // fontSize: 18.0
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 1,
              color: Colors.grey,
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }

  @override
  void onBassBoost() {
    setState(() {
      list.add('${DateTime.now()} : onBassBoost APPCOMMAND_BASS_BOOST');
    });
  }

  @override
  void onBassDown() {
    setState(() {
      list.add('${DateTime.now()} : onBassDown APPCOMMAND_BASS_DOWN');
    });
  }

  @override
  void onBassUp() {
    setState(() {
      list.add('${DateTime.now()} : onBassUp APPCOMMAND_BASS_UP');
    });
  }

  @override
  void onBrowserBackward() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserBackward APPCOMMAND_BROWSER_BACKWARD');
    });
  }

  @override
  void onBrowserFavorites() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserFavorites APPCOMMAND_BROWSER_FAVORITES');
    });
  }

  @override
  void onBrowserForward() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserForward APPCOMMAND_BROWSER_FORWARD');
    });
  }

  @override
  void onBrowserHome() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserHome APPCOMMAND_BROWSER_HOME');
    });
  }

  @override
  void onBrowserRefresh() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserRefresh APPCOMMAND_BROWSER_REFRESH');
    });
  }

  @override
  void onBrowserSearch() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserSearch APPCOMMAND_BROWSER_SEARCH');
    });
  }

  @override
  void onBrowserStop() {
    setState(() {
      list.add('${DateTime.now()} : onBrowserStop APPCOMMAND_BROWSER_STOP');
    });
  }

  @override
  void onClose() {
    setState(() {
      list.add('${DateTime.now()} : onClose APPCOMMAND_CLOSE');
    });
  }

  @override
  void onCopy() {
    setState(() {
      list.add('${DateTime.now()} : onCopy APPCOMMAND_COPY');
    });
  }

  @override
  void onCorrectionList() {
    setState(() {
      list.add('${DateTime.now()} : onCorrectionList APPCOMMAND_CORRECTION_LIST');
    });
  }

  @override
  void onCut() {
    setState(() {
      list.add('${DateTime.now()} : onCut APPCOMMAND_CUT');
    });
  }

  @override
  void onDictateOrCommandControlToggle() {
    setState(() {
      list.add('${DateTime.now()} : onDictateOrCommandControlToggle APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE');
    });
  }

  @override
  void onFind() {
    setState(() {
      list.add('${DateTime.now()} : onFind APPCOMMAND_FIND');
    });
  }

  @override
  void onForwardMail() {
    setState(() {
      list.add('${DateTime.now()} : onForwardMail APPCOMMAND_FORWARD_MAIL');
    });
  }

  @override
  void onHelp() {
    setState(() {
      list.add('${DateTime.now()} : onHelp APPCOMMAND_HELP');
    });
  }

  @override
  void onLaunchApp1() {
    setState(() {
      list.add('${DateTime.now()} : onLaunchApp1 APPCOMMAND_LAUNCH_APP1');
    });
  }

  @override
  void onLaunchApp2() {
    setState(() {
      list.add('${DateTime.now()} : onLaunchApp2 APPCOMMAND_LAUNCH_APP2');
    });
  }

  @override
  void onLaunchMail() {
    setState(() {
      list.add('${DateTime.now()} : onLaunchMail APPCOMMAND_LAUNCH_MAIL');
    });
  }

  @override
  void onLaunchMediaSelect() {
    setState(() {
      list.add('${DateTime.now()} : onLaunchMediaSelect APPCOMMAND_LAUNCH_MEDIA_SELECT');
    });
  }

  @override
  void onMediaChannelDown() {
    setState(() {
      list.add('${DateTime.now()} : onMediaChannelDown APPCOMMAND_MEDIA_CHANNEL_DOWN');
    });
  }

  @override
  void onMediaChannelUp() {
    setState(() {
      list.add('${DateTime.now()} : onMediaChannelUp APPCOMMAND_MEDIA_CHANNEL_UP');
    });
  }

  @override
  void onMediaFastForward() {
    setState(() {
      list.add('${DateTime.now()} : onMediaFastForward APPCOMMAND_MEDIA_FAST_FORWARD');
    });
  }

  @override
  void onMediaNextTrack() {
    setState(() {
      list.add('${DateTime.now()} : onMediaNextTrack APPCOMMAND_MEDIA_NEXTTRACK');
    });
  }

  @override
  void onMediaPause() {
    setState(() {
      list.add('${DateTime.now()} : onMediaPause APPCOMMAND_MEDIA_PAUSE');
    });
  }

  @override
  void onMediaPlay() {
    setState(() {
      list.add('${DateTime.now()} : onMediaPlay APPCOMMAND_MEDIA_PLAY');
    });
  }

  @override
  void onMediaPlayPause() {
    setState(() {
      list.add('${DateTime.now()} : onMediaPlayPause APPCOMMAND_MEDIA_PLAY_PAUSE');
    });
  }

  @override
  void onMediaPreviousTrack() {
    setState(() {
      list.add('${DateTime.now()} : onMediaPreviousTrack APPCOMMAND_MEDIA_PREVIOUSTRACK');
    });
  }

  @override
  void onMediaRecord() {
    setState(() {
      list.add('${DateTime.now()} : onMediaRecord APPCOMMAND_MEDIA_RECORD');
    });
  }

  @override
  void onMediaRewind() {
    setState(() {
      list.add('${DateTime.now()} : onMediaRewind APPCOMMAND_MEDIA_REWIND');
    });
  }

  @override
  void onMediaStop() {
    setState(() {
      list.add('${DateTime.now()} : onMediaStop APPCOMMAND_MEDIA_STOP');
    });
  }

  @override
  void onMicOnOffToggle() {
    setState(() {
      list.add('${DateTime.now()} : onMicOnOffToggle APPCOMMAND_MIC_ON_OFF_TOGGLE');
    });
  }

  @override
  void onMicrophoneVolumeDown() {
    setState(() {
      list.add('${DateTime.now()} : onMicrophoneVolumeDown APPCOMMAND_MICROPHONE_VOLUME_DOWN');
    });
  }

  @override
  void onMicrophoneVolumeMute() {
    setState(() {
      list.add('${DateTime.now()} : onMicrophoneVolumeMute APPCOMMAND_MICROPHONE_VOLUME_MUTE');
    });
  }

  @override
  void onMicrophoneVolumeUp() {
    setState(() {
      list.add('${DateTime.now()} : onMicrophoneVolumeUp APPCOMMAND_MICROPHONE_VOLUME_UP');
    });
  }

  @override
  void onNew() {
    setState(() {
      list.add('${DateTime.now()} : onNew APPCOMMAND_NEW');
    });
  }

  @override
  void onOpen() {
    setState(() {
      list.add('${DateTime.now()} : onOpen APPCOMMAND_OPEN');
    });
  }

  @override
  void onPaste() {
    setState(() {
      list.add('${DateTime.now()} : onPaste APPCOMMAND_PASTE');
    });
  }

  @override
  void onPrint() {
    setState(() {
      list.add('${DateTime.now()} : onPrint APPCOMMAND_PRINT');
    });
  }

  @override
  void onRedo() {
    setState(() {
      list.add('${DateTime.now()} : onRedo APPCOMMAND_REDO');
    });
  }

  @override
  void onReplayToMail() {
    setState(() {
      list.add('${DateTime.now()} : onReplayToMail APPCOMMAND_REPLY_TO_MAIL');
    });
  }

  @override
  void onSave() {
    setState(() {
      list.add('${DateTime.now()} : onSave APPCOMMAND_SAVE');
    });
  }

  @override
  void onSendMail() {
    setState(() {
      list.add('${DateTime.now()} : onSendMail APPCOMMAND_SEND_MAIL');
    });
  }

  @override
  void onSpellCheck() {
    setState(() {
      list.add('${DateTime.now()} : onSpellCheck APPCOMMAND_SPELL_CHECK');
    });
  }

  @override
  void onTrebleDown() {
    setState(() {
      list.add('${DateTime.now()} : onTrebleDown APPCOMMAND_TREBLE_DOWN');
    });
  }

  @override
  void onTrebleUp() {
    setState(() {
      list.add('${DateTime.now()} : onTrebleUp APPCOMMAND_TREBLE_UP');
    });
  }

  @override
  void onUndo() {
    setState(() {
      list.add('${DateTime.now()} : onUndo APPCOMMAND_UNDO');
    });
  }

  @override
  void onVolumeDown() {
    setState(() {
      list.add('${DateTime.now()} : onVolumeDown APPCOMMAND_VOLUME_DOWN');
    });
  }

  @override
  void onVolumeMute() {
    setState(() {
      list.add('${DateTime.now()} : onVolumeMute APPCOMMAND_VOLUME_MUTE');
    });
  }

  @override
  void onVolumeUp() {
    setState(() {
      list.add('${DateTime.now()} : onVolumeUp APPCOMMAND_VOLUME_UP');
    });
  }
}
