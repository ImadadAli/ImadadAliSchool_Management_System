<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master" CodeBehind="Admission.aspx.cs" Theme="Theme1" Inherits="Wisdom.Admission" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server"> 
</asp:Content> 

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">  

<div class="container-fluid" style="background-image: url('Images/admission.jpg');background-repeat:no-repeat;background-size:cover;padding-top:5rem;">
    <div class="row justify-content-center">
        <div class="col-sm-5 pt-5 pe-5 align-items-end justify-content-center">
            <div class="p-5 mb-5 rounded" style="background-color: rgba(0, 0, 0, 0.5);box-shadow: 0 0 10px #000;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server"> 
                        <div class="text-center pb-4" style="color:#FFFFFF;">
                            <h2>Admission Form</h2>
                            <h5>Personal Information</h5>
                        </div>
                        <div style="color:#FFFFFF;">
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionClass" runat="server" CssClass="form-label">Class</asp:Label>
                                <asp:DropDownList ID="ddlAdmissionClass" runat="server" CssClass="form-select mt-1">
                                    <asp:ListItem>Select Class</asp:ListItem>
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
                                <asp:RequiredFieldValidator ID="rfvClass" ControlToValidate="ddlAdmissionClass" runat="server" ErrorMessage="*Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionName" runat="server" CssClass="form-label">Name</asp:Label>
                                <asp:TextBox ID="txtAdmissionName" runat="server" placeholder="Enter your name" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtAdmissionName" runat="server" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionMobile" runat="server" CssClass="form-label">Mobile No.</asp:Label>
                                <asp:TextBox ID="txtAdmissionMobile" runat="server" TextMode="Number" placeholder="Enter your mobile number"  CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvMobile" ControlToValidate="txtAdmissionMobile" runat="server" ErrorMessage="*Please Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionAddress" runat="server" CssClass="form-label">Address</asp:Label>
                                <asp:TextBox ID="txtAdmissionAddress" runat="server" placeholder="Enter your address" TextMode="MultiLine" Height="60" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate="txtAdmissionAddress" runat="server" ErrorMessage="*Please Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionEmail" runat="server" CssClass="form-label">Email</asp:Label>
                                <asp:TextBox ID="txtAdmissionEmail" runat="server" placeholder="Enter your email" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtAdmissionEmail" runat="server" ErrorMessage="*Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator> 
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionDOB" runat="server" CssClass="form-label">Date of Birth</asp:Label>
                                <asp:TextBox ID="txtAdmissionDOB" runat="server" TextMode="Date" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvDob" ControlToValidate="txtAdmissionDOB" runat="server" ErrorMessage="*Please Enter BirthDate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionGender" runat="server" CssClass="form-label">Gender</asp:Label>
                                <asp:DropDownList ID="ddlAdmissionGender" runat="server" CssClass="form-select mt-1">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvGender" ControlToValidate="ddlAdmissionGender" runat="server" ErrorMessage="*Please Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3 d-grid pt-3">
                                <asp:Button ID="btnSecond" runat="server" CssClass="btn btn-success" Text="Next" onclick="btnSecond_Click"></asp:Button> 
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="text-center pb-4" style="color:#FFFFFF;">
                            <h2>Admission Form</h2>
                            <h5>Parent's Information</h5>
                        </div>
                        <div style="color:#FFFFFF;">
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionFatherName" runat="server" CssClass="form-label">Father's Name</asp:Label>
                                <asp:TextBox ID="txtAdmissionFatherName" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFname" ControlToValidate="txtAdmissionFatherName" runat="server" ErrorMessage="*Please Enter Father's Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionMotherName" runat="server" CssClass="form-label">Mother's Name</asp:Label>
                                <asp:TextBox ID="txtAdmissionMotherName" runat="server"  CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvMname" ControlToValidate="txtAdmissionMotherName" runat="server" ErrorMessage="*Please Enter Mother's Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionFatherProfession" runat="server" CssClass="form-label">Father's Profession</asp:Label>
                                <asp:TextBox ID="txtAdmissionFatherProfession" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFpro" ControlToValidate="txtAdmissionFatherProfession" runat="server" ErrorMessage="*Please Enter Father's Profession" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionMotherProfession" runat="server" CssClass="form-label">Mother's Profession</asp:Label>
                                <asp:TextBox ID="txtAdmissionMotherProfession" runat="server" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvMpro" ControlToValidate="txtAdmissionMotherProfession" runat="server" ErrorMessage="*Please Enter Mother's Profession" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>  
                            <div class="mb-3 d-grid pt-3">
                                <asp:Button ID="btnThird" runat="server" CssClass="btn btn-success" Text="Next" onclick="btnThird_Click"></asp:Button> 
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="text-center pb-4" style="color:#FFFFFF;">
                            <h2>Admission Form</h2>
                            <h5>Educational Information</h5>
                        </div>
                        <div style="color:#FFFFFF;">
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionSeatNumber" runat="server" CssClass="form-label">10th Seat No.</asp:Label>
                                <asp:TextBox ID="txtAdmissionSeatNumber" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvTnumber" ControlToValidate="txtAdmissionSeatNumber" runat="server" ErrorMessage="*Please Enter 10th Seat Number" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionMarks" runat="server" CssClass="form-label">10th Marks</asp:Label>
                                <asp:TextBox ID="txtAdmissionMarks" runat="server" TextMode="Number" CssClass="form-control mt-1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="rfvMarks" ControlToValidate="txtAdmissionMarks" runat="server" ErrorMessage="*Please Enter 10th Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="lblAdmissionPercentage" runat="server" CssClass="form-label">10th Percentage</asp:Label>
                                <asp:TextBox ID="txtAdmissionPercentage" runat="server" CssClass="form-control mt-1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPer" ControlToValidate="txtAdmissionPercentage" runat="server" ErrorMessage="*Please Enter 10th Percentage" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
		                    <div class="mb-3 d-grid pt-3">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit" onclick="btnSubmit_Click"></asp:Button> 
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <div class="d-flex align-items-center justify-content-center">
                            <img src="Images/Success.png" class="img-responsive img-fluid" alt="" width="200px" height="100px"  />
                        </div>
                        <div class="text-center" style="color:#FFFFFF;font-size:20px;">Thanks for submitting the form...</div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
</div>

</asp:Content> 

<%--<asp:Content ID="Content3" ContentPlaceHolderID="MainFooter" runat="server">  

</asp:Content>--%>
