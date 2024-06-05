<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="AddJob.aspx.cs" Inherits="Worksphere.Views.Employer.AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/AddJob.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

        <h2>Add New Job</h2>

        <div class="addnewjob-detail">

            <div class="input-container">
                <asp:TextBox ID="TbJobName" runat="server" placeholder="Job Name" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblJobName" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>


            <div class="input-container">
                <asp:TextBox ID="TbJobDesc" runat="server" placeholder="Job Description" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblJobDesc" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="jobtype-salary-input">
                <div>
                    <asp:DropDownList ID="DDLJobType" placeholder="Job Type" runat="server" CssClass="ddl-input">
                        <asp:ListItem Value="WNI">WNI</asp:ListItem>
                        <asp:ListItem Value="WNA">WNA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="LblJobType" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div>
                    <asp:TextBox ID="TbSalary" runat="server" placeholder="Salary" CssClass="salary-input"></asp:TextBox>
                    <asp:Label ID="LblSalary" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbKeyword" runat="server" placeholder="Keyword" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblKeyWord" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:DropDownList ID="DDLJobCategory" placeholder="Job Category" runat="server" CssClass="ddl-input">
                    <asp:ListItem Value="WNI">WNI</asp:ListItem>
                    <asp:ListItem Value="WNA">WNA</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="LblJobCategory" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <asp:Button ID="PostJob" runat="server" Text="Post Job" CssClass="button-postjob" OnClick="PostJob_Click" />

        </div>
    </section>
</asp:Content>
