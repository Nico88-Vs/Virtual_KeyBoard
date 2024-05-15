using CommunityToolkit.Mvvm.ComponentModel;
using Microsoft.Extensions.DependencyInjection;
using VirtalKyboard.Models;
using VirtalKyboard.Services;
using VirtalKyboard.ViewModels;

namespace VirtalKyboard
{
    public partial class MainPage : ContentPage
    {
        int count = 0;
        private readonly KeyViewModel _keyViewModel;

        public MainPage()
        {
            InitializeComponent();

            //var key = new Key { Letter = "A" }; // Assicurati che Key abbia il costruttore appropriato
            //_keyViewModel = ViewModelLocator.Resolve<KeyViewModel>();
            //keyView.BindingContext = _keyViewModel;
        }

        private void OnCounterClicked(object sender, EventArgs e)
        {
            count++;

            if (count == 1)
                CounterBtn.Text = $"Clicked {count} time";
            else
                CounterBtn.Text = $"Clicked {count} times";

            SemanticScreenReader.Announce(CounterBtn.Text);
        }
    }

}
