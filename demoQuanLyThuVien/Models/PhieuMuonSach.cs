namespace demoQuanLyThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuMuonSach")]
    public partial class PhieuMuonSach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuMuonSach()
        {
            PhieuTraSaches = new HashSet<PhieuTraSach>();
        }

        [Key]
        [StringLength(10)]
        public string maphieumuon { get; set; }

        [StringLength(10)]
        public string mathanhvien { get; set; }

        [StringLength(10)]
        public string masach { get; set; }

        public DateTime? ngaymuon { get; set; }

        public DateTime? ngayhentra { get; set; }

        public virtual Sach Sach { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuTraSach> PhieuTraSaches { get; set; }
    }
}
