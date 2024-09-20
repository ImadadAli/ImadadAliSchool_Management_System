<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master"
    CodeBehind="Login.aspx.cs" Theme="Theme1" Inherits="Wisdom.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server">

<style type="text/css">

#PageBody_lnkForgotPassword
{
    text-decoration:none;
    }
    .BackToLogin
    {
        text-decoration:none;
        }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">
    <div class="bg-image" style="background-image: url('Images/add.jpg'); background-repeat: no-repeat;
        background-size: cover; padding-top: 5rem;">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-sm-5 pt-5 pe-5 align-items-end">
                    <div class="shadow p-5 mb-5 bg-body rounded">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div class="text-center pb-4">
                                    <h2>Login Form</h2>
                                </div>
                                <div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblLoginUserName" runat="server" CssClass="form-label">Username</asp:Label>
                                        <asp:TextBox ID="txtLoginUserName" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblLoginPassword" runat="server" CssClass="form-label">Password</asp:Label>
                                        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-8">
                                            <div class="mb-3 form-check">
                                                <asp:CheckBox ID="chkterm" class="form-check-input" runat="server" />
                                                <label class="form-check-label" for="flexCheckDefault">
                                                    Agree with <a href="terms.aspx" style="text-decoration:none;">Terms & Conditions</a>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-4 text-end">
                                            <div class="mb-3">
                                                <asp:LinkButton ID="lnkForgotPassword" runat="server" 
                                                    onclick="lnkForgotPassword_Click">Forgot Password?</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3 d-grid pt-3">
                                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success" Text="Login" onclick="btnLogin_Click">
                                        </asp:Button>
                                    </div>
                                    <div class="mb-3 d-grid">
                                        <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-success" Text="Sign Up" onclick="btnSignUp_Click">
                                        </asp:Button>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="text-center pb-4">
                                    <h2>
                                        Sign Up Form</h2>
                                </div>
                                <div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblRegisterName" runat="server" CssClass="form-label">Name</asp:Label>
                                        <asp:TextBox ID="txtRegisterName" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblRegisterEmail" runat="server" CssClass="form-label">Email</asp:Label>
                                        <asp:TextBox ID="txtRegisterEmail" runat="server" TextMode="Email" placeholder="abc@gmail.com" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblRegisterUserName" runat="server" CssClass="form-label">Username</asp:Label>
                                        <asp:TextBox ID="txtRegisterUserName" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblRegisterPassword" runat="server" CssClass="form-label">Password</asp:Label>
                                        <asp:TextBox ID="txtRegisterPassword" runat="server" placeholder="**********" TextMode="Password" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblRegisterConfirmPassword" runat="server" CssClass="form-label">Confirm Password</asp:Label>
                                        <asp:TextBox ID="txtRegisterConfirmPassword" runat="server" placeholder="**********"  TextMode="Password" CssClass="form-control mt-1"></asp:TextBox>
                                        <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Password Doesn't Match" ControlToValidate="txtRegisterConfirmPassword" ControlToCompare="txtRegisterPassword" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                    <div class="mb-3 d-grid pt-3">
                                        <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-success" Text="SignUp" onclick="btnRegister_Click">
                                        </asp:Button>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="text-center pb-4">
                                    <h3>Forgot your password?</h3>
                                    <p>Enter your email and we'll send you a link to get back into your account.</p>
                                </div>
                                <div>
                                    <div class="mb-3">
                                        <asp:Label ID="lblForgotPasswordEmail" runat="server" CssClass="form-label">Email</asp:Label>
                                        <asp:TextBox ID="txtForgotPasswordEmail" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                    </div>
                                    <div class="mb-3 d-grid pt-3">
                                        <asp:Button ID="btnForgotPassword" runat="server" 
                                            CssClass="btn btn-success emailSentAlert" Text="Send Request" 
                                            onclick="btnForgotPassword_Click">
                                        </asp:Button>
                                    </div>
                                    <div class="mb-3">
                                        <asp:LinkButton ID="lnkBackToLogin" runat="server" CssClass="BackToLogin" 
                                            onclick="lnkBackToLogin_Click"><i class="bi bi-arrow-left me-3"></i>Back to login</asp:LinkButton>
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

