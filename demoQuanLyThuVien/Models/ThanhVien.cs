namespace demoQuanLyThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThanhVien")]
    public partial class ThanhVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThanhVien()
        {
            PhieuMuonSaches = new HashSet<PhieuMuonSach>();
        }

        [Key]
        [StringLength(10)]
        public string matv { get; set; }

        [StringLength(50)]
        public string hoten { get; set; }

        public bool? gioitinh { get; set; }

        [StringLength(50)]
        public string diachi { get; set; }

        [StringLength(50)]
        public string sdt { get; set; }

        [StringLength(50)]
        public string smnd { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuMuonSach> PhieuMuonSaches { get; set; }
    }
}
