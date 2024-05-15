using System.Globalization;

namespace VirtalKyboard.Services.Converters
{
    public class BooleanToColorConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if (value is bool isTrue && isTrue)
            {
                return Colors.DarkGray; // Colore quando il valore booleano è true
            }
            return Colors.Gray;
        }
        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture) => throw new NotImplementedException();
    }
}
