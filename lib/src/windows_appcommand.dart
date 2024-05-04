
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:windows_appcommand/src/app_command.dart';


const kBassBoost = 'bassBoost';
const kBassDown = 'bassDown';
const kBassUp = 'bassUp';
const kBrowserBackward = 'browserBackward';
const kBrowserFavorites = 'browserFavorites';
const kBrowserForward = 'browserForward';
const kBrowserHome = 'browserHome';
const kBrowserRefresh = 'browserRefresh';
const kBrowserSearch = 'browserSearch';
const kBrowserStop = 'browserStop';
const kClose = 'close';
const kCopy = 'copy';
const kCorrectionList = 'correctionList';
const kCut = 'cut';
const kDictateOrCommandControlToggle = 'dictateOrCommandControlToggle';
const kFind = 'find';
const kForwardMail = 'forwardMail';
const kHelp = 'help';
const kLaunchApp1 = 'launchApp1';
const kLaunchApp2 = 'launchApp2';
const kLaunchMail = 'launchMail';
const kLaunchMediaSelect = 'launchMediaSelect';
const kMediaChannelDown = 'mediaChannelDown';
const kMediaChannelUp = 'mediaChannelUp';
const kMediaFastForward = 'mediaFastForward';
const kMediaNextTrack = 'mediaNextTrack';
const kMediaPause = 'mediaPause';
const kMediaPlay = 'mediaPlay';
const kMediaPlayPause = 'mediaPlayPause';
const kMediaPreviousTrack = 'mediaPreviousTrack';
const kMediaRecord = 'mediaRecord';
const kMediaRewind = 'mediaRewind';
const kMediaStop = 'mediaStop';
const kMicOnOffToggle = 'micOnOffToggle';
const kMicrophoneVolumeDown = 'microphoneVolumeDown';
const kMicrophoneVolumeMute = 'microphoneVolumeMute';
const kMicrophoneVolumeUp = 'microphoneVolumeUp';
const kNew = 'new';
const kOpen = 'open';
const kPaste = 'paste';
const kPrint = 'print';
const kRedo = 'redo';
const kReplayToMail = 'replayToMail';
const kSave = 'save';
const kSendMail = 'sendMail';
const kSpellCheck = 'spellCheck';
const kTrebleDown = 'trebleDown';
const kTrebleUp = 'trebleUp';
const kUndo = 'undo';
const kVolumeDown = 'volumeDown';
const kVolumeMute = 'volumeMute';
const kVolumeUp = 'volumeUp';



class WindowsAppcommand {
  WindowsAppcommand._() {
    _channel.setMethodCallHandler(_methodCallHandler);
  }

  /// The shared instance of [WindowsAppcommand].
  static final WindowsAppcommand instance = WindowsAppcommand._();

  final MethodChannel _channel = const MethodChannel('windows_appcommand');

  final ObserverList<AppCommand> _listeners =
  ObserverList<AppCommand>();

  Future<void> _methodCallHandler(MethodCall call) async {
    for (final AppCommand listener in listeners) {
      if (!_listeners.contains(listener)) {
        return;
      }

      if (call.method != 'onEvent') throw UnimplementedError();

      String eventName = call.arguments['eventName'];
      Map<String, Function> funcMap = {
        kBassBoost: listener.onBassBoost,
        kBassDown: listener.onBassDown,
        kBassUp: listener.onBassUp,
        kBrowserBackward: listener.onBrowserBackward,
        kBrowserFavorites: listener.onBrowserFavorites,
        kBrowserForward: listener.onBrowserForward,
        kBrowserHome: listener.onBrowserHome,
        kBrowserRefresh: listener.onBrowserRefresh,
        kBrowserSearch: listener.onBrowserSearch,
        kBrowserStop: listener.onBrowserStop,
        kClose: listener.onClose,
        kCopy: listener.onCopy,
        kCorrectionList: listener.onCorrectionList,
        kCut: listener.onCut,
        kDictateOrCommandControlToggle: listener.onDictateOrCommandControlToggle,
        kFind: listener.onFind,
        kForwardMail: listener.onForwardMail,
        kHelp: listener.onHelp,
        kLaunchApp1: listener.onLaunchApp1,
        kLaunchApp2: listener.onLaunchApp2,
        kLaunchMail: listener.onLaunchMail,
        kLaunchMediaSelect: listener.onLaunchMediaSelect,
        kMediaChannelDown: listener.onMediaChannelDown,
        kMediaChannelUp: listener.onMediaChannelUp,
        kMediaFastForward: listener.onMediaFastForward,
        kMediaNextTrack: listener.onMediaNextTrack,
        kMediaPause: listener.onMediaPause,
        kMediaPlay: listener.onMediaPlay,
        kMediaPlayPause: listener.onMediaPlayPause,
        kMediaPreviousTrack: listener.onMediaPreviousTrack,
        kMediaRecord: listener.onMediaRecord,
        kMediaRewind: listener.onMediaRewind,
        kMediaStop: listener.onMediaStop,
        kMicOnOffToggle: listener.onMicOnOffToggle,
        kMicrophoneVolumeDown: listener.onMicrophoneVolumeDown,
        kMicrophoneVolumeMute: listener.onMicrophoneVolumeMute,
        kMicrophoneVolumeUp: listener.onMicrophoneVolumeUp,
        kNew: listener.onNew,
        kOpen: listener.onOpen,
        kPaste: listener.onPaste,
        kPrint: listener.onPrint,
        kRedo: listener.onRedo,
        kReplayToMail: listener.onReplayToMail,
        kSave: listener.onSave,
        kSendMail: listener.onSendMail,
        kSpellCheck: listener.onSpellCheck,
        kTrebleDown: listener.onTrebleDown,
        kTrebleUp: listener.onTrebleUp,
        kUndo: listener.onUndo,
        kVolumeDown: listener.onVolumeDown,
        kVolumeMute: listener.onVolumeMute,
        kVolumeUp: listener.onVolumeUp,
      };
      funcMap[eventName]?.call();
    }
  }

  List<AppCommand> get listeners {
    final List<AppCommand> localListeners =
    List<AppCommand>.from(_listeners);
    return localListeners;
  }

  void addListener(AppCommand listener) {
    _listeners.add(listener);
  }

  void removeListener(AppCommand listener) {
    _listeners.remove(listener);
  }

}

final windowsAppCommand = WindowsAppcommand.instance;