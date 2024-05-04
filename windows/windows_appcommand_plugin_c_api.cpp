#include "include/windows_appcommand/windows_appcommand_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "windows_appcommand_plugin.h"

void WindowsAppcommandPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  windows_appcommand::WindowsAppcommandPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
