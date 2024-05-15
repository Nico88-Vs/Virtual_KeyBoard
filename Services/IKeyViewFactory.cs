using VirtalKyboard.ViewModels;
using VirtalKyboard.Views;


public interface IKeyViewFactory
{
    KeyView CreateKeyView(KeyViewModel keyViewModel);
}