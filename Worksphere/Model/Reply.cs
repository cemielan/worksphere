//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Worksphere.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reply
    {
        public string CommunityID { get; set; }
        public string ApplicantID { get; set; }
        public string EmployerID { get; set; }
        public string Reply1 { get; set; }
    
        public virtual Applicants Applicant { get; set; }
        public virtual Community Community { get; set; }
        public virtual Employers Employer { get; set; }
    }
}
