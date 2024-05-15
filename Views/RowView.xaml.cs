using VirtalKyboard.ViewModels;
using VirtalKyboard.Services;

namespace VirtalKyboard.Views;

public partial class RowView : ContentView
{
	public RowView(RowViewModel viewmodel)
	{
		InitializeComponent();
		this.BindingContext = viewmodel;
	}
    public RowView()
    {
        InitializeComponent();
        if (DesignMode.IsDesignModeEnabled == false)
        {
            BindingContext = ViewModelLocator.Resolve<RowViewModel>();
        }
    }
}           