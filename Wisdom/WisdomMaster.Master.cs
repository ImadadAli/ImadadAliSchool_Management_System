using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wisdom
{
    public partial class WisdomMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                loginContentPage.Visible = false;
                profileContent.Visible = true;
            }
            else
            {
                loginContentPage.Visible = true;
                profileContent.Visible = false;
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Remove("Username");
            Response.Redirect("~/Login.aspx");  
        }  
    }
}