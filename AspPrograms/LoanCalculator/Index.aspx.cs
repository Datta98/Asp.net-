using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using LoanCalculator.Models;

namespace LoanCalculator
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.emigraph.Visible = false;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.emigraph.Visible = false;
            if (RadioButtonList1.SelectedItem.Text == "Graph")
            {
                this.emitable.Visible = false;
                this.emigraph.Visible = true;
            }
            else
            {
                this.emitable.Visible = true;
                this.emigraph.Visible = false;
            }

        }

        public void Button1_Click(object sender, EventArgs e)
        {

            float loan_amt = float.Parse(this.loan_amt.Value);
            float interest = float.Parse(this.interest.Value);
            float tenure = float.Parse(this.tenure.Value);
             emi_calculator(loan_amt, interest, tenure);
            Calc_Amortization(loan_amt, tenure, interest, 1);
        }

        private double roundDecimals(double original_number, int decimals)
        {
            double result1 = original_number * Math.Pow(10, decimals);
            double result2 = Math.Round(result1);
            double result3 = result2 / Math.Pow(10, decimals);

            return (result3);
        }

        [WebMethod]
        public void emi_calculator(float loan_amt, float interest_rate, float tenure)
        {
          
            //float Payable_Amount = loan_amt * interest_rate * (1 + interest_rate) * tenure / ((1 + interest_rate) * tenure - 1);            
            //float Total_Amount = Payable_Amount * tenure;
            //float Total_Interest = Total_Amount - loan_amt;


            interest_rate = interest_rate / 1200;
            
            double Monthly_Emi = loan_amt * interest_rate / (1 - (Math.Pow(1 / (1 + interest_rate), tenure)));
            double Total_Amount = Monthly_Emi * tenure;
            double Total_Interest = Total_Amount - loan_amt;

            Monthly_Emi = roundDecimals(Monthly_Emi, 0);
            Total_Amount = roundDecimals(Total_Amount, 0);
            Total_Interest = roundDecimals(Total_Interest, 0);

            this.lbl_monthlyemi.Text = Convert.ToString(Monthly_Emi);
            this.lbl_totalinterestamt.Text = Convert.ToString(Total_Interest);
            this.lbl_totalamountpayable.Text = Convert.ToString(Total_Amount);

        }
        [WebMethod]
        private void Calc_Amortization(double loanAmt, double Term_Months, double interestRate, double Installment_Number)
        {
            double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
            double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
            double emi = calculateEMI(loanAmt, interestRate, Term_Months);

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
                        interestPortion = roundDecimals(interestPortion, 0);
                    }
                    else
                    {
                        obj.INSTALLMENTNO = i.ToString();
                       
                      //  obj.OPENINGBALANCE = loanOustanding.ToString();
                        obj.EMIAmount = emi.ToString();

                        totalPayment = totalPayment + emi;
                        interestPortion = loanOustanding * interestRateForMonthFraction;
                        interestPortion = roundDecimals(interestPortion, 0);
                    }

                    loanOustanding = loanOustanding + interestPortion - emi;
                    loanOustanding = roundDecimals(loanOustanding, 0);

                    
                    obj.INTEREST = interestPortion.ToString();

                    totalInterestPortion = totalInterestPortion + interestPortion;
                    principal = roundDecimals(emi - interestPortion, 0);

                    obj.PRINCIPAL = principal.ToString();
                    obj.BalanceAmount = loanOustanding.ToString();
                    totalPrincipal = totalPrincipal + principal;

                    listamort.Add(obj);
                }

                GridView1.DataSource = listamort;
                GridView1.DataBind();
            }
        }

        private double calculateEMI(double loanAmt, double interestRate, double tenure)
        {
            if (interestRate != 0)
            {
                double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
                double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
                double emi = 1 / Math.Pow((1 + interestRateForMonthFraction), tenure);
                double emiPerLakh = (loanAmt * interestRateForMonthFraction) / (1 - emi); // (EMI per lakh borrowed)
                emiPerLakh = roundDecimals(emiPerLakh, 0);
                return emiPerLakh;
            }
            else
            {
                double emi = loanAmt / tenure;
                double emiPerLakh = roundDecimals(emi, 0);
                return emiPerLakh;
            }
        }

    }
    } 