using Virtal_Kyboard.ViewModels;

namespace Virtal_Kyboard.Views;

public partial class RowView : ContentView
{
	public RowView(RowViewModel viewmodel)
	{
		InitializeComponent();
		this.BindingContext = viewmodel;
	}
}