//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Circus.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Taskk
    {
        public int ID { get; set; }
        public Nullable<int> ID_ServiceStaff { get; set; }
        public string Description { get; set; }
        public Nullable<bool> DoneOrNo { get; set; }
        public Nullable<System.DateTime> DateTime { get; set; }
    
        public virtual Worker Worker { get; set; }
    }
}
