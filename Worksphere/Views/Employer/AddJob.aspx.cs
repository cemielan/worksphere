using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Worksphere.Controller;
using Worksphere.Factory;
using Worksphere.Handler;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Views.Employer {
    public partial class AddJob : System.Web.UI.Page {

        public static String empID;
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                HttpCookie userCookie = Request.Cookies["EmployerID"];
                if (userCookie != null) {
                    String id = userCookie.Value;
                    Employers employer = EmployerHandler.GetEmployerByID(id); 
                    if (employer != null) {
                        empID = id;
                    }
                    else {
                        // Response.Redirect("~/Views/HomePage.aspx?id=" + id);
                    }
                }
                else {
                    // Response.Redirect("~/Views/Employer/LoginRecruiter.aspx");
                }
            }
        }


        protected void PostJob_Click(object sender, EventArgs e) {
            String WorkTitle = TbJobName.Text;
            String WorkDescription = TbJobDesc.Text;
            String WorkType = DDLJobType.SelectedValue;
            String Keyword = TbKeyword.Text;
            String selectedCategory = DDLJobCategory.SelectedValue.ToString();

            // Debug: Log the selected category
            System.Diagnostics.Debug.WriteLine("Selected Category: " + selectedCategory);

            // Fetch CategoryID and log it
            String CategoryID = EmployerController.GetCategoryIDByName(selectedCategory);
            System.Diagnostics.Debug.WriteLine("Category ID: " + CategoryID);

            // Ensure CategoryID is not null
            if (string.IsNullOrEmpty(CategoryID)) {
                Response.Write("<script>alert('Category ID is null. Please check the category name and try again.')</script>");
                return;
            }

            String EmployerID = empID;
            int Salary;

            // Try parsing the salary
            if (!int.TryParse(TbSalary.Text, out Salary)) {
                Response.Write("<script>alert('Invalid salary input. Please enter a valid number.')</script>");
                return;
            }

            String error = WorkController.AddWork(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);

            if (error.Equals("Success")) {
                Response.Write("<script>alert('Data registered successfully')</script>");
            }
            else {
                Response.Write("<script>alert('Error: " + error + "')</script>");
            }
        }

    }
}