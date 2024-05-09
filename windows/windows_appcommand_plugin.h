#ifndef FLUTTER_PLUGIN_WINDOWS_APPCOMMAND_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOWS_APPCOMMAND_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace windows_appcommand {

class WindowsAppcommandPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WindowsAppcommandPlugin(flutter::PluginRegistrarWindows *registrar);

  virtual ~WindowsAppcommandPlugin();

  // Disallow copy and assign.
  WindowsAppcommandPlugin(const WindowsAppcommandPlugin&) = delete;
  WindowsAppcommandPlugin& operator=(const WindowsAppcommandPlugin&) = delete;

  private:
    flutter::PluginRegistrarWindows *registrar;

    // The ID of the WindowProc delegate registration.
    int window_proc_id = -1;

    // Called for top-level WindowProc delegation.
    std::optional<LRESULT> WindowsAppcommandPlugin::HandleWindowProc(HWND hWnd,
                                                                 UINT message,
                                                                 WPARAM wParam,
                                                                 LPARAM lParam);

    void WindowsAppcommandPlugin::_EmitEvent(std::string eventName);
};

}  // namespace windows_appcommand

#endif  // FLUTTER_PLUGIN_WINDOWS_APPCOMMAND_PLUGIN_H_
