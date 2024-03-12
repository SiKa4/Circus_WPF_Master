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
    
    public partial class Animal
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Animal()
        {
            this.Cage = new HashSet<Cage>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public Nullable<int> ID_Type { get; set; }
        public Nullable<int> Age { get; set; }
        public Nullable<int> ID_Gender { get; set; }
        public Nullable<int> Weight { get; set; }
        public string FoodPreference { get; set; }
        public string CareRecommendations { get; set; }
        public Nullable<int> ID_Trainer { get; set; }
    
        public virtual AnimalType AnimalType { get; set; }
        public virtual Gender Gender { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cage> Cage { get; set; }
    }
}