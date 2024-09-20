<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adResult.aspx.cs" Inherits="Wisdom.adResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
<center>
    <h1 style="margin-top:50px;font-size:20px;color:Green;margin-left:450px"><asp:Label ID="lblMess" runat="server"></asp:Label></h1> 
    <asp:MultiView ID="MultiView1" runat="server">
    
    <asp:View ID="View1" runat="server">

    <table border="2" style="margin-top:180px">
        <tr>
            <td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
            </td>
        </tr>
        <tr>
                <td style="border:2px solid black;padding: 10px 10px 10px 20px">
                    <asp:Label ID="lblSyllabusStandard" runat="server" CssClass="form-label">Standard:-</asp:Label>
                    </td>
                    <td style="border:2px solid black;padding: 10px 10px 10px 20px">
                            <asp:DropDownList ID="ddlSyllabusStandard" runat="server" CssClass="form-select mt-1">
                                <asp:ListItem Value="0">Select Standard</asp:ListItem>
                                <asp:ListItem>1st</asp:ListItem>
                                <asp:ListItem>2nd</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                                <asp:ListItem>4th</asp:ListItem>
                                <asp:ListItem>5th</asp:ListItem>
                                <asp:ListItem>6th</asp:ListItem>
                                <asp:ListItem>7th</asp:ListItem>
                                <asp:ListItem>8th</asp:ListItem>
                                <asp:ListItem>9th</asp:ListItem>
                                <asp:ListItem>10th</asp:ListItem>
                                <asp:ListItem>11th Science</asp:ListItem>
                                <asp:ListItem>11th Arts</asp:ListItem>
                                <asp:ListItem>12th Science</asp:ListItem>
                                <asp:ListItem>12th Arts</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvClass" ControlToValidate="ddlSyllabusStandard" runat="server" ErrorMessage="*Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 30px 10px 20px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />                    
                </td>
            </tr>
    </table>
    </asp:View>
    
    
    
    <asp:View ID="View2" runat="server">
        <table border="2" style="margin-top:30px;padding-bottom:50px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollFi" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollFi" ControlToValidate="txtRollFi" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameFi" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameFi" ControlToValidate="txtNameFi" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngFi" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
            <asp:RequiredFieldValidator ID="rfvEngFi" ControlToValidate="txtEngFi" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsFi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujFi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiFi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComFi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGkFi" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawFi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnFiSe" runat="server" Text="Submit" onclick="btnFiSe_Click" /></td>
        </tr>
        </table>
    </asp:View>



    <asp:View ID="View3" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTh" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTh" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTh" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsTh" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujTh" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHinTh" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTh" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKTh" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawTh" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvTh" runat="server" placeholder="Enter Environment Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraTh" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnThFo" runat="server" Text="Submit" onclick="btnThFo_Click" /></td>
        </tr>
        </table>
    </asp:View>




    <asp:View ID="View4" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSi" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSi" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSi" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsSi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujSi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiSi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKSi" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawSi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvSi" runat="server" placeholder="Enter Environment Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaSi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraSi" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciSi" runat="server" placeholder="Enter Science Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnSiSe" runat="server" Text="Submit" onclick="btnSiSe_Click" /></td>
        </tr>
        </table>
    </asp:View>



    <asp:View ID="View5" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollEi" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameEi" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngEi" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsEi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujEi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiEi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComEi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>        
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawEi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSEi" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaEi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraEi" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciEi" runat="server" placeholder="Enter Science Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="BtnEight" runat="server" Text="Submit" 
                onclick="BtnEight_Click" /></td>
        </tr>
        </table>
    </asp:View>




    <asp:View ID="View6" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollNi" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameNi" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngNi" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsNi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujaNi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiNi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComNi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>        
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawNi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSNi" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaNi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Physical Education:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPeNi" runat="server" placeholder="Enter P.E. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciNi" runat="server" placeholder="Enter Science Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnNine" runat="server" Text="Submit" onclick="btnNine_Click" /></td>
        </tr>
        </table>
    </asp:View>







    <asp:View ID="View7" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTe" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTe" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTe" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsTe" runat="server" placeholder="Enter Maths Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujTe" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTe" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>                
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSTe" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaTe" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciTe" runat="server" placeholder="Enter Science Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnTen" runat="server" Text="Submit" onclick="btnTen_Click" /></td>
        </tr>
        </table>
    </asp:View>







    <asp:View ID="View8" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSci" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSci" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSci" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Maths/Bio:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMBSci" runat="server" placeholder="Enter Maths/Bio Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Physics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhySci" runat="server" placeholder="Enter Physics Marks"></asp:TextBox></td>
        </tr>                
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Chemistry:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtCheSci" runat="server" placeholder="Enter Chemistry Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSci" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnSci" runat="server" Text="Submit" onclick="btnSci_Click" /></td>
        </tr>
        </table>
    </asp:View>




    <asp:View ID="View9" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollArts" runat="server" placeholder="Enter Roll No."></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameArts" runat="server" placeholder="Enter Name"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngArts" runat="server" placeholder="Enter English Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComArts" runat="server" placeholder="Enter Computer Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Psychology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPsyArts" runat="server" placeholder="Enter Maths/Bio Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Philo/Geo:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhiloArts" runat="server" placeholder="Enter Philo/Geo Marks"></asp:TextBox></td>
        </tr>                
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujArts" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Sociology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSocArts" runat="server" placeholder="Enter Sociology Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Economics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEcoArts" runat="server" placeholder="Enter Economics Marks"></asp:TextBox></td>
        </tr>
        <tr><td style="border:2px solid black;padding: 10px 10px 10px 20px">Sans/Arabic:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaArts" runat="server" placeholder="Enter Sans/Arabic Marks"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnArts" runat="server" Text="Submit" onclick="btnArts_Click" /></td>
        </tr>
        </table>
    </asp:View>




        </asp:MultiView>
</center>
</div>

</asp:Content>
