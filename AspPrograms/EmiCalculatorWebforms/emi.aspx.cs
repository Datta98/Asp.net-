
using Calc_EmiListLIb;
using EmiCalculatorLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EmiCalculatorWebforms
{
    public partial class emi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Chart1.Visible = false;
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //this.emigraph.Visible = false;
            
            if (RadioButtonList1.SelectedItem.Text == "Graph")
            {
                this.emitable.Visible = false;
                //this.emigraph.Visible = true;
                this.Chart1.Visible = true;
            }
            else
            {
                this.emitable.Visible = true;
                //this.emigraph.Visible = false;
                this.Chart1.Visible = false;
            }

        }

        public void Button1_Click(object sender, EventArgs e)
        {

            float loan_amt = float.Parse(this.sld_loanamt.Value);
            float interest = float.Parse(this.sld_interest.Value);
            float tenure = float.Parse(this.sld_tenure.Value);
            Emicalculator(loan_amt, interest, tenure);
            Emitable(loan_amt, tenure, interest, 1);
        }

        public void Emicalculator(float loan_amt, float interest_rate, float tenure)
        {
            string[] returnvalue = EmiCaculatorType.Emi_calculator(loan_amt, interest_rate, tenure);
            this.lbl_monthlyemi.Text = returnvalue[0];
            this.lbl_totalinterestamt.Text = returnvalue[1];
            this.lbl_totalamountpayable.Text = returnvalue[2];

        }
        public void Emitable(double loanAmt, double Term_Months, double interestRate, double Installment_Number)
        {
            List<CLS_AMORTIZATION> emi_list = Calc_EmiListType.Calc_EmiList(loanAmt, Term_Months, interestRate, Installment_Number);
            GridView1.DataSource = emi_list;
            GridView1.DataBind();
        }

        private void loadDatagraph()
        {
            
            //Chart1.DataSource = listamort;
            //Chart1.DataBind();
            //    List<string> xValues = new List<string>(CLS_AMORTIZATION);

            //    string[] y = new string[listamort.Count]; ;

            //    //foreach(var items in listamort)
            //    //{
            //    //   x= items.BalanceAmount;
            //    //    y = items.EMIAmount;
            //    //}
            //    for (int i = 0; i < listamort.Count; i++)
            //    {
            //        x[i] = listamort.FindIndex(CLS_AMORTIZATIO);

            //    }

            //    Chart1.Series[0].Points.DataBindXY(x, y);
        }
        
    }
}