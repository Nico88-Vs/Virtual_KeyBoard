using VirtalKyboard.ViewModels;
using VirtalKyboard.Models;
using VirtalKyboard.Services;
using Microsoft.Extensions.DependencyInjection;
using System.Reflection;
using System.Threading;

namespace VirtalKyboard.Views;

public partial class KeyView : ContentView
{
    public KeyView(KeyViewModel viewmodel)
	{
        try
        {
            InitializeComponent();
            this.BindingContext = viewmodel;
            

        }
        catch (TargetInvocationException ex)
        {
            Console.WriteLine(ex.InnerException?.Message);
            throw; // Rilancia l'eccezione o gestiscila come necessario
        }

    }
    public KeyView()
    {
        InitializeComponent();
        if (DesignMode.IsDesignModeEnabled == false)
        {
            KeyViewModel viewmodel = ViewModelLocator.Resolve<KeyViewModel>();
            this.BindingContext = viewmodel;
        }
    }
}