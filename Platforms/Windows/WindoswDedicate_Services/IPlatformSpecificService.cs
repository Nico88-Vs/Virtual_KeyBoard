#if WINDOWS
namespace VirtalKyboard.Platforms.Windows.WindoswDedicate_Services
{
    public interface IPlatformSpecificService
    {
        public string UiState { get; set; }
        void Lissen_Keyboard();
    }
}
#endif
