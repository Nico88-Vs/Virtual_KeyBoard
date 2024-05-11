using Virtal_Kyboard.ViewModels;
using Virtal_Kyboard.Services;

namespace Virtal_Kyboard.Views;

public partial class KeyView : ContentView
{
	public KeyView(KeyViewModel viewmodel)
	{
		InitializeComponent();
		this.BindingContext = viewmodel;
	}

    public KeyView()
    {
        // HINT: necessario per l'instanziazione via xaml
        InitializeComponent();
        this.BindingContext = ViewModelLocator.Resolve<KeyViewModel>();
    }

    public void OnKeyPressed(object sender, EventArgs e)
    {
        // Logica dell'evento
    }
}