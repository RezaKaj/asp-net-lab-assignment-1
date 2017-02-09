using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabAssignment1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a;
            a = Convert.ToInt32(Application["myCount"]);
           // Label4.Text = a.ToString("0000");
        }

        

        
    }
}