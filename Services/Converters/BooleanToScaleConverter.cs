using System.Globalization;

namespace VirtalKyboard.Services.Converters
{
    public class BooleanToScaleConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if (value is bool isTrue && isTrue)
            {
                return 0.9; // Colore quando il valore booleano è true
            }
            return 1;
        }
        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture) => throw new NotImplementedException();
    }
}
