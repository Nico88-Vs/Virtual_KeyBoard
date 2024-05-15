
namespace VirtalKyboard.Models
{
    public class KeyBoard
    {
        public int Id { get; set; }
        public string Brend { get; set; }
        public string Model { get; set; }
        public List<KeyRow> Rows { get; set; }

        public KeyBoard()
        {
            Rows = new List<KeyRow>();
        }
    }
}
