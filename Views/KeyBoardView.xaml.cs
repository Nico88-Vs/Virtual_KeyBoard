using Virtal_Kyboard.ViewModels;

namespace Virtal_Kyboard.Views;

public partial class KeyBoardView : ContentPage
{
	private KeyboardViewModel _keyboardViewModel;
	public KeyBoardView(KeyboardViewModel viewmodel)
	{
		InitializeComponent();
		this._keyboardViewModel = viewmodel;
		this.BindingContext = _keyboardViewModel;
	}
}