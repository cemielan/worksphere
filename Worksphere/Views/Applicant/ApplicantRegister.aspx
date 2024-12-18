﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="ApplicantRegister.aspx.cs" Inherits="Worksphere.Views.Applicant.ApplicantRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Applicant/ApplicantRegister.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

        <h2>Sign up as Job Seeker</h2>

        <div class="register-detail">
            <h4>Register</h4>
            <div class="name-age-input">

                <div class="name-input">
                    <asp:TextBox ID="TbName" runat="server" placeholder="Name" CssClass="tb-name"></asp:TextBox>
                    <asp:Label ID="LblName" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="age-input">
                    <asp:TextBox ID="TbAge" runat="server" placeholder="Age" CssClass="tb-age"></asp:TextBox>
                    <asp:Label ID="LblAge" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbEmail" runat="server" placeholder="Work Email Address" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblEmail" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbPassword" runat="server" placeholder="Create Password (must contain at least 5 characters" CssClass="tb-input" TextMode="Password"></asp:TextBox>
                <asp:Label ID="LblPassword" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbPhoneNumber" runat="server" placeholder="Phone Number" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblPhoneNumber" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbDescription" runat="server" placeholder="Describe Yourself" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblDescription" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <asp:Button ID="BtnUpload" runat="server" Text="Upload Your Profile Picture" CssClass="button-upload" OnClick="BtnUpload_Click" />
            <asp:Button ID="BtnRegister" runat="server" Text="Register" class="button-register" OnClick="BtnRegister_Click" />
        </div>

        <asp:Button ID="BtnBack" runat="server" Text="Back to Login" class="button-back" OnClick="BtnBack_Click" />
    </section>
</asp:Content>
