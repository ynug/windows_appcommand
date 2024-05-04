/// https://learn.microsoft.com/en-us/windows/win32/inputdev/wm-appcommand?redirectedfrom=MSDN
abstract mixin class AppCommand {
  /// Emitted when the APPCOMMAND_BASS_BOOST.
  void onBassBoost() {}

  /// Emitted when the APPCOMMAND_BASS_DOWN.
  void onBassDown() {}

  /// Emitted when the APPCOMMAND_BASS_UP.
  void onBassUp() {}

  /// Emitted when the APPCOMMAND_BROWSER_BACKWARD.
  void onBrowserBackward() {}

  /// Emitted when the APPCOMMAND_BROWSER_FAVORITES.
  void onBrowserFavorites() {}

  /// Emitted when the APPCOMMAND_BROWSER_FORWARD.
  void onBrowserForward() {}

  /// Emitted when the APPCOMMAND_BROWSER_HOME.
  void onBrowserHome() {}

  /// Emitted when the APPCOMMAND_BROWSER_REFRESH.
  void onBrowserRefresh() {}

  /// Emitted when the APPCOMMAND_BROWSER_SEARCH.
  void onBrowserSearch() {}

  /// Emitted when the APPCOMMAND_BROWSER_STOP.
  void onBrowserStop() {}

  /// Emitted when the APPCOMMAND_CLOSE.
  void onClose() {}

  /// Emitted when the APPCOMMAND_COPY.
  void onCopy() {}

  /// Emitted when the APPCOMMAND_CORRECTION_LIST.
  void onCorrectionList() {}

  /// Emitted when the APPCOMMAND_CUT.
  void onCut() {}

  /// Emitted when the APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE.
  void onDictateOrCommandControlToggle() {}

  /// Emitted when the APPCOMMAND_FIND.
  void onFind() {}

  /// Emitted when the APPCOMMAND_FORWARD_MAIL.
  void onForwardMail() {}

  /// Emitted when the APPCOMMAND_HELP.
  void onHelp() {}

  /// Emitted when the APPCOMMAND_LAUNCH_APP1.
  void onLaunchApp1() {}

  /// Emitted when the APPCOMMAND_LAUNCH_APP2.
  void onLaunchApp2() {}

  /// Emitted when the APPCOMMAND_LAUNCH_MAIL.
  void onLaunchMail() {}

  /// Emitted when the APPCOMMAND_LAUNCH_MEDIA_SELECT.
  void onLaunchMediaSelect() {}

  /// Emitted when the APPCOMMAND_MEDIA_CHANNEL_DOWN.
  void onMediaChannelDown() {}

  /// Emitted when the APPCOMMAND_MEDIA_CHANNEL_UP.
  void onMediaChannelUp() {}

  /// Emitted when the APPCOMMAND_MEDIA_FAST_FORWARD.
  void onMediaFastForward() {}

  /// Emitted when the APPCOMMAND_MEDIA_NEXTTRACK.
  void onMediaNextTrack() {}

  /// Emitted when the APPCOMMAND_MEDIA_PAUSE.
  void onMediaPause() {}

  /// Emitted when the APPCOMMAND_MEDIA_PLAY.
  void onMediaPlay() {}

  /// Emitted when the APPCOMMAND_MEDIA_PLAY_PAUSE.
  void onMediaPlayPause() {}

  /// Emitted when the APPCOMMAND_MEDIA_PREVIOUSTRACK.
  void onMediaPreviousTrack() {}

  /// Emitted when the APPCOMMAND_MEDIA_RECORD.
  void onMediaRecord() {}

  /// Emitted when the APPCOMMAND_MEDIA_REWIND.
  void onMediaRewind() {}

  /// Emitted when the APPCOMMAND_MEDIA_STOP.
  void onMediaStop() {}

  /// Emitted when the APPCOMMAND_MIC_ON_OFF_TOGGLE.
  void onMicOnOffToggle() {}

  /// Emitted when the APPCOMMAND_MICROPHONE_VOLUME_DOWN.
  void onMicrophoneVolumeDown() {}

  /// Emitted when the APPCOMMAND_MICROPHONE_VOLUME_MUTE.
  void onMicrophoneVolumeMute() {}

  /// Emitted when the APPCOMMAND_MICROPHONE_VOLUME_UP.
  void onMicrophoneVolumeUp() {}

  /// Emitted when the APPCOMMAND_NEW.
  void onNew() {}

  /// Emitted when the APPCOMMAND_OPEN.
  void onOpen() {}

  /// Emitted when the APPCOMMAND_PASTE.
  void onPaste() {}

  /// Emitted when the APPCOMMAND_PRINT.
  void onPrint() {}

  /// Emitted when the APPCOMMAND_REDO.
  void onRedo() {}

  /// Emitted when the APPCOMMAND_REPLY_TO_MAIL.
  void onReplayToMail() {}

  /// Emitted when the APPCOMMAND_SAVE.
  void onSave() {}

  /// Emitted when the APPCOMMAND_SEND_MAIL.
  void onSendMail() {}

  /// Emitted when the APPCOMMAND_SPELL_CHECK.
  void onSpellCheck() {}

  /// Emitted when the APPCOMMAND_TREBLE_DOWN.
  void onTrebleDown() {}

  /// Emitted when the APPCOMMAND_TREBLE_UP.
  void onTrebleUp() {}

  /// Emitted when the APPCOMMAND_UNDO.
  void onUndo() {}

  /// Emitted when the APPCOMMAND_VOLUME_DOWN.
  void onVolumeDown() {}

  /// Emitted when the APPCOMMAND_VOLUME_MUTE.
  void onVolumeMute() {}

  /// Emitted when the APPCOMMAND_VOLUME_UP.
  void onVolumeUp() {}
}
