using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ajax
{
    public partial class ajax_example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "server time is" + DateTime.Now.ToLongTimeString();

            Timer1.Enabled = true;
            Timer1.Interval = 3000;

            Label2.Text = DateTime.Now.ToLongTimeString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "server time is" + DateTime.Now.ToLongTimeString();
            Label1.ForeColor = System.Drawing.Color.Blue;
        }
    }
}