namespace demoQuanLyThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sach")]
    public partial class Sach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sach()
        {
            PhieuMuonSaches = new HashSet<PhieuMuonSach>();
        }

        [Key]
        [StringLength(10)]
        public string masach { get; set; }

        [StringLength(50)]
        public string tensach { get; set; }

        [StringLength(10)]
        public string dausach { get; set; }

        [StringLength(10)]
        public string loaisach { get; set; }

        [StringLength(10)]
        public string tacgia { get; set; }

        [StringLength(10)]
        public string ngonngu { get; set; }

        [StringLength(50)]
        public string tinhtrang { get; set; }

        [StringLength(50)]
        public string nhaxuatban { get; set; }

        public virtual DauSach DauSach1 { get; set; }

        public virtual NgonNgu NgonNgu1 { get; set; }

        public virtual NhaXuatBan NhaXuatBan1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuMuonSach> PhieuMuonSaches { get; set; }

        public virtual TacGia TacGia1 { get; set; }

        public virtual TheLoai TheLoai { get; set; }
    }
}
