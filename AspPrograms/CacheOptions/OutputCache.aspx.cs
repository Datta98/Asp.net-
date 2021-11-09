using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CacheOptions
{
    public partial class OutputCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(10000);
            Response.Write("This page was generated and cache at:" +
            DateTime.Now.ToString());
        }
    }
}