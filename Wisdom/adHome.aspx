<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adHome.aspx.cs" Inherits="Wisdom.adHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
<h1 style="margin-top:50px;margin-left:638px;color:Black;font-weight:bold">DASHBOARD</h1>
</div>
<div class="bx" style="margin-top:25px;margin-left:350px;">
    <h1 style="margin-top:20px;margin-left:60px;color:Black"><asp:Label ID="Label1" runat="server" ForeColor="White" Text="100"></asp:Label></h1>    
	
    <div class="inner" style="margin-top:30px;margin-left:3px">
    <p style="color:White;margin-left:15px;margin-top:8px;font-size:24px">Total Students</p>
    </div>
</div>

<div class="bx" style="margin-top:25px;margin-left:650px;">
    <h1 style="margin-top:20px;margin-left:75px;color:Black"><asp:Label ID="Label2" runat="server" ForeColor="White" Text="20"></asp:Label></h1>
    
    <div class="inner" style="margin-top:30px;margin-left:3px">
    
    <p style="color:White;margin-left:20px;margin-top:8px;font-size:24px">Total Teacher</p>
    
    </div>
</div>

<div class="bx" style="margin-top:25px;margin-left:950px;">
    <h1 style="margin-top:20px;margin-left:30px;color:Black"><asp:Label ID="Label3" runat="server" ForeColor="White" Text="100000"></asp:Label></h1>
    
    <div class="inner" style="margin-top:30px;margin-left:3px">
    
    <p style="color:White;margin-left:15px;margin-top:8px;font-size:24px">Total Revenue</p>
    
    </div>
</div>

<div class="bx" style="margin-top:280px;margin-left:350px;">
    <h1 style="margin-top:20px;margin-left:40px;color:Black"><asp:Label ID="Label4" ForeColor="White" runat="server" Text="40000"></asp:Label></h1>
    
    <div class="inner" style="margin-top:30px;margin-left:3px">
    
    <p style="color:White;margin-left:12px;margin-top:8px;font-size:24px">Total Expenses</p>
    
    </div>
</div>

<div class="bx" style="margin-top:280px;margin-left:650px;">
    <h1 style="margin-top:20px;margin-left:75px;color:Black"><asp:Label ForeColor="White" ID="Label5" runat="server" Text="15"></asp:Label></h1>    
	    
    
    <div class="inner" style="margin-top:30px;margin-left:3px">
    <p style="color:White;margin-left:25px;margin-top:8px;font-size:24px">Total Awards</p>
    </div>
</div>

<div class="bx" style="margin-top:280px;margin-left:950px;">
    <h1 style="margin-top:20px;margin-left:90px;color:Black"><asp:Label ForeColor="White" ID="lblMess" runat="server"></asp:Label></h1>
    
    <div class="inner" style="margin-top:30px;margin-left:3px">
    
    <p style="color:White;margin-left:15px;margin-top:8px;font-size:24px">Total Message</p>
    
    </div>
</div>

</asp:Content>
