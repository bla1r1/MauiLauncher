; https://github.com/DomGries/InnoDependencyInstaller


; requires netcorecheck.exe and netcorecheck_x64.exe (see CodeDependencies.iss)
#define public Dependency_Path_NetCoreCheck "dependencies\"

; requires dxwebsetup.exe (see CodeDependencies.iss)
;#define public Dependency_Path_DirectX "dependencies\"
#include "CodeDependencies.iss"
[Setup]
#define MyAppSetupName "Minty"
#define MyAppVersion "1.12"
#define MyAppPublisher "KW Team"
#define MyAppExeName "Launcher.exe"

AppName={#MyAppSetupName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppSetupName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
AppPublisher={#MyAppPublisher}
DefaultGroupName={#MyAppSetupName}
DefaultDirName={autopf}\{#MyAppSetupName}
UninstallDisplayIcon={app}\Launcher.exe
AllowNoIcons=yes
OutputDir=C:\Users\Blair\Desktop\Mintlauncherinstaller
OutputBaseFilename=Minty
SetupIconFile=C:\Users\Blair\source\repos\mauiLauncher\Launcher\Resources\AppIcon\virus.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=False
PrivilegesRequired=admin

; remove next line if you only deploy 32-bit binaries and dependencies
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\about.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\AboutAssets.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\bgbg.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\boosty.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\clretwrc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\clrgc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\clrjit.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\CommunityToolkit.Mvvm.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\CoreMessagingXP.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\createdump.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dcompi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\discord.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\DiscordRPC.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dotnet_bot.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dotnet_bot.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dotnet_bot.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dotnet_bot.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dotnet_bot.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\dwmcorei.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\DwmSceneI.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\DWriteCore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\exit.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\genshin.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\gi.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\github.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\H.GeneratedIcons.System.Drawing.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\H.NotifyIcon.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\H.NotifyIcon.Maui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\honkai.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\hostfxr.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\hostpolicy.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\kwt.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Launcher.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Launcher.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Launcher.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Launcher.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\libSkiaSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\marshal.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mgi.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.CSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.DiaSymReader.Native.amd64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.DirectManipulation.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Configuration.Abstractions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Configuration.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.DependencyInjection.Abstractions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.DependencyInjection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Logging.Abstractions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Logging.Debug.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Logging.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Options.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Extensions.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Foundation.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Graphics.Canvas.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Graphics.Canvas.Interop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Graphics.Display.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Graphics.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.InputStateManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.InteractiveExperiences.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Internal.FrameworkUdk.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Controls.Compatibility.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Controls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Controls.Xaml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Essentials.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Graphics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Maui.Graphics.Win2D.WinUI.Desktop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Composition.OSSupport.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Input.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Text.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Windowing.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Xaml.Controls.pri"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.ui.xaml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Xaml.Internal.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Xaml.Phone.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.ui.xaml.resources.19h1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.ui.xaml.resources.common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Xaml.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.VisualBasic.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.VisualBasic.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Web.WebView2.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Web.WebView2.Core.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Win32.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Win32.Registry.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Win32.SystemEvents.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.DynamicDependency.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.Resources.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.Resources.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.Resources.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.WindowsAppRuntime.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.WindowsAppRuntime.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppLifecycle.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppLifecycle.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppNotifications.Builder.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppNotifications.Builder.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppNotifications.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.AppNotifications.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.PushNotifications.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.PushNotifications.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.SDK.NET.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.Security.AccessControl.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.Security.AccessControl.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.System.Power.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.System.Power.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.System.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.System.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.Widgets.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.Widgets.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WindowsAppRuntime.Bootstrap.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WindowsAppRuntime.Bootstrap.Net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WindowsAppRuntime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WindowsAppRuntime.Insights.Resource.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WindowsAppRuntime.Release.Net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.WinUI.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\minty"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\minty.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mintylauncher.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\MRM.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mscordaccore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mscordaccore_amd64_amd64_7.0.1023.36312.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mscordbi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mscorlib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\mscorrc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\msquic.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\netstandard.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\OpenSans-Regular.ttf"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\OpenSans-Semibold.ttf"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\OpenTK.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\OpenTK.GLControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\PushNotificationsLongRunningTask.ProxyStub.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\resources.pri"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Desktop.Common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Desktop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Gtk.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Maui.Controls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Maui.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.Windows.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.WindowsForms.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\SkiaSharp.Views.WPF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\splashSplashScreen.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\splashSplashScreen.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\splashSplashScreen.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\splashSplashScreen.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\splashSplashScreen.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.AppContext.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Buffers.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Collections.Concurrent.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Collections.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Collections.Immutable.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Collections.NonGeneric.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Collections.Specialized.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.Annotations.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.DataAnnotations.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.EventBasedAsync.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ComponentModel.TypeConverter.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Configuration.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Console.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Data.Common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Data.DataSetExtensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Data.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.Contracts.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.Debug.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.DiagnosticSource.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.FileVersionInfo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.Process.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.StackTrace.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.TextWriterTraceListener.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.Tools.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.TraceSource.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Diagnostics.Tracing.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Drawing.Common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Drawing.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Drawing.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Dynamic.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Formats.Asn1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Formats.Tar.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Globalization.Calendars.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Globalization.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Globalization.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Compression.Brotli.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Compression.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Compression.FileSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Compression.Native.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Compression.ZipFile.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.FileSystem.AccessControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.FileSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.FileSystem.DriveInfo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.FileSystem.Watcher.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.IsolatedStorage.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.MemoryMappedFiles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Pipes.AccessControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.Pipes.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.UnmanagedMemoryStream.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Linq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Linq.Expressions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Linq.Parallel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Linq.Queryable.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Memory.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Http.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Http.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.HttpListener.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Mail.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\coreclr.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.UI.Xaml.Controls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\Microsoft.Windows.ApplicationModel.DynamicDependency.Projection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.IO.FileSystem.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.NameResolution.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.NetworkInformation.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Ping.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Quic.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Requests.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Security.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.ServicePoint.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.Sockets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.WebClient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.WebHeaderCollection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.WebProxy.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.WebSockets.Client.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Net.WebSockets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Numerics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Numerics.Vectors.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ObjectModel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Private.CoreLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Private.DataContractSerialization.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Private.Uri.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Private.Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Private.Xml.Linq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.DispatchProxy.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Emit.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Emit.ILGeneration.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Emit.Lightweight.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Metadata.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Reflection.TypeExtensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Resources.Reader.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Resources.ResourceManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Resources.Writer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.CompilerServices.VisualC.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Handles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.InteropServices.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.InteropServices.JavaScript.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Intrinsics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Loader.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Numerics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Serialization.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Serialization.Formatters.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Serialization.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Serialization.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Runtime.Serialization.Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.AccessControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Claims.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.Algorithms.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.Cng.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.Csp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.Encoding.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.OpenSsl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Cryptography.X509Certificates.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Principal.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.Principal.Windows.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Security.SecureString.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ServiceModel.Web.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ServiceProcess.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.Encoding.CodePages.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.Encoding.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.Encoding.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.Encodings.Web.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Text.RegularExpressions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Channels.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Overlapped.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Tasks.Dataflow.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Tasks.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Tasks.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Tasks.Parallel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Thread.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.ThreadPool.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Threading.Timer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Transactions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Transactions.Local.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.ValueTuple.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Web.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Web.HttpUtility.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Windows.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.Linq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.ReaderWriter.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.Serialization.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.XDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.XmlDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.XmlSerializer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.XPath.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\System.Xml.XPath.XDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virus.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLargeTile.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLargeTile.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLargeTile.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLargeTile.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLargeTile.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-lightunplated_targetsize-16.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-lightunplated_targetsize-24.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-lightunplated_targetsize-32.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-lightunplated_targetsize-48.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-lightunplated_targetsize-256.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-unplated_targetsize-16.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-unplated_targetsize-24.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-unplated_targetsize-32.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-unplated_targetsize-48.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.altform-unplated_targetsize-256.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.targetsize-16.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.targetsize-24.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.targetsize-32.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.targetsize-48.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusLogo.targetsize-256.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusMediumTile.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusMediumTile.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusMediumTile.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusMediumTile.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusMediumTile.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusSmallTile.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusSmallTile.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusSmallTile.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusSmallTile.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusSmallTile.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusStoreLogo.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusStoreLogo.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusStoreLogo.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusStoreLogo.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusStoreLogo.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusWideTile.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusWideTile.scale-125.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusWideTile.scale-150.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusWideTile.scale-200.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\virusWideTile.scale-400.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\WindowsAppRuntime.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\WindowsAppSdk.AppxDeploymentExtensions.Desktop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\WindowsBase.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\WinRT.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\WinUIEdit.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\wuceffectsi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net7.0-windows10.0.19041.0\win10-x64\youtube.scale-100.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppSetupName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppSetupName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppSetupName}"; Filename: "{app}\{#MyAppSetupName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppSetupName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppSetupName, '&', '&&')}}"

[Code]
function InitializeSetup: Boolean;
begin
  // comment out functions to disable installing them

#ifdef Dependency_Path_NetCoreCheck
  Dependency_AddDotNet70;
  Dependency_AddDotNet70Asp;
  Dependency_AddDotNet70Desktop;
#endif

  Result := True;
end;
