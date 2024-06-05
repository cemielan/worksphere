using System;
using System.Collections.Generic;
using System.ComponentModel;
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

    }
}