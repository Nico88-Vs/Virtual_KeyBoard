using VirtalKyboard.Models;
using System.Collections.ObjectModel;
using VirtalKyboard.Services;
using VirtalKyboard.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using System.Runtime.CompilerServices;
#if WINDOWS
using VirtalKyboard.Platforms.Windows.WindoswDedicate_Services;
#endif

namespace VirtalKyboard.ViewModels
{
    public partial class KeyboardViewModel : BaseViewModel
    {
        private ObservableCollection<RowViewModel> _kvm;
        private KeyBoard _Keyboard { get; }
        private readonly KeyBoardServices _keyboardService;
        [ObservableProperty]
        private ObservableCollection<RowView> rowViews;
        [ObservableProperty]
        private string nativeViewState = string.Empty;

#if WINDOWS
        private PlatformSpecificService _platformSpecificService;

        public KeyboardViewModel(KeyBoardServices service, IKeyViewFactory keyViewFactory, IPlatformSpecificService windows_Specifics)
        {
            this._platformSpecificService = (PlatformSpecificService)windows_Specifics;
            this._platformSpecificService.On_Click += this.OnKeyPress;
            this._keyboardService = service;
            try
            {
                this._Keyboard = this._keyboardService.LoadKeyboard();
                _kvm = new ObservableCollection<RowViewModel>();

                foreach (KeyRow row in this._Keyboard.Rows)
                {
                    RowViewModel item = new RowViewModel(row, keyViewFactory);
                    this._kvm.Add(item);
                }
            }
            catch (Exception e)
            {

                Console.WriteLine($"Rows Buiding Failed : {e}");
            }

            this.rowViews = new ObservableCollection<RowView>();

            foreach (RowViewModel rvm in this._kvm)
            {
                var item = new RowView(rvm);
                this.rowViews.Add(item);
            }

        }

        private void  OnKeyPress(object sender, Microsoft.UI.Xaml.Input.KeyRoutedEventArgs e)
        {
         this.Click(e.Key.ToString().ToLower());
        }
#endif
        public KeyboardViewModel(KeyBoardServices service, IKeyViewFactory keyViewFactory)
        {
            this._keyboardService = service;
            try
            {
                this._Keyboard = this._keyboardService.LoadKeyboard();
                _kvm = new ObservableCollection<RowViewModel>();

                foreach (KeyRow row in this._Keyboard.Rows)
                {
                    RowViewModel item = new RowViewModel(row, keyViewFactory);
                    this._kvm.Add(item);
                }
            }
            catch (Exception e)
            {

                Console.WriteLine($"Rows Buiding Failed : {e}");
            }

            this.rowViews = new ObservableCollection<RowView>();

            foreach (RowViewModel rvm in this._kvm)
            {
                var item = new RowView(rvm);
                this.rowViews.Add(item);
            }
        }

        private void Click(string key)
        {
            foreach (RowViewModel rw in this._kvm)
            {
                foreach (KeyViewModel ke in rw.Keys)
                {
                    if (key == ke.Letter.ToLower())
                        ke.PressKey();
                }
            }
        }
    }
}
