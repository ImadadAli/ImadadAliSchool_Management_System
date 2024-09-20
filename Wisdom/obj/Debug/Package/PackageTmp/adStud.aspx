<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adStud.aspx.cs" Inherits="Wisdom.adStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="text-align:center;margin-top:90px">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" 
            EmptyDataText="No records has been added." CellPadding="3" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellSpacing="2">
<Columns>
    <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Name</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="300px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Email" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Email</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="300px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Class" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Class</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblClass" runat="server" Text='<%# Eval("Class") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtClass" runat="server" Text='<%# Eval("Class") %>'></asp:TextBox>
        </EditItemTemplate>
        <ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Mobile Number" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Mobile Number</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblMnum" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtMnum" runat="server" Text='<%# Eval("Mobile") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Birth Date" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Birth Date</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblBirth" runat="server" Text='<%# Eval("BirthDate") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtBirth" runat="server" Text='<%# Eval("BirthDate") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Address" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Address</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Gender" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
        <HeaderTemplate>
            <p style="text-align:center">Gender</p>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtGender" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
    </asp:CommandField>
</Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="text-align:center" style="border-collapse: collapse">
<tr>
    <td style="width: 150px">
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Email:<br />
        <asp:TextBox ID="txtEmail" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Class:<br />
        <asp:TextBox ID="txtClass" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Mobile Number:<br />
        <asp:TextBox ID="txtMnum" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        BirthDate:<br />
        <asp:TextBox ID="txtBirth" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Address:<br />
        <asp:TextBox ID="txtAddress" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Gender:<br />
        <asp:TextBox ID="txtGender" runat="server" Width="140" />
    </td>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>
    </center>
    </div>

</asp:Content>
