using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere.Views.Employer
{
    public partial class LoginRecruiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string email = TbEmail.Text;
            string password = TbPassword.Text;

            Employers employer = EmployerController.LoginEmployer(email, password);
            
            if (employer != null)
            {
                HttpCookie userCookie = new HttpCookie("EmployerID", employer.EmployerID);
                userCookie.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(userCookie);

                Response.Redirect("~/Views/Employer/AddJob.aspx?id=" + employer.EmployerID);
            }
            else
            {
                LblError.Text = "Email or Password is wrong";
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Employer/RegisterEmployer.aspx");
        }
    }
}