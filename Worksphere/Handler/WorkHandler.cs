using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Handler {
    public class WorkHandler {
        public static String AddWork(String WorkTitle, String WorkDescription, String WorkType, String Keyword,
            String CategoryID, String EmployerID, int Salary) {
            WorkRepository.AddWork(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);
            return "Success";
        }
    }
}