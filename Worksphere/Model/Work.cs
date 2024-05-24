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
    
    public partial class Work
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Work()
        {
            this.ApplymentDetails = new HashSet<ApplymentDetail>();
        }
    
        public string WorkID { get; set; }
        public string WorkName { get; set; }
        public string WorkDescription { get; set; }
        public string WorkType { get; set; }
        public string Keyword { get; set; }
        public string CategoryID { get; set; }
        public string EmployerID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ApplymentDetail> ApplymentDetails { get; set; }
        public virtual Category Category { get; set; }
        public virtual Employer Employer { get; set; }
    }
}