﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere
{
    public partial class Navbar : System.Web.UI.MasterPage
    {
        public static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
=======
            if (Session["users"]==null)
            {
                Response.Redirect("~/Views/Applicant/ApplicantLogin.aspx");
            } else
            {
                id = (string)Session["users"];
            }
>>>>>>> 9fc0fa1fdfea6264a6664a7e15053dba2d468557

        }

        protected void Btn_Home_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Search_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Community_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Career_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Applicant/CareerAdvice.aspx");
        }

        protected void Btn_CV_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_ProfileApplicant_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_HomeEmployer_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_AddJob_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_ProfileEmployer_Click(object sender, EventArgs e)
        {

        }
    }
}