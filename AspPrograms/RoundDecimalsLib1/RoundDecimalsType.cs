using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoundDecimalsLib
{
    public class RoundDecimalsType
    {
        public static double roundDecimals(double original_number, int decimals)
        {
            double result1 = original_number * Math.Pow(10, decimals);
            double result2 = Math.Round(result1);
            double result3 = result2 / Math.Pow(10, decimals);

            return (result3);
        }
    }
}
