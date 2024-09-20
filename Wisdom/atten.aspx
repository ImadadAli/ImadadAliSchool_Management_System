<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="atten.aspx.cs" Inherits="Wisdom.atten" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .try
        {
            text-align:center;    
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:DropDownList ID="ddlStandard" runat="server">
                                <asp:ListItem>Select Standard</asp:ListItem>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" />
            </asp:View>
            
        <asp:View ID="View2" runat="server">            
               <asp:GridView ID="gvAtten" runat="server" AutoGenerateColumns="false">
                    <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" HeaderStyle-HorizontalAlign="Center" DataFormatString="{0:d}" ItemStyle-Width="100px" ItemStyle-Font-Size="20px" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="Roll_no" HeaderText="Roll_no" ItemStyle-Font-Size="20px" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="Class" HeaderText="Class" ItemStyle-Font-Size="20px" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" />
                        <asp:TemplateField HeaderText="Attendance">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>' Font-Size="20px" Width="100px" CssClass="try"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
       </asp:View>
        </asp:MultiView>
        </center>
    </div>
    </form>
</body>
</html>
