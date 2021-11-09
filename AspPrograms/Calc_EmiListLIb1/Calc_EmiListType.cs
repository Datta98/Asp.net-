using RoundDecimalsLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calc_EmiListLIb
{
    public class Calc_EmiListType
    {
        public static List<CLS_AMORTIZATION> Calc_EmiList(double loanAmt, double Term_Months, double interestRate, double Installment_Number)
        {
            double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
            double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
            double emi = Calc_Emi(loanAmt, interestRate, Term_Months);

            var loanOustanding = loanAmt;
            double totalPayment = 0;
            double totalInterestPortion = 0;
            double totalPrincipal = 0;
            string installmentDate = string.Empty;
            double interestPortion = 0, principal = 0;

            List<CLS_AMORTIZATION> listamort = new List<CLS_AMORTIZATION>();
            double month = 0, year = 0;

            if (Installment_Number > Term_Months || Installment_Number == 0)
            {
                //The Installment must be less than or equal to the Tenure
            }
            else
            {
                for (int i = 1; i <= Term_Months; i++)
                {
                    CLS_AMORTIZATION obj = new CLS_AMORTIZATION();

                    if (month < 10)
                    {
                        installmentDate = "0" + month + "/" + year;
                    }
                    else
                    {
                        installmentDate = month + "/" + year;
                    }

                    if (loanOustanding == loanAmt)
                    {
                        loanOustanding = loanAmt;

                        obj.INSTALLMENTNO = i.ToString();
                        // obj.OPENINGBALANCE = loanOustanding.ToString();
                        obj.EMIAmount = emi.ToString();

                        totalPayment = totalPayment + emi;
                        interestPortion = loanOustanding * interestRateForMonthFraction;
                        interestPortion = RoundDecimalsType.roundDecimals(interestPortion, 0);
                    }
                    else
                    {
                        obj.INSTALLMENTNO = i.ToString();

                        //  obj.OPENINGBALANCE = loanOustanding.ToString();
                        obj.EMIAmount = emi.ToString();

                        totalPayment = totalPayment + emi;
                        interestPortion = loanOustanding * interestRateForMonthFraction;
                        interestPortion = RoundDecimalsType.roundDecimals(interestPortion, 0);
                    }

                    loanOustanding = loanOustanding + interestPortion - emi;
                    loanOustanding = RoundDecimalsType.roundDecimals(loanOustanding, 0);


                    obj.INTEREST = interestPortion.ToString();

                    totalInterestPortion = totalInterestPortion + interestPortion;
                    principal = RoundDecimalsType.roundDecimals(emi - interestPortion, 0);

                    obj.PRINCIPAL = principal.ToString();
                    obj.BalanceAmount = loanOustanding.ToString();
                    totalPrincipal = totalPrincipal + principal;

                    listamort.Add(obj);
                }
                return listamort;
                //GridView1.DataSource = listamort;
                //GridView1.DataBind();
            }
            return listamort;
        }

        public static double Calc_Emi(double loanAmt, double interestRate, double tenure)
        {
            if (interestRate != 0)
            {
                double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
                double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
                double emi = 1 / Math.Pow((1 + interestRateForMonthFraction), tenure);
                double emiPerLakh = (loanAmt * interestRateForMonthFraction) / (1 - emi); // (EMI per lakh borrowed)
                emiPerLakh = RoundDecimalsType.roundDecimals(emiPerLakh, 0);
                return emiPerLakh;
            }
            else
            {
                double emi = loanAmt / tenure;
                double emiPerLakh = RoundDecimalsType.roundDecimals(emi, 0);
                return emiPerLakh;
            }
        }

    }
}
