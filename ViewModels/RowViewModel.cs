using CommunityToolkit.Mvvm.ComponentModel;
using System.Collections.ObjectModel;
using VirtalKyboard.Models;
using VirtalKyboard.Views;

namespace VirtalKyboard.ViewModels
{
    public partial class RowViewModel : BaseViewModel
    {
        [ObservableProperty]
        private ObservableCollection<KeyViewModel> keys;
        [ObservableProperty]
        private ObservableCollection<KeyView> keyViews;
        private KeyRow _row;
        [ObservableProperty]
        private RowView rowView;

        public RowViewModel(KeyRow row, IKeyViewFactory keyViewFactory)
        {
            this.Keys = new ObservableCollection<KeyViewModel>();
            this._row = row;

            foreach (Key key in this._row.Keys)
            {
                KeyViewModel keyViewModel = new KeyViewModel(key);
                this.Keys.Add(keyViewModel);
            }

            keyViews = new ObservableCollection<KeyView>();

           
            foreach (KeyViewModel keyViewModel in Keys)
            {
                var kv = keyViewFactory.CreateKeyView(keyViewModel);
                KeyViews.Add(kv);
            }

            this.RowView = new RowView(this);
        }

    }
}
