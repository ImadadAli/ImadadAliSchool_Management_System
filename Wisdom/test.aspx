<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Wisdom.adResult" %>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no :-</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollFi" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollFi" ControlToValidate="txtRollFi" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameFi" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameFi" ControlToValidate="txtNameFi" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngFi" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngFi" ControlToValidate="txtEngFi" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsFi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathFi" ControlToValidate="txtMathsFi" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujFi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujFi" ControlToValidate="txtGujFi" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiFi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHinFi" ControlToValidate="txtHindiFi" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComFi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComFi" ControlToValidate="txtComFi" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGkFi" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGkFi" ControlToValidate="txtGkFi" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawFi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawFi" ControlToValidate="txtDrawFi" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTh" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollTh" ControlToValidate="txtRollTh" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTh" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameTh" ControlToValidate="txtNameTh" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTh" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngTh" ControlToValidate="txtEngTh" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsTh" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsTh" ControlToValidate="txtMathsTh" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujTh" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujTh" ControlToValidate="txtGujTh" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHinTh" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHinTh" ControlToValidate="txtHinTh" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTh" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComTh" ControlToValidate="txtComTh" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKTh" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGkTh" ControlToValidate="txtGKTh" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawTh" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawTh" ControlToValidate="txtDrawTh" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvTh" runat="server" placeholder="Enter Environment Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEnvTh" ControlToValidate="txtEnvTh" runat="server" ErrorMessage="*Please Enter Environment Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraTh" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraTh" ControlToValidate="txtGraTh" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSi" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollSi" ControlToValidate="txtRollSi" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSi" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameSi" ControlToValidate="txtNameSi" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSi" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngSi" ControlToValidate="txtEngSi" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsSi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsSi" ControlToValidate="txtMathsSi" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujSi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujSi" ControlToValidate="txtGujSi" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiSi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHindiSi" ControlToValidate="txtHindiSi" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComSi" ControlToValidate="txtComSi" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKSi" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGkSi" ControlToValidate="txtGKSi" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawSi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawSi" ControlToValidate="txtDrawSi" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvSi" runat="server" placeholder="Enter Environment Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEnvSi" ControlToValidate="txtEnvSi" runat="server" ErrorMessage="*Please Enter Environment Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaSi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaSi" ControlToValidate="txtArSaSi" runat="server" ErrorMessage="*Please Enter Ara/Sans Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraSi" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraSi" ControlToValidate="txtGraSi" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciSi" runat="server" placeholder="Enter Science Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSciSi" ControlToValidate="txtSciSi" runat="server" ErrorMessage="*Please Enter Science Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollEi" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollEi" ControlToValidate="txtRollEi" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameEi" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameEi" ControlToValidate="txtNameEi" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngEi" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngEi" ControlToValidate="txtEngEi" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsEi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsEi" ControlToValidate="txtMathsEi" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujEi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujEi" ControlToValidate="txtEngEi" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiEi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHindiEi" ControlToValidate="txtHindiEi" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComEi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComEi" ControlToValidate="txtComEi" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>        
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawEi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawEi" ControlToValidate="txtDrawEi" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSEi" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSSEi" ControlToValidate="txtSSEi" runat="server" ErrorMessage="*Please Enter S.S. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaEi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaEi" ControlToValidate="txtArSaEi" runat="server" ErrorMessage="*Please Enter Ara/Sans Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraEi" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraEi" ControlToValidate="txtGraEi" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciEi" runat="server" placeholder="Enter Science Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSciEi" ControlToValidate="txtSciEi" runat="server" ErrorMessage="*Please Enter Science Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollNi" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollNi" ControlToValidate="txtRollNi" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameNi" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameNi" ControlToValidate="txtNameNi" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngNi" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngNi" ControlToValidate="txtEngNi" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsNi" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsNi" ControlToValidate="txtMathsNi" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujaNi" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujNi" ControlToValidate="txtGujaNi" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiNi" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHindiNi" ControlToValidate="txtHindiNi" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComNi" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComNi" ControlToValidate="txtComNi" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>        
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawNi" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawNi" ControlToValidate="txtDrawNi" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSNi" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSSNi" ControlToValidate="txtSSNi" runat="server" ErrorMessage="*Please Enter S.S. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaNi" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaNi" ControlToValidate="txtArSaNi" runat="server" ErrorMessage="*Please Enter Ara/Sans Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Physical Education:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPeNi" runat="server" placeholder="Enter P.E. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPeNi" ControlToValidate="txtPeNi" runat="server" ErrorMessage="*Please Enter P.E. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciNi" runat="server" placeholder="Enter Science Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSciNi" ControlToValidate="txtSciNi" runat="server" ErrorMessage="*Please Enter Science Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTe" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollTe" ControlToValidate="txtRollTe" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTe" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameTe" ControlToValidate="txtNameTe" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTe" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngTe" ControlToValidate="txtEngTe" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsTe" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsTe" ControlToValidate="txtMathsTe" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujTe" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujTe" ControlToValidate="txtGujTe" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTe" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComTe" ControlToValidate="txtComTe" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Social Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSSTe" runat="server" placeholder="Enter S.S. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSSTe" ControlToValidate="txtSSTe" runat="server" ErrorMessage="*Please Enter S.S. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaTe" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaTE" ControlToValidate="txtArSaTe" runat="server" ErrorMessage="*Please Enter Ara/Sans Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciTe" runat="server" placeholder="Enter Science Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSciTe" ControlToValidate="txtSciTe" runat="server" ErrorMessage="*Please Enter Science Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSci" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollSci" ControlToValidate="txtRollSci" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSci" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameSci" ControlToValidate="txtNameSci" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSci" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngSci" ControlToValidate="txtEngSci" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Maths/Bio:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMBSci" runat="server" placeholder="Enter Maths/Bio Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMBSci" ControlToValidate="txtMBSci" runat="server" ErrorMessage="*Please Enter Maths/Bio Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Physics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhySci" runat="server" placeholder="Enter Physics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhySci" ControlToValidate="txtPhySci" runat="server" ErrorMessage="*Please Enter Physics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Chemistry:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtCheSci" runat="server" placeholder="Enter Chemistry Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvCheSci" ControlToValidate="txtCheSci" runat="server" ErrorMessage="*Please Enter Chemistry Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSci" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComSci" ControlToValidate="txtComSci" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollArts" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollArts" ControlToValidate="txtRollArts" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameArts" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameArts" ControlToValidate="txtNameArts" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngArts" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngArts" ControlToValidate="txtEngArts" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComArts" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComArts" ControlToValidate="txtComArts" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Psychology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPsyArts" runat="server" placeholder="Enter Psychology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPsyArts" ControlToValidate="txtPsyArts" runat="server" ErrorMessage="*Please Enter Psychology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Philo/Geo:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhiloArts" runat="server" placeholder="Enter Philo/Geo Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhiloArts" ControlToValidate="txtPhiloArts" runat="server" ErrorMessage="*Please Enter Philo/Geo Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujArts" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujArts" ControlToValidate="txtGujArts" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sociology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSocArts" runat="server" placeholder="Enter Sociology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSocArts" ControlToValidate="txtSocArts" runat="server" ErrorMessage="*Please Enter Sociology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Economics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEcoArts" runat="server" placeholder="Enter Economics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEcoArts" ControlToValidate="txtEcoArts" runat="server" ErrorMessage="*Please Enter Economics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sans/Arabic:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaArts" runat="server" placeholder="Enter Sans/Arabic Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaArts" ControlToValidate="txtArSaArts" runat="server" ErrorMessage="*Please Enter Sans/Arabic Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
