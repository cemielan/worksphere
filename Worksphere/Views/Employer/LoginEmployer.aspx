<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginEmployer.aspx.cs" Inherits="Worksphere.Views.Employer.LoginEmployer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Style/Employer/LoginRecruiter.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="container">
                <div class="login-head">
                    <div class="login-text">
                        <a href="../Applicant/ApplicantLogin.aspx" class="login-link">Login</a>
                    </div>

                    <div class="recruiter-login-text">
                        Recruiter Login
                    </div>
                </div>
                <div class="login-detail">
                    <div class="login-input">
                        <asp:TextBox ID="TbEmail" runat="server" placeholder="Email Address" class="textbox-email"></asp:TextBox>
                        <asp:TextBox ID="TbPassword" runat="server" placeholder="Password" class="textbox-password" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="LblError" runat="server" Text="" CssClass="label-error"></asp:Label>
                        <a href="#" class="forgot-link">Forgot your Password?</a>
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" class="button-login" OnClick="BtnLogin_Click" />
                    </div>

                    <div class="login-register">
                        <p class="register-text">Not Registered?</p>
                        <p class="feature-text">Search in CV-Library</p>
                        <p class="feature-text">Advertise</p>
                        <p class="feature-text">Customer Service</p>
                        <asp:Button ID="ButtonRegister" runat="server" Text="Register" class="button-register" OnClick="ButtonRegister_Click" />
                    </div>
                </div>

            </section>
        </div>
    </form>
</body>
</html>
