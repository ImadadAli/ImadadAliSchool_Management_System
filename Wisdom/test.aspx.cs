using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Wisdom
{
    public partial class adResult : System.Web.UI.Page
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
            if (ddlSyllabusStandard.SelectedValue == "1st" || ddlSyllabusStandard.SelectedValue == "2nd")
            {
                MultiView1.ActiveViewIndex = 1;    
            }
            else if (ddlSyllabusStandard.SelectedValue == "3rd" || ddlSyllabusStandard.SelectedValue == "4th" || ddlSyllabusStandard.SelectedValue == "5th")
            {
                MultiView1.ActiveViewIndex = 2;
            }            
            else if (ddlSyllabusStandard.SelectedValue == "6th" || ddlSyllabusStandard.SelectedValue=="7th")
            {
                MultiView1.ActiveViewIndex = 3;                   
            }            
            else if (ddlSyllabusStandard.SelectedValue == "8th")
            {
                MultiView1.ActiveViewIndex = 4;
            }
            else if (ddlSyllabusStandard.SelectedValue == "9th")
            {
                MultiView1.ActiveViewIndex = 5;
            }
            else if (ddlSyllabusStandard.SelectedValue == "10th")
            {
                MultiView1.ActiveViewIndex = 6;
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Arts" || ddlSyllabusStandard.SelectedValue == "12th Arts")
            {
                MultiView1.ActiveViewIndex = 8;
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Science" || ddlSyllabusStandard.SelectedValue == "12th Science")
            {
                MultiView1.ActiveViewIndex = 7;
            }
        }

        protected void btnFiSe_Click(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,Hindi,GK,Draw,Comp) Values(@class,@obt,@grade,@per," + txtRollFi.Text + ",'" + txtNameFi.Text + "'," + txtEngFi.Text + "," + txtMathsFi.Text + "," + txtGujFi.Text + "," + txtHindiFi.Text + "," + txtGkFi.Text + "," + txtDrawFi.Text + "," + txtComFi.Text + ")", con);
            cmd.Parameters.AddWithValue("@class", ddlSyllabusStandard.SelectedValue);
            cmd.Parameters.AddWithValue("@obt", obt);
            cmd.Parameters.AddWithValue("@per", per);
            cmd.Parameters.AddWithValue("@grade",gra);
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

        protected void btnThFo_Click(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,Hindi,GK,Draw,Comp,Env,English_Gra) Values(@class,@obt,@grade,@per," + txtRollTh.Text + ",'" + txtNameTh.Text + "'," + txtEngTh.Text + "," + txtMathsTh.Text + "," + txtGujTh.Text + "," + txtHinTh.Text + "," + txtGKTh.Text + "," + txtDrawTh.Text + "," + txtComTh.Text + "," + txtEnvTh.Text + "," + txtGraTh.Text + ")", con);
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

        protected void btnSiSe_Click(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,Hindi,GK,Draw,Comp,Env,English_Gra,ArSa,Science) Values(@class,@obt,@grade,@per," + txtRollSi.Text + ",'" + txtNameSi.Text + "'," + txtEngSi.Text + "," + txtMathsSi.Text + "," + txtGujSi.Text + "," + txtHindiSi.Text + "," + txtGKSi.Text + "," + txtDrawSi.Text + "," + txtComSi.Text + "," + txtEnvSi.Text + "," + txtGraSi.Text + "," + txtArSaSi.Text + "," + txtSciSi.Text + ")", con);
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,Hindi,SS,Draw,Comp,English_Gra,ArSa,Science) Values(@class,@obt,@grade,@per," + txtRollEi.Text + ",'" + txtNameEi.Text + "'," + txtEngEi.Text + "," + txtMathsEi.Text + "," + txtGujEi.Text + "," + txtHindiEi.Text + "," + txtSSEi.Text + "," + txtDrawEi.Text + "," + txtComEi.Text + "," + txtGraEi.Text + "," + txtArSaEi.Text + "," + txtSciEi.Text + ")", con);
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,Hindi,SS,Draw,Comp,PE,ArSa,Science) Values(@class,@obt,@grade,@per," + txtRollNi.Text + ",'" + txtNameNi.Text + "'," + txtEngNi.Text + "," + txtMathsNi.Text + "," + txtGujaNi.Text + "," + txtHindiNi.Text + "," + txtSSNi.Text + "," + txtDrawNi.Text + "," + txtComNi.Text + "," + txtPeNi.Text + "," + txtArSaNi.Text + "," + txtSciNi.Text + ")", con);
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Maths,Gujarati,SS,Comp,ArSa,Science) Values(@class,@obt,@grade,@per," + txtRollTe.Text + ",'" + txtNameTe.Text + "'," + txtEngTe.Text + "," + txtMathsTe.Text + "," + txtGujTe.Text + "," + txtSSTe.Text + "," + txtComTe.Text + "," + txtArSaTe.Text + "," + txtSciTe.Text + ")", con);
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

        protected void btnSci_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngSci.Text);
            int comp = Convert.ToInt32(txtComSci.Text);
            int mb = Convert.ToInt32(txtMBSci.Text);
            int phy = Convert.ToInt32(txtPhySci.Text);
            int chem = Convert.ToInt32(txtCheSci.Text);
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Comp,MB,Phys,Chem) Values(@class,@obt,@grade,@per," + txtRollSci.Text + ",'" + txtNameSci.Text + "'," + txtEngSci.Text + "," + txtComSci.Text + "," + txtMBSci.Text + "," + txtPhySci.Text + "," + txtCheSci.Text + ")",con);
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

        protected void btnArts_Click(object sender, EventArgs e)
        {
            int eng = Convert.ToInt32(txtEngArts.Text);
            int comp = Convert.ToInt32(txtComArts.Text);
            int guj = Convert.ToInt32(txtGujArts.Text);            
            int psy = Convert.ToInt32(txtPsyArts.Text);
            int phge = Convert.ToInt32(txtPhiloArts.Text);
            int socio = Convert.ToInt32(txtSocArts.Text);
            int eco = Convert.ToInt32(txtEcoArts.Text);
            int arsa = Convert.ToInt32(txtArSaArts.Text);
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
            SqlCommand cmd = new SqlCommand("Insert into Result(Class,Obt_marks,Grade,Percentage,Roll_no,Name,English,Comp,PhGe,Socio,Eco,Gujarati,ArSa,Psyc) Values(@class,@obt,@grade,@per," + txtRollArts.Text + ",'" + txtNameArts.Text + "'," + txtEngArts.Text + "," + txtComArts.Text + "," + txtPhiloArts.Text + "," + txtSocArts.Text + "," + txtEcoArts.Text + "," + txtGujArts.Text + "," + txtArSaArts.Text + "," + txtPsyArts.Text + ")", con);
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
    }
}