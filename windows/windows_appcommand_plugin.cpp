#include "windows_appcommand_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>

// For getPlatformVersion; remove unless needed for your plugin implementation.
#include <VersionHelpers.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <memory>
#include <sstream>

namespace windows_appcommand {

std::unique_ptr<
    flutter::MethodChannel<flutter::EncodableValue>,
    std::default_delete<flutter::MethodChannel<flutter::EncodableValue>>>
    channel = nullptr;

// static
void WindowsAppcommandPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {
  channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "windows_appcommand",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<WindowsAppcommandPlugin>(registrar);

  registrar->AddPlugin(std::move(plugin));
}

WindowsAppcommandPlugin::WindowsAppcommandPlugin(
    flutter::PluginRegistrarWindows* registrar)
     {
  window_proc_id = registrar->RegisterTopLevelWindowProcDelegate(
      [this](HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam) {
        return HandleWindowProc(hWnd, message, wParam, lParam);
      });
}

WindowsAppcommandPlugin::~WindowsAppcommandPlugin() {}


void WindowsAppcommandPlugin::_EmitEvent(std::string eventName) {
  flutter::EncodableMap args = flutter::EncodableMap();
  args[flutter::EncodableValue("eventName")] =
      flutter::EncodableValue(eventName);
  channel->InvokeMethod("onEvent",
                        std::make_unique<flutter::EncodableValue>(args));
}

std::optional<LRESULT> WindowsAppcommandPlugin::HandleWindowProc(HWND hWnd,
                                                             UINT message,
                                                             WPARAM wParam,
                                                             LPARAM lParam) {
  std::optional<LRESULT> result = std::nullopt;

  if (message == WM_APPCOMMAND) {
    UINT cmd  = GET_APPCOMMAND_LPARAM(lParam);
    switch (cmd) {
      case APPCOMMAND_BASS_BOOST:
        _EmitEvent("bassBoost");
        break;
      case APPCOMMAND_BASS_DOWN:
        _EmitEvent("bassDown");
        break;
      case APPCOMMAND_BASS_UP:
        _EmitEvent("bassUp");
        break;
      case APPCOMMAND_BROWSER_BACKWARD:
        _EmitEvent("browserBackward");
        break;
      case APPCOMMAND_BROWSER_FAVORITES:
        _EmitEvent("browserFavorites");
        break;
      case APPCOMMAND_BROWSER_FORWARD:
        _EmitEvent("browserForward");
        break;
      case APPCOMMAND_BROWSER_HOME:
        _EmitEvent("browserHome");
        break;
      case APPCOMMAND_BROWSER_REFRESH:
        _EmitEvent("browserRefresh");
        break;
      case APPCOMMAND_BROWSER_SEARCH:
        _EmitEvent("browserSearch");
        break;
      case APPCOMMAND_BROWSER_STOP:
        _EmitEvent("browserStop");
        break;
      case APPCOMMAND_CLOSE:
        _EmitEvent("close");
        break;
      case APPCOMMAND_COPY:
        _EmitEvent("copy");
        break;
      case APPCOMMAND_CORRECTION_LIST:
        _EmitEvent("correctionList");
        break;
      case APPCOMMAND_CUT:
        _EmitEvent("cut");
        break;
      case APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE:
        _EmitEvent("dictateOrCommandControlToggle");
        break;
      case APPCOMMAND_FIND:
        _EmitEvent("find");
        break;
      case APPCOMMAND_FORWARD_MAIL:
        _EmitEvent("forwardMail");
        break;
      case APPCOMMAND_HELP:
        _EmitEvent("help");
        break;
      case APPCOMMAND_LAUNCH_APP1:
        _EmitEvent("launchApp1");
        break;
      case APPCOMMAND_LAUNCH_APP2:
        _EmitEvent("launchApp2");
        break;
      case APPCOMMAND_LAUNCH_MAIL:
        _EmitEvent("launchMail");
        break;
      case APPCOMMAND_LAUNCH_MEDIA_SELECT:
        _EmitEvent("launchMediaSelect");
        break;
      case APPCOMMAND_MEDIA_CHANNEL_DOWN:
        _EmitEvent("mediaChannelDown");
        break;
      case APPCOMMAND_MEDIA_CHANNEL_UP:
        _EmitEvent("mediaChannelUp");
        break;
      case APPCOMMAND_MEDIA_FAST_FORWARD:
        _EmitEvent("mediaFastForward");
        break;
      case APPCOMMAND_MEDIA_NEXTTRACK:
        _EmitEvent("mediaNextTrack");
        break;
      case APPCOMMAND_MEDIA_PAUSE:
        _EmitEvent("mediaPause");
        break;
      case APPCOMMAND_MEDIA_PLAY:
        _EmitEvent("mediaPlay");
        break;
      case APPCOMMAND_MEDIA_PLAY_PAUSE:
        _EmitEvent("mediaPlayPause");
        break;
      case APPCOMMAND_MEDIA_PREVIOUSTRACK:
        _EmitEvent("mediaPreviousTrack");
        break;
      case APPCOMMAND_MEDIA_RECORD:
        _EmitEvent("mediaRecord");
        break;
      case APPCOMMAND_MEDIA_REWIND:
        _EmitEvent("mediaRewind");
        break;
      case APPCOMMAND_MEDIA_STOP:
        _EmitEvent("mediaStop");
        break;
      case APPCOMMAND_MIC_ON_OFF_TOGGLE:
        _EmitEvent("micOnOffToggle");
        break;
      case APPCOMMAND_MICROPHONE_VOLUME_DOWN:
        _EmitEvent("microphoneVolumeDown");
        break;
      case APPCOMMAND_MICROPHONE_VOLUME_MUTE:
        _EmitEvent("microphoneVolumeMute");
        break;
      case APPCOMMAND_MICROPHONE_VOLUME_UP:
        _EmitEvent("microphoneVolumeUp");
        break;
      case APPCOMMAND_NEW:
        _EmitEvent("new");
        break;
      case APPCOMMAND_OPEN:
        _EmitEvent("open");
        break;
      case APPCOMMAND_PASTE:
        _EmitEvent("paste");
        break;
      case APPCOMMAND_PRINT:
        _EmitEvent("print");
        break;
      case APPCOMMAND_REDO:
        _EmitEvent("redo");
        break;
      case APPCOMMAND_REPLY_TO_MAIL:
        _EmitEvent("replayToMail");
        break;
      case APPCOMMAND_SAVE:
        _EmitEvent("save");
        break;
      case APPCOMMAND_SEND_MAIL:
        _EmitEvent("sendMail");
        break;
      case APPCOMMAND_SPELL_CHECK:
        _EmitEvent("spellCheck");
        break;
      case APPCOMMAND_TREBLE_DOWN:
        _EmitEvent("trebleDown");
        break;
      case APPCOMMAND_TREBLE_UP:
        _EmitEvent("trebleUp");
        break;
      case APPCOMMAND_UNDO:
        _EmitEvent("undo");
        break;
      case APPCOMMAND_VOLUME_DOWN:
        _EmitEvent("volumeDown");
        break;
      case APPCOMMAND_VOLUME_MUTE:
        _EmitEvent("volumeMute");
        break;
      case APPCOMMAND_VOLUME_UP:
        _EmitEvent("volumeUp");
        break;
    }
  }

  return result;
}

}  // namespace windows_appcommand
