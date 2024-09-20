using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Wisdom
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkterm.Checked)
                {
                    if (txtLoginUserName.Text == "Admin" && txtLoginPassword.Text == "admin")
                    {
                        Response.Redirect("adHome.aspx");
                    }
                    else
                    {
                        string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                        SqlConnection con = new SqlConnection(strcon);
                        SqlCommand cmd = new SqlCommand("Select * from SignUp where Username='" + txtLoginUserName.Text + "' and Password='" + txtLoginPassword.Text + "'", con);
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            Session["Username"] = txtLoginUserName.Text;
                            Response.Redirect("Home.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
                throw;
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into SignUp(Name,Email,Username,Password) Values('"+txtRegisterName.Text+"','"+txtRegisterEmail.Text+"','"+txtRegisterUserName.Text+"','"+txtRegisterPassword.Text+"')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                MultiView1.ActiveViewIndex = 0;
                Session["Username"] = txtRegisterUserName.Text;
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
                throw;
            }
        }

        protected void lnkForgotPassword_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void lnkBackToLogin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string script = "<script type=\"text/javascript\">showAlert();</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
    }
}