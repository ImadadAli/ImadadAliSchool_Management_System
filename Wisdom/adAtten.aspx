<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adAtten.aspx.cs" Inherits="Wisdom.adAtten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>   
    <center>
    <h1 style="margin-top:50px;font-size:20px;color:Green;margin-left:450px"><asp:Label ID="lblMess" runat="server"></asp:Label></h1> 
        <table border="2" style="margin-top:100px">
            <tr>
                <td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 0px 10px 0px">
                    <h3>Attendance</h3>
                </td>
            </tr>
            <tr>
                <td style="border:2px solid black;padding: 10px 10px 10px 20px">
                    <asp:Label ID="lblDate" runat="server" CssClass="form-label">Date:-</asp:Label>
                </td>
                <td class="std" style="border:2px solid black;padding: 10px 10px 10px 20px">
                            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control mt-1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDate" ControlToValidate="txtDate" runat="server" ErrorMessage="*Please Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="rfvClass" ControlToValidate="txtDate" runat="server" ErrorMessage="*Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                <td style="border:2px solid black;padding: 10px 10px 10px 20px">
                    <asp:Label ID="lblResultRollNumber" runat="server" CssClass="form-label">Roll No.:-</asp:Label>
                </td>
                <td class="std" style="border:2px solid black;padding: 10px 10px 10px 20px">
                            <asp:TextBox ID="txtResultRollNumber" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvRoll" ControlToValidate="txtResultRollNumber" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 10px 0px 20px" class="std">
                <center>
                    <asp:RadioButtonList ID="rbAtten" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Present</asp:ListItem>
                        <asp:ListItem>Absent</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvStatus" ControlToValidate="rbAtten" runat="server" ErrorMessage="*Please Enter Status" ForeColor="Red"></asp:RequiredFieldValidator>
                </center>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;border:2px solid black;padding: 10px 30px 10px 20px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />                    
                </td>
            </tr>
        </table>
    </center>
</div>

</asp:Content>
