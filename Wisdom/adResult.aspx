<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adResult.aspx.cs" Inherits="Wisdom.adResult1" %>
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


        <%--First Standard--%>
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
            <asp:Button ID="btnFirst" runat="server" Text="Submit" 
                onclick="btnFirst_Click" /></td>
        </tr>
        </table>
        </asp:View>
    
    
        <%--Second Standard--%>
        <asp:View ID="View3" runat="server">
        
        <table border="2" style="margin-top:30px;padding-bottom:50px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no :-</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSe" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollSe" ControlToValidate="txtRollSe" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSe" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameSe" ControlToValidate="txtNameSe" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSe" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngSe" ControlToValidate="txtEngSe" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsSe" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsSe" ControlToValidate="txtMathsSe" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujSe" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujSe" ControlToValidate="txtGujSe" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiSe" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHindiSe" ControlToValidate="txtHindiSe" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSe" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComSe" ControlToValidate="txtComSe" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGkSe" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGkSe" ControlToValidate="txtGkSe" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawSe" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawSe" ControlToValidate="txtDrawSe" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnSecond" runat="server" Text="Submit" 
                onclick="btnSecond_Click" /></td>
        </tr>
        </table>
        </asp:View>










        <%--Third Standard--%>
    <asp:View ID="View4" runat="server">
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
            <asp:Button ID="btnThird" runat="server" Text="Submit" 
                onclick="btnThird_Click"/></td>
        </tr>
        </table>    
    </asp:View>














    <%--Fourth Standard--%>
    <asp:View ID="View5" runat="server">
    <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollFo" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollFo" ControlToValidate="txtRollFo" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameFo" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameFo" ControlToValidate="txtNameFo" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngFo" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngFo" ControlToValidate="txtEngFo" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsFo" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsFo" ControlToValidate="txtMathsFo" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujFo" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujFo" ControlToValidate="txtGujFo" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHinFo" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHinFo" ControlToValidate="txtHinFo" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComFo" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComFo" ControlToValidate="txtComFo" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKFo" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGKFo" ControlToValidate="txtGKFo" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawFo" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawFo" ControlToValidate="txtDrawFo" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvFo" runat="server" placeholder="Enter Environment Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEnvFo" ControlToValidate="txtEnvFo" runat="server" ErrorMessage="*Please Enter Environment Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraFo" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraFo" ControlToValidate="txtGraFo" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnFour" runat="server" Text="Submit" onclick="btnFour_Click" /></td>
        </tr>
        </table>    
    </asp:View>














    <%--Fourth Standard--%>
    <asp:View ID="View6" runat="server">
    <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollFiv" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollFiv" ControlToValidate="txtRollFiv" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameFiv" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameFiv" ControlToValidate="txtNameFiv" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngFiv" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngFiv" ControlToValidate="txtEngFiv" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsFiv" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsFiv" ControlToValidate="txtMathsFiv" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujFiv" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujFiv" ControlToValidate="txtGujFiv" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHinFiv" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHinFiv" ControlToValidate="txtHinFiv" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComFiv" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComFiv" ControlToValidate="txtComFiv" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKFiv" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGKFiv" ControlToValidate="txtGKFiv" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawFiv" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawFiv" ControlToValidate="txtDrawFiv" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvFiv" runat="server" placeholder="Enter Environment Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEnvFiv" ControlToValidate="txtEnvFiv" runat="server" ErrorMessage="*Please Enter Environment Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraFiv" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraFiv" ControlToValidate="txtGraFiv" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnFive" runat="server" Text="Submit" onclick="btnFive_Click" /></td>
        </tr>
        </table>    
    </asp:View>













    <%--Sixth Standard--%>

        <asp:View ID="View7" runat="server">
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
            <asp:Button ID="btnSix" runat="server" Text="Submit" onclick="btnSix_Click" /></td>
        </tr>
        </table>
    </asp:View>


















    <%--Seven Standard--%>

        <asp:View ID="View8" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollSev" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollSev" ControlToValidate="txtRollSev" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameSev" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameSev" ControlToValidate="txtNameSev" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngSev" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngSev" ControlToValidate="txtEngSev" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Mathematics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMathsSev" runat="server" placeholder="Enter Maths Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMathsSev" ControlToValidate="txtMathsSev" runat="server" ErrorMessage="*Please Enter Maths Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujSev" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujSev" ControlToValidate="txtGujSev" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Hindi:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtHindiSev" runat="server" placeholder="Enter Hindi Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvHindiSev" ControlToValidate="txtHindiSev" runat="server" ErrorMessage="*Please Enter Hindi Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComSev" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComSev" ControlToValidate="txtComSev" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">General Knowledge:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGKSev" runat="server" placeholder="Enter G.K. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGKSev" ControlToValidate="txtGKSev" runat="server" ErrorMessage="*Please Enter G.K. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Drawing:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtDrawSev" runat="server" placeholder="Enter Drawing Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvDrawSev" ControlToValidate="txtDrawSev" runat="server" ErrorMessage="*Please Enter Drawing Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Environment:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEnvSev" runat="server" placeholder="Enter Environment Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEnvSev" ControlToValidate="txtEnvSev" runat="server" ErrorMessage="*Please Enter Environment Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Arabic/Sanskrit:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaSev" runat="server" placeholder="Enter Ara/Sans Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaSev" ControlToValidate="txtArSaSev" runat="server" ErrorMessage="*Please Enter Ara/Sans Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English Grammer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGraSev" runat="server" placeholder="Enter English Gra. Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGraSev" ControlToValidate="txtGraSev" runat="server" ErrorMessage="*Please Enter English Gra. Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Science:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSciSev" runat="server" placeholder="Enter Science Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSciSev" ControlToValidate="txtSciSev" runat="server" ErrorMessage="*Please Enter Science Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnSeven" runat="server" Text="Submit" onclick="btnSeven_Click" /></td>
        </tr>
        </table>
    </asp:View>

























    <%--Eight Standard--%>
    

    <asp:View ID="View9" runat="server">
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

























    <%--Nine Standard--%>


    <asp:View ID="View10" runat="server">
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






























    <%--Ten Standard--%>



    <asp:View ID="View11" runat="server">
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





















    <%--11th Arts--%>


    <asp:View ID="View12" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollEArts" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollEArts" ControlToValidate="txtRollEArts" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameEArts" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameEArts" ControlToValidate="txtNameEArts" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngEArts" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngEArts" ControlToValidate="txtEngEArts" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComEArts" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComEArts" ControlToValidate="txtComEArts" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Psychology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPsyEArts" runat="server" placeholder="Enter Psychology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPsyEArts" ControlToValidate="txtPsyEArts" runat="server" ErrorMessage="*Please Enter Psychology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Philo/Geo:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhiloEArts" runat="server" placeholder="Enter Philo/Geo Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhiloEArts" ControlToValidate="txtPhiloEArts" runat="server" ErrorMessage="*Please Enter Philo/Geo Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujEArts" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujEArts" ControlToValidate="txtGujEArts" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sociology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSocEArts" runat="server" placeholder="Enter Sociology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSocEArts" ControlToValidate="txtSocEArts" runat="server" ErrorMessage="*Please Enter Sociology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Economics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEcoEArts" runat="server" placeholder="Enter Economics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEcoEArts" ControlToValidate="txtEcoEArts" runat="server" ErrorMessage="*Please Enter Economics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sans/Arabic:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaEArts" runat="server" placeholder="Enter Sans/Arabic Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaEArts" ControlToValidate="txtArSaEArts" runat="server" ErrorMessage="*Please Enter Sans/Arabic Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnEArts" runat="server" Text="Submit" 
                onclick="btnEArts_Click" /></td>
        </tr>
        </table>
    </asp:View>




























    <%--12th Arts--%>


    <asp:View ID="View13" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTArts" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollTArts" ControlToValidate="txtRollTArts" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTArts" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameTArts" ControlToValidate="txtNameTArts" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTArts" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngTArts" ControlToValidate="txtEngTArts" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTArts" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComTArts" ControlToValidate="txtComTArts" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Psychology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPsyTArts" runat="server" placeholder="Enter Psychology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPsyTArts" ControlToValidate="txtPsyTArts" runat="server" ErrorMessage="*Please Enter Psychology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Philo/Geo:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhiloTArts" runat="server" placeholder="Enter Philo/Geo Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhiloTArts" ControlToValidate="txtPhiloTArts" runat="server" ErrorMessage="*Please Enter Philo/Geo Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Gujarati:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtGujTArts" runat="server" placeholder="Enter Gujarati Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvGujTArts" ControlToValidate="txtGujTArts" runat="server" ErrorMessage="*Please Enter Gujarati Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sociology:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtSocTArts" runat="server" placeholder="Enter Sociology Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvSocTArts" ControlToValidate="txtSocTArts" runat="server" ErrorMessage="*Please Enter Sociology Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Economics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEcoTArts" runat="server" placeholder="Enter Economics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEcoTArts" ControlToValidate="txtEcoTArts" runat="server" ErrorMessage="*Please Enter Economics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Sans/Arabic:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtArSaTArts" runat="server" placeholder="Enter Sans/Arabic Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvArSaTArts" ControlToValidate="txtArSaTArts" runat="server" ErrorMessage="*Please Enter Sans/Arabic Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnTArts" runat="server" Text="Submit" onclick="btnTArts_Click" /></td>
        </tr>
        </table>
    </asp:View>



























    <%--11th Science--%>


    <asp:View ID="View14" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollESci" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollESci" ControlToValidate="txtRollESci" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameESci" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameESci" ControlToValidate="txtNameESci" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngESci" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngESci" ControlToValidate="txtEngESci" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Maths/Bio:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMBESci" runat="server" placeholder="Enter Maths/Bio Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMBESci" ControlToValidate="txtMBESci" runat="server" ErrorMessage="*Please Enter Maths/Bio Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Physics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhyESci" runat="server" placeholder="Enter Physics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhyESci" ControlToValidate="txtPhyESci" runat="server" ErrorMessage="*Please Enter Physics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Chemistry:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtCheESci" runat="server" placeholder="Enter Chemistry Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvCheESci" ControlToValidate="txtCheESci" runat="server" ErrorMessage="*Please Enter Chemistry Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComESci" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComESci" ControlToValidate="txtComESci" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnESci" runat="server" Text="Submit" onclick="btnESci_Click" /></td>
        </tr>
        </table>
    </asp:View>




























    <%--11th Science--%>


    <asp:View ID="View15" runat="server">
        <table border="2" style="margin-top:30px">
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
            <h3>Result</h3>
        </td></tr>   
        <tr><td style="border:2px solid black;text-align:center">Roll no:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtRollTSci" runat="server" placeholder="Enter Roll No."></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvRollTSci" ControlToValidate="txtRollTSci" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Name:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtNameTSci" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvNameTSci" ControlToValidate="txtNameTSci" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">English:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtEngTSci" runat="server" placeholder="Enter English Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvEngTSci" ControlToValidate="txtEngTSci" runat="server" ErrorMessage="*Please Enter English Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Maths/Bio:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtMBTSci" runat="server" placeholder="Enter Maths/Bio Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvMBTSci" ControlToValidate="txtMBTSci" runat="server" ErrorMessage="*Please Enter Maths/Bio Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Physics:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtPhyTSci" runat="server" placeholder="Enter Physics Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvPhyTSci" ControlToValidate="txtPhyTSci" runat="server" ErrorMessage="*Please Enter Physics Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>                
        <tr><td style="border:2px solid black;text-align:center">Chemistry:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtCheTSci" runat="server" placeholder="Enter Chemistry Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvCheTSci" ControlToValidate="txtCheTSci" runat="server" ErrorMessage="*Please Enter Chemistry Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td style="border:2px solid black;text-align:center">Computer:</td>
            <td style="border:2px solid black;padding: 10px 10px 10px 20px"><br />
            <asp:TextBox ID="txtComTSci" runat="server" placeholder="Enter Computer Marks"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvComTSci" ControlToValidate="txtComTSci" runat="server" ErrorMessage="*Please Enter Computer Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 10px 20px">
            <asp:Button ID="btnTSci" runat="server" Text="Submit" onclick="btnTSci_Click" /></td>
        </tr>
        </table>
    </asp:View>





        </asp:MultiView>
</center>
</div>
</asp:Content>
