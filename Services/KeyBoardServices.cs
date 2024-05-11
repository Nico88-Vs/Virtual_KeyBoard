using System.Text.Json;
using Virtal_Kyboard.Models;

namespace Virtal_Kyboard.Services
{
    public class KeyBoardServices
    {
        public KeyBoard LoadKeyboard()
        {
            var jsonString = File.ReadAllText(@"C:\Users\user\source\repos\Virtal_Kyboard\Resources\Raw\Keyboards.json");

            return JsonSerializer.Deserialize<KeyBoard>(jsonString);
        }
    }
}
