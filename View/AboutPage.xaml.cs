//usings
#region
using System;
using System.IO;
using System.IO.Compression;
using System.Net.Http;
using System.Threading.Tasks;
using System.Diagnostics;
using Microsoft.Maui.Controls;
using Microsoft.Maui;
using Microsoft.Maui.Controls.Xaml;
using System;
using System.Windows;
using System.Windows.Input;
using System.Net;
using System.Net.Http;
using System.IO;
using System.Threading.Tasks;
//using DiscordRPC;
//using Button = DiscordRPC.Button;
using System.Security.Policy;
using System.Threading;
using System.Linq;
using Launcher.View;
using Microsoft.Maui.Controls;


#endregion
namespace Launcher.View;

public partial class AboutPage : ContentPage
{
	public AboutPage()
	{
		InitializeComponent();
	}
    //buttons
    private void MainPage(object sender, EventArgs e)
    {
        Navigation.PopToRootAsync();
    }
    #region
    private void Button_Click_Discord(object sender, EventArgs e)
    {
        string link = "https://discord.gg/CpGbZSHKcD";
        Process.Start(new ProcessStartInfo
        {
            FileName = link,
            UseShellExecute = true
        });
    }

    private void Button_Click_Git(object sender, EventArgs e)
    {
        string link = "https://github.com/kindawindytoday/Minty-Old";
        Process.Start(new ProcessStartInfo
        {
            FileName = link,
            UseShellExecute = true
        });
    }

    private void Button_Click_Boosty(object sender, EventArgs e)
    {
        string link = "https://boosty.to/kindawindytoday";
        Process.Start(new ProcessStartInfo
        {
            FileName = link,
            UseShellExecute = true
        });
    }

    private void Button_Click_Youtube(object sender, EventArgs e)
    {
        string link = "https://www.youtube.com/@KindaWindyToday";

        Process.Start(new ProcessStartInfo
        {
            FileName = link,
            UseShellExecute = true
        });
    }
    #endregion
}