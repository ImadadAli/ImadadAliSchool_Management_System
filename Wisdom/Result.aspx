<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master" CodeBehind="Result.aspx.cs" Theme="Theme1" Inherits="Wisdom.Result" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">
  <div>
      
  <center>
    <asp:MultiView ID="MultiView1" runat="server">
        
    
    <asp:View ID="View1" runat="server">    
    <div class="container-fluid" style="background-image: url('Images/result.png'); background-repeat: no-repeat;background-size: cover; padding-top: 5rem;">
        <div class="row justify-content-center">
            <div class="col-sm-5 pt-5 pe-5 align-items-end justify-content-center">
                <div class="p-5 mb-5 rounded" style="background-color: rgba(0, 0, 0, 0.5); box-shadow: 0 0 10px #000;">
                    <div class="text-center pb-4" style="color: #FFFFFF;">
                        <h2>Result</h2>
                    </div>
                    <div style="color: #FFFFFF;">
                        <div class="mb-3">
                            <asp:Label ID="lblResultStandard" runat="server" CssClass="form-label">Standard</asp:Label>
                            <asp:DropDownList ID="ddlResultStandard" runat="server" CssClass="form-select mt-1">
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
                        <div class="mb-3">
                            <asp:Label ID="lblResultRollNumber" runat="server" CssClass="form-label">Roll No.</asp:Label>
                            <asp:TextBox ID="txtResultRollNumber" runat="server" TextMode="Number" CssClass="form-control mt-1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvRoll" ControlToValidate="txtResultRollNumber" runat="server" ErrorMessage="*Please Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3 d-grid pt-3">
                            <asp:Button ID="btnShowResult" runat="server" CssClass="btn btn-success" 
                                Text="Submit" onclick="btnShowResult_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:View>




        <asp:View ID="View2" runat="server">
            <asp:FormView ID="fvFi" runat="server">
            <ItemTemplate>
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:<%#Eval("Class") %>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">HINDI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Hindi") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">G.K.</td>
        <td class="style3" style="border:1px solid black"><%#Eval("GK") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">DRAWING</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Draw") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">PER(%)</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">GRADE</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:FormView>
        </asp:View>




        <asp:View ID="View3" runat="server">
            <asp:FormView ID="fvTh" runat="server">
            
            
            <ItemTemplate>
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
            <tr>
                <td>    
                    <table style="border:5px solid green">
                        <tr>
                            <td>    
                                <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">HINDI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Hindi") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">G.K.</td>
        <td class="style3" style="border:1px solid black"><%#Eval("GK") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">DRAWING</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Draw") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">8</td>
        <td class="style1" style="border:1px solid black;text-align:left">Environment</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Env") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">9</td>
        <td class="style1" style="border:1px solid black;text-align:left">English Grammer</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng_gra") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">PER(%)</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">GRADE</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
        </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:FormView>

        </asp:View>
        


        <asp:View ID="View4" runat="server">
            <asp:FormView ID="fvSi" runat="server">
            
            <ItemTemplate>
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">HINDI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Hindi") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">G.K.</td>
        <td class="style3" style="border:1px solid black"><%#Eval("GK") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">DRAWING</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Draw") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">8</td>
        <td class="style1" style="border:1px solid black;text-align:left">Environment</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Env") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">9</td>
        <td class="style1" style="border:1px solid black;text-align:left">English Grammer</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng_gra") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">10</td>
        <td class="style1" style="border:1px solid black;text-align:left">Arabic/Sanskirt</td>
        <td class="style3" style="border:1px solid black"><%#Eval("ArSa") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">11</td>
        <td class="style1" style="border:1px solid black;text-align:left">Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Sci") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">PER(%)</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">GRADE</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
            </asp:FormView>
        </asp:View>




        <asp:View ID="View5" runat="server">
            <asp:FormView ID="fvEi" runat="server">
            

            <ItemTemplate>
            
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">HINDI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Hindi") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">DRAWING</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Draw") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">Social Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("SS") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">8</td>
        <td class="style1" style="border:1px solid black;text-align:left">English Grammer</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng_gra") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">9</td>
        <td class="style1" style="border:1px solid black;text-align:left">Arabic/Sanskirt</td>
        <td class="style3" style="border:1px solid black"><%#Eval("ArSa") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">10</td>
        <td class="style1" style="border:1px solid black;text-align:left">Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Sci") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Percentage</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Grade</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
            </asp:FormView>
        </asp:View>

        <asp:View ID="View6" runat="server">
            <asp:FormView ID="fvNi" runat="server">
            
            <ItemTemplate>
            
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">HINDI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Hindi") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">DRAWING</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Draw") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">Social Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("SS") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">8</td>
        <td class="style1" style="border:1px solid black;text-align:left">Physical Education</td>
        <td class="style3" style="border:1px solid black"><%#Eval("PE") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">9</td>
        <td class="style1" style="border:1px solid black;text-align:left">Arabic/Sanskirt</td>
        <td class="style3" style="border:1px solid black"><%#Eval("ArSa") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">10</td>
        <td class="style1" style="border:1px solid black;text-align:left">Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Sci") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Percentage</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Grade</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
            </asp:FormView>
    </asp:View>




    <asp:View ID="View7" runat="server">
        <asp:FormView ID="fvTe" runat="server">
        
        <ItemTemplate>
        
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHEMATICS</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Maths") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">GUJARATI</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">Social Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("SS") %></td>
    </tr>     <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">Arabic/Sanskirt</td>
        <td class="style3" style="border:1px solid black"><%#Eval("ArSa") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">Science</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Sci") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Percentage</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Grade</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
        </asp:FormView>
    </asp:View>




    <asp:View ID="View8" runat="server">
        <asp:FormView ID="fvSci" runat="server">
        
        <ItemTemplate>
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("English") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">MATHS/BIO</td>
        <td class="style3" style="border:1px solid black"><%#Eval("MB") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">Physics</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Physics") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">COMPUTER</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">Chemistry</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Chem") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Percentage</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Grade</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
        </asp:FormView>
    </asp:View>





    <asp:View ID="View9" runat="server">
        <asp:FormView ID="fvArts" runat="server">
        
        <ItemTemplate>
        
            <table style="border:2px solid green;margin-top:100px;margin-bottom:100px">
    <tr>
    <td>    
    <table style="border:5px solid green">
    <tr>
    <td>    
    <table style="text-align:center;border:2px solid green;width:700px;height:700px">
    <tr>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="border-radius:50px;" /></td>        
    <th class="style6" style="text-align:center"><p style="color:Blue;font-size:25px;text-align:center;text-decoration:underline">WISDOM ENGLISH SCHOOL, BADARPUR</p>
    <p style="color:Fuchsia;margin-top:0px">Managed by:- Maher education and welfare trust, Badarpur</p></th>
    <td class="style6"><img height="50px" src="Images/Wisdom.jpg" alt="" style="margin-top:0px;border-radius:50px" /></td></tr>
    <tr><td colspan="3"><p style="color:Teal;font-size:25px;text-align:center;text-decoration:underline;margin-top:0px">ANNUAL RESULT SHEET</p></td></tr>
    <tr><td colspan="3" style="margin-left:50px;text-align:center;margin-top:0px">
     <p style="font-weight:bold">
     Student's Name: <%#Eval("Name") %></p></td></tr>
    <tr><td colspan="3" style="margin-top:0px"><p style="font-weight:bold">Standard:
        <%#Eval("Class") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Roll No.:- <%#Eval("Roll_no") %></p></td></tr>    
    <tr><td class="style2" style="border:1px solid black">Sr.No</td>
        <td class="style1" style="border:1px solid black">SUBJECTS</td>
        <td class="style2" style="border:1px solid black">Marks</td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">1</td>
        <td class="style1" style="border:1px solid black;text-align:left">ENGLISH</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eng") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">2</td>
        <td class="style1" style="border:1px solid black;text-align:left">Computer</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Comp") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">3</td>
        <td class="style1" style="border:1px solid black;text-align:left">Pyschology</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Psy") %></td>
    </tr>    
    <tr><td class="style2" style="border:1px solid black">4</td>
        <td class="style1" style="border:1px solid black;text-align:left">Philo./Geo.</td>
        <td class="style3" style="border:1px solid black"><%#Eval("PhGe") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">5</td>
        <td class="style1" style="border:1px solid black;text-align:left">Gujarati</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Guj") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">6</td>
        <td class="style1" style="border:1px solid black;text-align:left">Arabic/Sanskirt</td>
        <td class="style3" style="border:1px solid black"><%#Eval("ArSa") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">7</td>
        <td class="style1" style="border:1px solid black;text-align:left">Sociology</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Socio") %></td>
    </tr>
    <tr><td class="style2" style="border:1px solid black">8</td>
        <td class="style1" style="border:1px solid black;text-align:left">Economics</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Eco") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Obtained Marks</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Obt") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Percentage</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Per") %></td>
    </tr>
    <tr><td class="style1" colspan="2" style="border:1px solid black;text-align:center">Grade</td>
        <td class="style3" style="border:1px solid black"><%#Eval("Grade") %></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </ItemTemplate>
        </asp:FormView>
    </asp:View>




    </asp:MultiView>
    </center>
  </div>  

</asp:Content>
