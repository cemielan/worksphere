using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Model;

namespace Worksphere.Repository {
    public class WorkRepository {
        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID() {
            return (from id in db.Works select id.WorkID).FirstOrDefault();
        }

        public static void AddWork(String WorkTitle, String WorkDescription, String WorkType, String Keyword,
            String CategoryID, String EmployerID, int Salary) {
            Work work = WorkFactory.Create(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);
            db.Works.Add(work);
            db.SaveChanges();
            return;
        }

    }
}