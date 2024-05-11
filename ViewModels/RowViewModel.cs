using System.Collections.ObjectModel;
using Virtal_Kyboard.Models;

namespace Virtal_Kyboard.ViewModels
{
    public partial class RowViewModel : BaseViewModel
    {
        public ObservableCollection<KeyViewModel> Keys { get; private set; }

        public RowViewModel(IEnumerable<Key> keys)
        {
            Keys = new ObservableCollection<KeyViewModel>(keys.Select(k => new KeyViewModel(k)));
        }

    }
}
