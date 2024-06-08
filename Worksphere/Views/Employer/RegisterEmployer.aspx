<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="RegisterEmployer.aspx.cs" Inherits="Worksphere.Views.Employer.RegisterEmployer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/RegisterEmployer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

        <h2>Sign up as Employer</h2>

        <div class="register-detail">
            <h4>Register</h4>

            <div class="input-container">
                <asp:TextBox ID="TbCompanyName" runat="server" placeholder="Company Name" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblCompanyName" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbEmail" runat="server" placeholder="Company Email Address" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblEmail" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbName" runat="server" placeholder="Name" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblName" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbPassword" runat="server" placeholder="Create Password (must contain at least 5 characters" CssClass="tb-input" TextMode="Password"></asp:TextBox>
                <asp:Label ID="LblPass" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbPhoneNumber" runat="server" placeholder="Phone Number" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblPhoneNumber" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbAddress" runat="server" placeholder="Company Address" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblAddress" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbType" runat="server" placeholder="Company Type" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblType" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <asp:Button ID="BtnUpload" runat="server" Text="Upload Your Company Logo" CssClass="button-upload" />
            <asp:Button ID="BtnRegister" runat="server" Text="Register" class="button-register" OnClick="BtnRegister_Click" />
        </div>

        <asp:Button ID="BtnBack" runat="server" Text="Back to Login" class="button-back" OnClick="BtnBack_Click" />

    </section>
</asp:Content>
