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
    
    public partial class Cabinet
    {
        public int ID { get; set; }
        public string Type { get; set; }
        public Nullable<int> ID_Worker { get; set; }
    
        public virtual Worker Worker { get; set; }
    }
}
