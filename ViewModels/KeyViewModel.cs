
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using VirtalKyboard.Models;

namespace VirtalKyboard.ViewModels
{
    public partial class KeyViewModel : BaseViewModel
    {
        [ObservableProperty]
        private bool _isPressed = false;
        [ObservableProperty]
        private string letter;
        [ObservableProperty]
        private int lengt_Modifier;

        public KeyViewModel(Key key)
        {
            this.Letter = key.Letter;
            this.lengt_Modifier = (int)(key.Length * 50);
        }

        [RelayCommand]
        public void PressKey()
        {
            this.IsPressed = true;
            Task.Run(() => this.Vm_PropertyChangedAsync());
        }

        private async Task Vm_PropertyChangedAsync()
        {
            await Task.Delay(500);
            this.IsPressed = false;
        }
        
    }
}
