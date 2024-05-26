using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere.Views.Applicant
{
    public partial class LoginApplicant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string email = TbEmail.Text; 
            string password = TbPassword.Text;

            Applicants applicant = ApplicantController.LoginApplicant(email, password);

            if (applicant != null)
            {
                Session["users"] = applicant;
                Response.Redirect("#");
            } else
            {
                LblError.Text = "Email or Password is wrong";
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Applicant/ApplicantRegister.aspx");
        }
    }
}