using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Wisdom
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }            
        }

        protected void btnShowResult_Click(object sender, EventArgs e)
        {            
            if (ddlResultStandard.SelectedValue == "1st")
            {
               
                MultiView1.ActiveViewIndex = 1;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from First where Roll_no="+txtResultRollNumber.Text+"", con);
                DataSet dsFi = new DataSet();

                sda.Fill(dsFi);

                fvFi.DataSource = dsFi;
                fvFi.DataBind();
            }
            else if (ddlResultStandard.SelectedValue == "2nd")
            {                
                MultiView1.ActiveViewIndex = 1;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Second where Roll_no="+txtResultRollNumber.Text+"", con);
                DataSet dsFi = new DataSet();
                sda.Fill(dsFi);

                fvFi.DataSource = dsFi;
                fvFi.DataBind();
            }
            else if (ddlResultStandard.SelectedValue == "3rd")
            {
                MultiView1.ActiveViewIndex = 2;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Third where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsTh = new DataSet();

                sda.Fill(dsTh);

                fvTh.DataSource = dsTh;
                fvTh.DataBind();
                                
            }
            else if (ddlResultStandard.SelectedValue == "4th")
            {
                MultiView1.ActiveViewIndex = 2;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Four where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsTh = new DataSet();

                sda.Fill(dsTh);

                fvTh.DataSource = dsTh;
                fvTh.DataBind();

            }
            else if (ddlResultStandard.SelectedValue == "5th")
            {
                MultiView1.ActiveViewIndex = 2;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Five where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsTh = new DataSet();

                sda.Fill(dsTh);

                fvTh.DataSource = dsTh;
                fvTh.DataBind();

            }
            else if (ddlResultStandard.SelectedValue == "6th")
            {
                MultiView1.ActiveViewIndex = 3;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Six where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsSi = new DataSet();

                sda.Fill(dsSi);

                fvSi.DataSource = dsSi;
                fvSi.DataBind();
                                

            }
            else if (ddlResultStandard.SelectedValue == "7th")
            {
                MultiView1.ActiveViewIndex = 3;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Seven where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsSi = new DataSet();

                sda.Fill(dsSi);

                fvSi.DataSource = dsSi;
                fvSi.DataBind();


            }
            else if (ddlResultStandard.SelectedValue == "8th")
            {
                MultiView1.ActiveViewIndex = 4;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Eight where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsEi = new DataSet();

                sda.Fill(dsEi);

                fvEi.DataSource = dsEi;
                fvEi.DataBind();                

            }
            else if (ddlResultStandard.SelectedValue == "9th")
            {
                MultiView1.ActiveViewIndex = 5;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Nine where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsNi = new DataSet();

                sda.Fill(dsNi);

                fvNi.DataSource = dsNi;
                fvNi.DataBind();             
            }
            else if (ddlResultStandard.SelectedValue == "10th")
            {
                MultiView1.ActiveViewIndex = 6;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Ten where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsTe = new DataSet();

                sda.Fill(dsTe);

                fvTe.DataSource = dsTe;
                fvTe.DataBind();                
            }
            else if (ddlResultStandard.SelectedValue == "11th Arts")
            {
                MultiView1.ActiveViewIndex = 7;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from EArts where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsArts = new DataSet();

                sda.Fill(dsArts);

                fvArts.DataSource = dsArts;
                fvArts.DataBind();
               
            }
            else if (ddlResultStandard.SelectedValue == "12th Arts")
            {
                MultiView1.ActiveViewIndex = 7;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from TArts where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsArts = new DataSet();

                sda.Fill(dsArts);

                fvArts.DataSource = dsArts;
                fvArts.DataBind();

            }
            else if (ddlResultStandard.SelectedValue == "11th Science")
            {
                MultiView1.ActiveViewIndex = 8;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from ESci where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataSet dsSci = new DataSet();

                sda.Fill(dsSci);

                fvSci.DataSource = dsSci;
                fvSci.DataBind();               
            }
            else if (ddlResultStandard.SelectedValue == "12th Science")
            {
                MultiView1.ActiveViewIndex = 8;
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter sdaSci = new SqlDataAdapter("Select * from TSci where Roll_no=" + txtResultRollNumber.Text + "", con);
                DataTable dtSci = new DataTable();

                sdaSci.Fill(dtSci);

                fvSci.DataSource = dtSci;
                fvSci.DataBind();
            }
        }
    }
}