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
using DiscordRPC;
using Button = DiscordRPC.Button;
using System.Security.Policy;
using System.Threading;
using System.Linq;
using Launcher.View;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.PlatformConfiguration.WindowsSpecific;
#endregion
namespace Launcher
{
    public partial class MainPage : ContentPage
    {
        
        public MainPage()
        {
            InitializeComponent();
            //DiscordRPC();
            NavigationPage.SetHasNavigationBar(this, false);
        }
        private void AboutPage(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AboutPage());
        }
        //launch
        #region
        private async void Launch_Clicked(object sender, EventArgs e)
        {
            string appDataFolder = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
            string mintyFolderPath = Path.Combine(appDataFolder, "minty");
            string assetsFolderPath = Path.Combine(mintyFolderPath, "MintyGI");
            string launcherFilePath = Path.Combine(assetsFolderPath, "Launcher.exe");
            string dllFilePath = Path.Combine(assetsFolderPath, "minty.dll");
            string zipFilePath = Path.Combine(assetsFolderPath, "minty.zip");
            string verfilePath = Path.Combine(assetsFolderPath, "version.txt");
            string serverFileUrl = "https://github.com/rusya222/LauncherVer/releases/download/1.0/version.txt";
            string zipUrl = "https://github.com/rusya222/LauncherVer/releases/download/1.0/minty.zip";

            if (File.Exists(verfilePath))
            {
                bool filesAreSame = await CheckIfFilesAreSameAsync(serverFileUrl, verfilePath);
                if (filesAreSame)
                {
                    if (File.Exists(launcherFilePath))
                    {
                        //GI_button.Text = "Launch";
                        LaunchExecutable(launcherFilePath);
                        DiscordRPC();

                    }
                }
                else
                {
                    File.Delete(verfilePath);
                    File.Delete(launcherFilePath);
                    File.Delete(dllFilePath);
                    File.Delete(zipFilePath);
                    //GI_button.Text = "Downloading";
                    await DownloadFile(zipUrl, zipFilePath);
                    await ExtractZipFile(zipFilePath, assetsFolderPath);
                    File.Delete(zipFilePath);
                    string fileContent = File.ReadAllText(verfilePath);
                    await DisplayAlert("Updated", "Minty updated to version: " + fileContent, "OK");
                    //GI_button.Text = "Launch";
                    DiscordRPC();
                }
            }
            else
            {
                //GI_button.Text = "Downloading";
                Directory.CreateDirectory(assetsFolderPath);
                await DownloadFile(zipUrl, zipFilePath);
                await ExtractZipFile(zipFilePath, assetsFolderPath);
                File.Delete(zipFilePath);
                //GI_button.Text = "Launch";
                LaunchExecutable(launcherFilePath);

            }
        }
        private void LaunchExecutable(string exePath)
        {
            try
            {
                Process.Start(exePath);
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", $"Error launching executable: {ex.Message}", "OK");
            }
        }
        #endregion
        //download
        #region
        private async Task DownloadFile(string url, string destinationPath)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    HttpResponseMessage response = await client.GetAsync(url);
                    response.EnsureSuccessStatusCode();

                    using (FileStream fileStream = new FileStream(destinationPath, FileMode.Create, FileAccess.Write, FileShare.None))
                    {
                        await response.Content.CopyToAsync(fileStream);
                    }
                }
            }
            catch (HttpRequestException ex)
            {
                await DisplayAlert("Error", $"Error downloading file: {ex.Message}", "OK");
            }
            catch (IOException ex)
            {
                await DisplayAlert("Error", $"Error saving file: {ex.Message}", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An unexpected error occurred: {ex.Message}", "OK");
            }
        }
        #endregion
        //extract
        #region
        private async Task ExtractZipFile(string zipFilePath, string extractionPath)
        {
            try
            {
                await Task.Run(() =>
                {
                    ZipFile.ExtractToDirectory(zipFilePath, extractionPath);
                });
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", "Error while extracting the archive: " + ex.Message, "OK");
            }
        }
        #endregion
        //checkmitver
        #region
        private async Task<bool> CheckIfFilesAreSameAsync(string serverFileUrl, string localFilePath)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    string serverFileContent = await client.GetStringAsync(serverFileUrl);
                    string localFileContent = await ReadFileAsync(localFilePath);

                    return serverFileContent == localFileContent;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Error checking files: {ex.Message}", "OK");
                return false;
            }
        }

        private async Task<string> ReadFileAsync(string filePath)
        {
            using (StreamReader reader = new StreamReader(filePath))
            {
                return await reader.ReadToEndAsync();
            }
        }
        #endregion
        //buttons
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
        //RPC
        #region
        private static readonly DiscordRpcClient client = new DiscordRpcClient("1112360491847778344");

        public static void InitRPC()
        {
            client.OnReady += (sender, e) => { };

            client.OnPresenceUpdate += (sender, e) => { };

            client.OnError += (sender, e) => { };

            client.Initialize();
        }

        public static void UpdateRPC()
        {
            var presence = new RichPresence()
            {
                State = "Minty",
                Details = "Hacking MHY <333",

                Assets = new Assets()
                {
                    LargeImageKey = "idol",
                    SmallImageKey = "gensh",
                    SmallImageText = "Genshin Impact"
                },
                Buttons = new Button[]
                {
                    new Button()
                    {
                        Label = "Join",
                        Url = "https://discord.gg/kindawindytoday"
                    }
                }
            };
            client.SetPresence(presence);
            client.Invoke();
        }

        public static void DiscordRPC()
        {
            InitRPC();
            UpdateRPC();
        }


        #endregion
    }
}