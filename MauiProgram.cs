using Microsoft.Extensions.Logging;
using VirtalKyboard.ViewModels;
using VirtalKyboard.Views;
using VirtalKyboard.Services;
#if WINDOWS
using VirtalKyboard.Platforms.Windows.WindoswDedicate_Services;
#endif

namespace VirtalKyboard
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
            builder.Services.AddSingleton<KeyBoardServices>();
            builder.Services.AddTransient<KeyViewModel>();
            builder.Services.AddTransient<KeyboardViewModel>();
            builder.Services.AddTransient<KeyBoardView>();
           builder.Services.AddTransient<RowViewModel>();
            builder.Services.AddSingleton<IKeyViewFactory, KeyViewFactory>();
            builder.Services.AddTransient<KeyBoardView>(service =>
            {
                var vm = service.GetService<KeyboardViewModel>();
                return new KeyBoardView(vm);
            });
#if WINDOWS
           if (DeviceInfo.Platform == DevicePlatform.WinUI)
            {
                builder.Services.AddSingleton<IPlatformSpecificService, PlatformSpecificService>(service =>
                {
                    var handler = Application.Current.MainPage.Handler;
                    return new PlatformSpecificService(handler);
                });
            } 
#endif

#if DEBUG
            builder.Logging.AddDebug();
#endif

            var app = builder.Build();
            ViewModelLocator.Initialize(app.Services);
            return app;
        }
    }
}
