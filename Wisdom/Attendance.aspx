<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master"
    CodeBehind="Attendance.aspx.cs" Theme="Theme1" Inherits="Wisdom.Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server">
<style type="text/css">
        .try
        {
            text-align:center;    
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
    
    <div class="container-fluid" style="background-image: url('Images/attendance.jpg');
        background-repeat: no-repeat; background-size: cover; padding-top: 5rem;">
        <div class="row justify-content-center">
            <div class="col-sm-5 pt-5 pe-5 align-items-end justify-content-center">
                <div class="p-5 mb-5 rounded" style="background-color: rgba(0, 0, 0, 0.5); box-shadow: 0 0 10px #000;">
                    <div class="text-center pb-4" style="color: #FFFFFF;">
                        <h2>
                            Attendance</h2>
                    </div>
                    <div style="color: #FFFFFF;">
                        <div class="mb-3">
                            <asp:Label ID="lblAttendanceStandard" runat="server" CssClass="form-label">Standard</asp:Label>
                            <asp:DropDownList ID="ddlAttendanceStandard" runat="server" CssClass="form-select mt-1">
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
                        </div>
                        <div class="mb-3 d-grid pt-3">
                            <asp:Button ID="btnShowAttendance" runat="server" CssClass="btn btn-success" 
                                Text="Submit" onclick="btnShowAttendance_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>        
        </asp:View>


        <asp:View ID="View2" runat="server">            
            <div style="margin-top:100px">
            <center>
            <asp:GridView ID="gvAtten" runat="server" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="396px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            </center>
            </div>

        <%--<div style="margin-top:150px;padding-bottom:80px;color:Black;text-align:center">
            <center>
             <h1><asp:Label ID="lblStd" runat="server" Text='<%# Eval("Class") %>'></asp:Label></h1>          
       </div> 
--%>       </asp:View>

























        <%--<asp:View ID="View2" runat="server">
        <div style="margin-top:150px;padding-bottom:80px">
        <center>
        <table border="2px" style="height:100%;width:40%;text-align:center">
            <tr>
                <th style="border:2px solid black" colspan="2">
                <h1>Attendance</h1>
                </th>
            </tr>
            <tr>
                <td align="center">
                    <h3>Standard:-&nbsp<asp:Label ID="lblStd" runat="server"></asp:Label></h3>
                </td>
                <td align="center">    
                    <h3>Date:-&nbsp<asp:Label ID="lblDate" runat="server"></asp:Label></h3>
                </td>
            </tr>
            <tr>
            <td style="border:2px solid black" colspan="2">
            <center>
                <asp:GridView ID="gvAtten" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" Width="200px" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Width="200px" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" Width="200px" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Width="200px" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" Width="200px" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" Width="200px" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" Width="200px" />
                </asp:GridView>
                </center>
            </td>
            </tr>
        </table>
        </center>
        </div>
        </asp:View>--%>
        
    </asp:MultiView>
</asp:Content>
