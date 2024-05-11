
namespace Virtal_Kyboard.Models
{
    public class KeyBoard
    {
        public int Id { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }
        public List<KeyRow> Rows { get; set; }

        public KeyBoard()
        {
            Rows = new List<KeyRow>();
        }
    }
}
