using System.Text.Json;
using VirtalKyboard.Models;

namespace VirtalKyboard.Services
{
    public class KeyBoardServices
    {
        public KeyBoard LoadKeyboard()
        {
            var jsonString = File.ReadAllText(@"C:\Users\user\source\repos\VirtalKyboard\Resources\Raw\Keyboards.json");

            return JsonSerializer.Deserialize<KeyBoard>(jsonString);
        }
    }
}
