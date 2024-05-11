using Microsoft.Extensions.Logging;
using Virtal_Kyboard.ViewModels;
using Virtal_Kyboard.Views;
using Virtal_Kyboard.Services;

namespace Virtal_Kyboard
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
            builder.Services.AddTransient<KeyboardViewModel>();
            builder.Services.AddTransient<KeyViewModel>();
            builder.Services.AddTransient<RowViewModel>();


#if DEBUG
            builder.Logging.AddDebug();
#endif

            var app = builder.Build();
            ViewModelLocator.Initialize(app.Services);
            return app;
        }
    }
}
