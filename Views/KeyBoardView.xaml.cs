using System.Runtime.CompilerServices;
using VirtalKyboard.ViewModels;

namespace VirtalKyboard.Views;

public partial class KeyBoardView : ContentPage
{
	public KeyBoardView(KeyboardViewModel viewmodel)
	{
		InitializeComponent();
		this.BindingContext = viewmodel;
		viewmodel.NativeViewState = $"{this.IsFocused}";
    }
}