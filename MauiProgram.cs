using Microsoft.Extensions.Logging;
using Microsoft.Maui.LifecycleEvents;
#if WINDOWS
using Microsoft.UI;
using Microsoft.UI.Windowing;
using Windows.Graphics;
using Windows.UI.WindowManagement;
#endif

namespace Launcher
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });
#if WINDOWS
            builder.ConfigureLifecycleEvents(events =>
            {
                events.AddWindows(wndLifeCycleBuilder =>
                {
                    wndLifeCycleBuilder.OnWindowCreated(window =>
                    {
                        window.ExtendsContentIntoTitleBar = false;
                        var handle = WinRT.Interop.WindowNative.GetWindowHandle(window);
                        var id = Microsoft.UI.Win32Interop.GetWindowIdFromWindow(handle);
                        var appWindow = Microsoft.UI.Windowing.AppWindow.GetFromWindowId(id);
                        if (appWindow.Presenter is OverlappedPresenter pre)
                        {
                            pre.IsMaximizable = false;
                            pre.IsResizable = false;
                            pre.IsMinimizable = false;
                            pre.SetBorderAndTitleBar(false, false);
                        }
                        const int width = 1000;
                        const int height = 600;
                        appWindow.MoveAndResize(new RectInt32(1000 / 2 - width / 2, 600 / 2 - height / 2, width, height));
                        
                    });
                });
            });
#endif

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}