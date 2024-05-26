using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Handler
{
    public class EmployerHandler
    {
        public static string doRegister (string CompanyName, string email, string name, string password, string address, string phoneNumber,string type, string logo)
        {
            EmployerRepository.registerEmployer(CompanyName, email, name, password, address, phoneNumber,type, null);
            return "Success";
        }

        public static Employers doLogin(string email, string password)
        {
            Employers employer = EmployerRepository.getEmployer(email, password);
            return employer;

        }
    }
}