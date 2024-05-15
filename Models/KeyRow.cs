
namespace VirtalKyboard.Models
{
    public class KeyRow
    {
        public List<Key> Keys { get; set; }
        public int Row { get; set; }
        public int Lenght { get; set; }

        public KeyRow()
        {
            Keys = new List<Key>();
        }
    }
}
