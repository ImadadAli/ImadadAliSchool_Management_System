<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adMess.aspx.cs" Inherits="Wisdom.adMess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="margin-top:90px;margin-left:600px;color:Black">            
            <table>
            <tr>
            <td align="center">
            <h1>Messages</h1>
            </td>
            </tr>            
            <tr>
            <td style="border:1px;border-style:solid;padding-left:50px;padding-right:50px;padding-top:20px;padding-bottom:20px">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Message" HeaderText="Message" 
                            SortExpression="Message" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB %>" 
                    SelectCommand="SELECT [Name], [Email], [Message] FROM [Contact]">
                </asp:SqlDataSource>
            </td>
            </tr>
            </table>
      </div>

</asp:Content>
