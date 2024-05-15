using VirtalKyboard.ViewModels;
using VirtalKyboard.Views;

namespace VirtalKyboard.Services
{
    public class KeyViewFactory : IKeyViewFactory
    {
        public KeyView keyView { get; set; }
        public KeyView CreateKeyView(KeyViewModel keyViewModel)
        {
            KeyView view = new KeyView(keyViewModel)
            {
                BindingContext = keyViewModel
            };
            this.keyView = view;

            return view;
        }
    }
}

