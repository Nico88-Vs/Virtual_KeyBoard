using Virtal_Kyboard.Models;
using System.Collections.ObjectModel;
using Microsoft.Maui;
using Virtal_Kyboard.Services;

namespace Virtal_Kyboard.ViewModels
{
    public partial class KeyboardViewModel : BaseViewModel
    {
        public ObservableCollection<RowViewModel> Rows  { get; private set; }
        private KeyBoard _Keyboard { get; }
        private readonly KeyBoardServices _keyboardService;

        public KeyboardViewModel(KeyBoardServices service)
        {
            this._keyboardService = service;
            try
            {
                this._Keyboard = this._keyboardService.LoadKeyboard();
                Rows = new ObservableCollection<RowViewModel>(
                    this._Keyboard.Rows.Select(r => new RowViewModel(r.Keys)));
            }
            catch (Exception e)
            {

                Console.WriteLine($"Rows Buiding Failed : {e}");
            }
           
        }
    }
}
