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
    public partial class adResult1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlSyllabusStandard.SelectedValue == "1st")
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else if (ddlSyllabusStandard.SelectedValue == "2nd")
            {
                MultiView1.ActiveViewIndex = 2;
            }
            else if (ddlSyllabusStandard.SelectedValue == "3rd")
            {
                MultiView1.ActiveViewIndex = 3;
            }
            else if (ddlSyllabusStandard.SelectedValue == "4th")
            {
                MultiView1.ActiveViewIndex = 4;
            }
            else if (ddlSyllabusStandard.SelectedValue == "5th")
            {
                MultiView1.ActiveViewIndex = 5;
            }
            else if (ddlSyllabusStandard.SelectedValue == "6th")
            {
                MultiView1.ActiveViewIndex = 6;
            }
            else if (ddlSyllabusStandard.SelectedValue == "7th")
            {
                MultiView1.ActiveViewIndex = 7;
            }
            else if (ddlSyllabusStandard.SelectedValue == "8th")
            {
                MultiView1.ActiveViewIndex = 8;
            }
            else if (ddlSyllabusStandard.SelectedValue == "9th")
            {
                MultiView1.ActiveViewIndex = 9;
            }
            else if (ddlSyllabusStandard.SelectedValue == "10th")
            {
                MultiView1.ActiveViewIndex = 10;
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Arts")
            {
                MultiView1.ActiveViewIndex = 11;
            }
            else if (ddlSyllabusStandard.SelectedValue == "12th Arts")
            {
                MultiView1.ActiveViewIndex = 12;
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Science")
            {
                MultiView1.ActiveViewIndex = 13;
            }
            else if (ddlSyllabusStandard.SelectedValue == "12th Science")
            {
                MultiView1.ActiveViewIndex = 14;
            }
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngFi.Text);
            int comp = Convert.ToInt32(txtComFi.Text);
            int guj = Convert.ToInt32(txtGujFi.Text);
            int hin = Convert.ToInt32(txtHindiFi.Text);
            int gk = Convert.ToInt32(txtGkFi.Text);
            int math = Convert.ToInt32(txtMathsFi.Text);
            int draw = Convert.ToInt32(txtDrawFi.Text);
            int obt = eng + comp + guj + hin + gk + math + draw;
            int per = obt / 7;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }

            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into First(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp) Values(@class,@obt,@grade,@per," + txtRollFi.Text + ",'" + txtNameFi.Text + "'," + txtEngFi.Text + "," + txtMathsFi.Text + "," + txtGujFi.Text + "," + txtHindiFi.Text + "," + txtGkFi.Text + "," + txtDrawFi.Text + "," + txtComFi.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnSecond_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngSe.Text);
            int comp = Convert.ToInt32(txtComSe.Text);
            int guj = Convert.ToInt32(txtGujSe.Text);
            int hin = Convert.ToInt32(txtHindiSe.Text);
            int gk = Convert.ToInt32(txtGkSe.Text);
            int math = Convert.ToInt32(txtMathsSe.Text);
            int draw = Convert.ToInt32(txtDrawSe.Text);
            int obt = eng + comp + guj + hin + gk + math + draw;
            int per = obt / 7;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }

            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Second(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp) Values(@class,@obt,@grade,@per," + txtRollSe.Text + ",'" + txtNameSe.Text + "'," + txtEngSe.Text + "," + txtMathsSe.Text + "," + txtGujSe.Text + "," + txtHindiSe.Text + "," + txtGkSe.Text + "," + txtDrawSe.Text + "," + txtComSe.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnThird_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngTh.Text);
            int comp = Convert.ToInt32(txtComTh.Text);
            int guj = Convert.ToInt32(txtGujTh.Text);
            int hin = Convert.ToInt32(txtHinTh.Text);
            int gk = Convert.ToInt32(txtGKTh.Text);
            int math = Convert.ToInt32(txtMathsTh.Text);
            int draw = Convert.ToInt32(txtDrawTh.Text);
            int env = Convert.ToInt32(txtEngTh.Text);
            int engra = Convert.ToInt32(txtGraTh.Text);
            int obt = eng + comp + guj + hin + gk + math + draw + env + engra;
            int per = obt / 9;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Third(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp,Env,Eng_Gra) Values(@class,@obt,@grade,@per," + txtRollTh.Text + ",'" + txtNameTh.Text + "'," + txtEngTh.Text + "," + txtMathsTh.Text + "," + txtGujTh.Text + "," + txtHinTh.Text + "," + txtGKTh.Text + "," + txtDrawTh.Text + "," + txtComTh.Text + "," + txtEnvTh.Text + "," + txtGraTh.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnFour_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngFo.Text);
            int comp = Convert.ToInt32(txtComFo.Text);
            int guj = Convert.ToInt32(txtGujFo.Text);
            int hin = Convert.ToInt32(txtHinFo.Text);
            int gk = Convert.ToInt32(txtGKFo.Text);
            int math = Convert.ToInt32(txtMathsFo.Text);
            int draw = Convert.ToInt32(txtDrawFo.Text);
            int env = Convert.ToInt32(txtEngFo.Text);
            int engra = Convert.ToInt32(txtGraFo.Text);
            int obt = eng + comp + guj + hin + gk + math + draw + env + engra;
            int per = obt / 9;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Four(Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp,Env,Eng_Gra) Values(@obt,@grade,@per," + txtRollFo.Text + ",'" + txtNameFo.Text + "'," + txtEngFo.Text + "," + txtMathsFo.Text + "," + txtGujFo.Text + "," + txtHinFo.Text + "," + txtGKFo.Text + "," + txtDrawFo.Text + "," + txtComFo.Text + "," + txtEnvFo.Text + "," + txtGraFo.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnFive_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngFiv.Text);
            int comp = Convert.ToInt32(txtComFiv.Text);
            int guj = Convert.ToInt32(txtGujFiv.Text);
            int hin = Convert.ToInt32(txtHinFiv.Text);
            int gk = Convert.ToInt32(txtGKFiv.Text);
            int math = Convert.ToInt32(txtMathsFiv.Text);
            int draw = Convert.ToInt32(txtDrawFiv.Text);
            int env = Convert.ToInt32(txtEngFiv.Text);
            int engra = Convert.ToInt32(txtGraFiv.Text);
            int obt = eng + comp + guj + hin + gk + math + draw + env + engra;
            int per = obt / 9;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Five(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp,Env,Eng_Gra) Values(@class,@obt,@grade,@per," + txtRollFiv.Text + ",'" + txtNameFiv.Text + "'," + txtEngFiv.Text + "," + txtMathsFiv.Text + "," + txtGujFiv.Text + "," + txtHinFiv.Text + "," + txtGKFiv.Text + "," + txtDrawFiv.Text + "," + txtComFiv.Text + "," + txtEnvFiv.Text + "," + txtGraFiv.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnSix_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngSi.Text);
            int comp = Convert.ToInt32(txtComSi.Text);
            int guj = Convert.ToInt32(txtGujSi.Text);
            int hin = Convert.ToInt32(txtHindiSi.Text);
            int gk = Convert.ToInt32(txtGKSi.Text);
            int math = Convert.ToInt32(txtMathsSi.Text);
            int draw = Convert.ToInt32(txtDrawSi.Text);
            int env = Convert.ToInt32(txtEngSi.Text);
            int engra = Convert.ToInt32(txtGraSi.Text);
            int arsa = Convert.ToInt32(txtArSaSi.Text);
            int sci = Convert.ToInt32(txtSciSi.Text);
            int obt = eng + comp + guj + hin + gk + math + draw + env + engra + arsa + sci;
            int per = obt / 11;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Six(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp,Env,Eng_gra,ArSa,Sci) Values(@class,@obt,@grade,@per," + txtRollSi.Text + ",'" + txtNameSi.Text + "'," + txtEngSi.Text + "," + txtMathsSi.Text + "," + txtGujSi.Text + "," + txtHindiSi.Text + "," + txtGKSi.Text + "," + txtDrawSi.Text + "," + txtComSi.Text + "," + txtEnvSi.Text + "," + txtGraSi.Text + "," + txtArSaSi.Text + "," + txtSciSi.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnSeven_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngSev.Text);
            int comp = Convert.ToInt32(txtComSev.Text);
            int guj = Convert.ToInt32(txtGujSev.Text);
            int hin = Convert.ToInt32(txtHindiSev.Text);
            int gk = Convert.ToInt32(txtGKSev.Text);
            int math = Convert.ToInt32(txtMathsSev.Text);
            int draw = Convert.ToInt32(txtDrawSev.Text);
            int env = Convert.ToInt32(txtEngSev.Text);
            int engra = Convert.ToInt32(txtGraSev.Text);
            int arsa = Convert.ToInt32(txtArSaSev.Text);
            int sci = Convert.ToInt32(txtSciSev.Text);
            int obt = eng + comp + guj + hin + gk + math + draw + env + engra + arsa + sci;
            int per = obt / 11;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Seven(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,GK,Draw,Comp,Env,Eng_gra,ArSa,Sci) Values(@class,@obt,@grade,@per," + txtRollSev.Text + ",'" + txtNameSev.Text + "'," + txtEngSev.Text + "," + txtMathsSev.Text + "," + txtGujSev.Text + "," + txtHindiSev.Text + "," + txtGKSev.Text + "," + txtDrawSev.Text + "," + txtComSev.Text + "," + txtEnvSev.Text + "," + txtGraSev.Text + "," + txtArSaSev.Text + "," + txtSciSev.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void BtnEight_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngEi.Text);
            int comp = Convert.ToInt32(txtComEi.Text);
            int guj = Convert.ToInt32(txtGujEi.Text);
            int hin = Convert.ToInt32(txtHindiEi.Text);
            int math = Convert.ToInt32(txtMathsEi.Text);
            int draw = Convert.ToInt32(txtDrawEi.Text);
            int ss = Convert.ToInt32(txtEngEi.Text);
            int engra = Convert.ToInt32(txtGraEi.Text);
            int arsa = Convert.ToInt32(txtArSaEi.Text);
            int sci = Convert.ToInt32(txtSciEi.Text);
            int obt = eng + comp + guj + hin + math + draw + ss + engra + arsa + sci;
            int per = obt / 10;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Eight(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,SS,Draw,Comp,Eng_gra,ArSa,Sci) Values(@class,@obt,@grade,@per," + txtRollEi.Text + ",'" + txtNameEi.Text + "'," + txtEngEi.Text + "," + txtMathsEi.Text + "," + txtGujEi.Text + "," + txtHindiEi.Text + "," + txtSSEi.Text + "," + txtDrawEi.Text + "," + txtComEi.Text + "," + txtGraEi.Text + "," + txtArSaEi.Text + "," + txtSciEi.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnNine_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngNi.Text);
            int comp = Convert.ToInt32(txtComNi.Text);
            int guj = Convert.ToInt32(txtGujaNi.Text);
            int hin = Convert.ToInt32(txtHindiNi.Text);
            int math = Convert.ToInt32(txtMathsNi.Text);
            int draw = Convert.ToInt32(txtDrawNi.Text);
            int ss = Convert.ToInt32(txtEngNi.Text);
            int pe = Convert.ToInt32(txtPeNi.Text);
            int arsa = Convert.ToInt32(txtArSaNi.Text);
            int sci = Convert.ToInt32(txtSciNi.Text);
            int obt = eng + comp + guj + hin + math + draw + ss + pe + arsa + sci;
            int per = obt / 10;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Nine(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,Hindi,SS,Draw,Comp,PE,ArSa,Sci) Values(@class,@obt,@grade,@per," + txtRollNi.Text + ",'" + txtNameNi.Text + "'," + txtEngNi.Text + "," + txtMathsNi.Text + "," + txtGujaNi.Text + "," + txtHindiNi.Text + "," + txtSSNi.Text + "," + txtDrawNi.Text + "," + txtComNi.Text + "," + txtPeNi.Text + "," + txtArSaNi.Text + "," + txtSciNi.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnTen_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngTe.Text);
            int comp = Convert.ToInt32(txtComTe.Text);
            int guj = Convert.ToInt32(txtGujTe.Text);
            int math = Convert.ToInt32(txtMathsTe.Text);
            int ss = Convert.ToInt32(txtEngTe.Text);
            int arsa = Convert.ToInt32(txtArSaTe.Text);
            int sci = Convert.ToInt32(txtSciTe.Text);
            int obt = eng + comp + guj + math + ss + arsa + sci;
            int per = obt / 7;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Ten(Class,Obt,Grade,Per,Roll_no,Name,Eng,Maths,Guj,SS,Comp,ArSa,Sci) Values(@class,@obt,@grade,@per," + txtRollTe.Text + ",'" + txtNameTe.Text + "'," + txtEngTe.Text + "," + txtMathsTe.Text + "," + txtGujTe.Text + "," + txtSSTe.Text + "," + txtComTe.Text + "," + txtArSaTe.Text + "," + txtSciTe.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnEArts_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngEArts.Text);
            int comp = Convert.ToInt32(txtComEArts.Text);
            int guj = Convert.ToInt32(txtGujEArts.Text);
            int psy = Convert.ToInt32(txtPsyEArts.Text);
            int phge = Convert.ToInt32(txtPhiloEArts.Text);
            int socio = Convert.ToInt32(txtSocEArts.Text);
            int eco = Convert.ToInt32(txtEcoEArts.Text);
            int arsa = Convert.ToInt32(txtArSaEArts.Text);
            int obt = eng + comp + guj + psy + phge + socio + eco + arsa;
            int per = obt / 8;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into EArts(Class,Obt,Grade,Per,Roll_no,Name,Eng,Comp,PhGe,Socio,Eco,Guj,ArSa,Psy) Values(@class,@obt,@grade,@per," + txtRollEArts.Text + ",'" + txtNameEArts.Text + "'," + txtEngEArts.Text + "," + txtComEArts.Text + "," + txtPhiloEArts.Text + "," + txtSocEArts.Text + "," + txtEcoEArts.Text + "," + txtGujEArts.Text + "," + txtArSaEArts.Text + "," + txtPsyEArts.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }
        protected void btnTArts_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngTArts.Text);
            int comp = Convert.ToInt32(txtComTArts.Text);
            int guj = Convert.ToInt32(txtGujTArts.Text);
            int psy = Convert.ToInt32(txtPsyTArts.Text);
            int phge = Convert.ToInt32(txtPhiloTArts.Text);
            int socio = Convert.ToInt32(txtSocTArts.Text);
            int eco = Convert.ToInt32(txtEcoTArts.Text);
            int arsa = Convert.ToInt32(txtArSaTArts.Text);
            int obt = eng + comp + guj + psy + phge + socio + eco + arsa;
            int per = obt / 8;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into TArts(Obt,Grade,Per,Roll_no,Name,Eng,Comp,PhGe,Socio,Eco,Guj,ArSa,Psy) Values(@obt,@grade,@per," + txtRollTArts.Text + ",'" + txtNameTArts.Text + "'," + txtEngTArts.Text + "," + txtComTArts.Text + "," + txtPhiloTArts.Text + "," + txtSocTArts.Text + "," + txtEcoTArts.Text + "," + txtGujTArts.Text + "," + txtArSaTArts.Text + "," + txtPsyTArts.Text + ")", con);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }

        protected void btnESci_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngESci.Text);
            int comp = Convert.ToInt32(txtComESci.Text);
            int mb = Convert.ToInt32(txtMBESci.Text);
            int phy = Convert.ToInt32(txtPhyESci.Text);
            int chem = Convert.ToInt32(txtCheESci.Text);
            int obt = eng + comp + mb + phy + chem;
            int per = obt / 5;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into ESci(Obt,Grade,Per,Roll_no,Name,English,Comp,MB,Physics,Chem) Values(@obt,@grade,@per," + txtRollESci.Text + ",'" + txtNameESci.Text + "'," + txtEngESci.Text + "," + txtComESci.Text + "," + txtMBESci.Text + "," + txtPhyESci.Text + "," + txtCheESci.Text + ")", con);
            cmd.
                
                
                
                
                
                










































                Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }
        protected void btnTSci_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngTSci.Text);
            int comp = Convert.ToInt32(txtComTSci.Text);
            int mb = Convert.ToInt32(txtMBTSci.Text);
            int phy = Convert.ToInt32(txtPhyTSci.Text);
            int chem = Convert.ToInt32(txtCheTSci.Text);
            int obt = eng + comp + mb + phy + chem;
            int per = obt / 5;
            char gra = 'A';
            if (per >= 80)
            {
                gra = 'A';
            }
            else if (per >= 65)
            {
                gra = 'B';
            }
            else if (per >= 50)
            {
                gra = 'C';
            }
            else if (per >= 35)
            {
                gra = 'D';
            }
            else if (per <= 34)
            {
                gra = 'F';
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into TSci(Obt,Grade,Per,Roll_no,Name,English,Comp,MB,Physics,Chem) Values(@obt,@grade,@per," + txtRollTSci.Text + ",'" + txtNameTSci.Text + "'," + txtEngTSci.Text + "," + txtComTSci.Text + "," + txtMBTSci.Text + "," + txtPhyTSci.Text + "," + txtCheTSci.Text + ")", con);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade", gra);
            con.Open();
            int c = cmd.ExecuteNonQuery();
            con.Close();
            if (c != 0)
            {
                lblMess.Text = "* Inserted Successfully";
            }
            else
            {
                lblMess.Text = "* Something Went Wrong";
            }
        }
    }
}