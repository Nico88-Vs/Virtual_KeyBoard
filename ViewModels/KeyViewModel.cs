
using CommunityToolkit.Mvvm.Input;
using Virtal_Kyboard.Models;

namespace Virtal_Kyboard.ViewModels
{
    public partial class KeyViewModel : BaseViewModel
    {
        private bool _isPressed;
        public string Letter { get; private set; }
        private Key _Key;
        public bool IsPressed
        {
            get => _isPressed;
            set => SetProperty(ref _isPressed, value);
        }

        public KeyViewModel(Key key)
        {
            this._Key = key;
            this.Letter = this._Key.Letter;
        }

        [RelayCommand]
        public void PressKey()
        {
            this._isPressed = !this.IsPressed;
        }
    }
}
