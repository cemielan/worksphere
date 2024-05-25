<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="ApplicantRegister.aspx.cs" Inherits="Worksphere.Views.Applicant.ApplicantRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Applicant/ApplicantRegister.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="container">

    <h2>Sign up as Job Seeeker</h2>

     <div class="register-detail">
         <h3>Register</h3>
         <div class="name-age-input">
             <asp:TextBox ID="TbName" runat="server" placeholder="Name"></asp:TextBox>
             <asp:TextBox ID="TbAge" runat="server" placeholder="Age"></asp:TextBox>
         </div>
         <asp:TextBox ID="TbEmail" runat="server" placeholder="Work Email Address"></asp:TextBox>
         <asp:TextBox ID="TbPassword" runat="server" placeholder="Create Password (must contain at least 5 characters"></asp:TextBox>
         <asp:TextBox ID="TbPhoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
         <asp:TextBox ID="TbDescription" runat="server" placeholder="Describe Yourself"></asp:TextBox>
         <asp:Button ID="BtnUpload" runat="server" Text="Upload Your Profile Picture" class="button-upload"/>
         <asp:Button ID="BtnRegister" runat="server" Text="Register" class="button-register"/>
     </div>

 </section>
</asp:Content>
