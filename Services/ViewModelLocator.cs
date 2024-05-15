
namespace VirtalKyboard.Services
{
    public static class ViewModelLocator
    {
        private static IServiceProvider _serviceProvider;
        public static void Initialize(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        public static T Resolve<T>() where T : notnull
        {
            return _serviceProvider.GetRequiredService<T>();
        }
    }

}