<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master" CodeBehind="Contact.aspx.cs" Theme="Theme1" Inherits="Wisdom.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server">

</asp:Content> 

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">  
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
    
    
    <div class="bg-image" style="background-image: url('Images/contactUs.jpg');background-repeat:no-repeat;background-size:cover;padding-top:5rem;">
        <div class="container-fluid">
            <div class="row justify-content-end">
                <div class="col-sm-5 pt-5 pe-5 align-items-end">
                    <div class="shadow p-5 mb-5 bg-body rounded">
                        <div class="text-center pb-4">
                            <h2>Contact Us</h2>
                        </div>
                        <div>
                            <div class="mb-3">
                                <asp:Label ID="lblContactUsName" runat="server" CssClass="form-label">Name</asp:Label>
                                <asp:TextBox ID="txtContactUsName" runat="server" placeholder="Enter your name" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtContactUsName" runat="server" ErrorMessage="*Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblContactUsEmail" runat="server" CssClass="form-label">Email</asp:Label>
                                <asp:TextBox ID="txtContactUsEmail" runat="server" TextMode="Email" placeholder="Enter your Email" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtContactUsEmail" runat="server" ErrorMessage="*Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblContactUsMessage" runat="server" CssClass="form-label">Message</asp:Label>
                                <asp:TextBox ID="txtContactUsMessage" runat="server" TextMode="MultiLine" Height="100" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMessage" ControlToValidate="txtContactUsMessage" runat="server" ErrorMessage="*Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator> 
                            </div>
                            <div class="mb-3">
                                <asp:Button ID="btnContactUsSubmit" runat="server" CssClass="btn btn-success" 
                                    Text="Submit" onclick="btnContactUsSubmit_Click"></asp:Button> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:View>
    
    <asp:View ID="View2" runat="server">
    <div class="container-fluid" style="margin-top:70px">
    <div class="row justify-content-center">
        <div class="col-sm-5 pt-5 pe-5 align-items-end justify-content-center">
            <div class="p-5 mb-5 rounded" style="background-color: rgba(0, 0, 0, 0.5);box-shadow: 0 0 10px #000;">
                    <div class="shadow p-5 mb-5 bg-body rounded">
    <div class="d-flex align-items-center justify-content-center">
                            <img src="Images/Success.png" class="img-responsive img-fluid" alt="" width="200px" height="100px"  />
                        </div>
                        <div class="text-center" style="color:Black;font-size:20px;">Thanks for submitting the form...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:View>
    </asp:MultiView>
</asp:Content> 

