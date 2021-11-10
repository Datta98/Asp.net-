using RoundDecimalsLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmiCalculatorLib
{
    public class EmiCaculatorType
    {

        public static string[] Emi_calculator(float loan_amt, float interest_rate, float tenure)
        {
            interest_rate = interest_rate / 1200;

            double Monthly_Emi = loan_amt * interest_rate / (1 - (Math.Pow(1 / (1 + interest_rate), tenure)));
            double Total_Amount = Monthly_Emi * tenure;
            double Total_Interest = Total_Amount - loan_amt;

            Monthly_Emi = RoundDecimalsType.roundDecimals(Monthly_Emi, 0);
            Total_Amount = RoundDecimalsType.roundDecimals(Total_Amount, 0);
            Total_Interest = RoundDecimalsType.roundDecimals(Total_Interest, 0);

            string[] arr = new string[3];
            arr[0] = Convert.ToString(Monthly_Emi);
            arr[1] = Convert.ToString(Total_Amount);
            arr[2] = Convert.ToString(Total_Interest);

            return arr;

        }
    }
}
