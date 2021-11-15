using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageRedirect
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                TextBox textBox = (TextBox)PreviousPage.FindControl("TextBox1");
                Label1.Text = "Welcom" + textBox.Text;
            }
        }
    }
}