using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMangement
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Click Button to see the Value";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = hdValue.Value;
        }
    }
}