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
    
    public partial class ApplymentDetail
    {
        public string ApplymentID { get; set; }
        public string ApplicantID { get; set; }
        public string WorkID { get; set; }
        public System.DateTime ApplyDate { get; set; }
        public string Status { get; set; }
    
        public virtual Applicant Applicant { get; set; }
        public virtual Work Work { get; set; }
    }
}
