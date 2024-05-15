#if WINDOWS
using Microsoft.UI.Xaml;

namespace VirtalKyboard.Platforms.Windows.WindoswDedicate_Services
{
    class PlatformSpecificService : IPlatformSpecificService
    {
        private readonly IElementHandler _privateHandler;
        public event EventHandler<Microsoft.UI.Xaml.Input.KeyRoutedEventArgs> On_Click;
        public string UiState { get; set; } = string.Empty;

        public PlatformSpecificService(IElementHandler handler)
        {
            this._privateHandler = handler;
            this.Lissen_Keyboard();
        }
        public void Lissen_Keyboard()
        {
            if (_privateHandler != null)
            {
                UIElement? nativeView = _privateHandler.PlatformView as UIElement;

                if (nativeView != null)
                {
                    nativeView.Focus(FocusState.Programmatic);
                    nativeView.IsHitTestVisible = true;
                    nativeView.KeyDown += this.NativeView_KeyDown;
                    this.UiState = $"{nativeView.FocusState}";
                }
            }
        }

        public virtual void NativeView_KeyDown(object sender, Microsoft.UI.Xaml.Input.KeyRoutedEventArgs e)
        {
            this.On_Click?.Invoke(sender, e);
        }
    }
}
#endif
