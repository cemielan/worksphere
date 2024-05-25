﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="LoginRecruiter.aspx.cs" Inherits="Worksphere.Views.Employer.LoginRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/LoginRecruiter.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

    <div class="login-head">
        <div class="login-text">
            <a href="../Applicant/LoginApplicant.aspx" class="login-link">Login</a>
        </div>
        
        <div class="recruiter-login-text">
            Recruiter Login
        </div>
    </div>

    <div class="login-detail">
        <div class="login-input">
            <asp:TextBox ID="TbEmail" runat="server" placeholder="Email Address" class="textbox-email"></asp:TextBox>
            <asp:TextBox ID="TbPassword" runat="server" placeholder="Password" class="textbox-password"></asp:TextBox>
            <a href="#" class="forgot-link">Forgot your Password?</a>
            <asp:Button ID="BtnLogin" runat="server" Text="Login" class="button-login"/>
        </div>

        <div class="login-register">
            <p class="register-text">Not Registered</p>
            <p class="feature-text">Search & Apply</p>
            <p class="feature-text">Job Alerts</p>
            <p class="feature-text">Free CV Review</p>
            <asp:Button ID="ButtonRegister" runat="server" Text="Register" class="button-register"/>
        </div>
    </div>

</section>
</asp:Content>
