namespace demoQuanLyThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuTraSach")]
    public partial class PhieuTraSach
    {
        [Key]
        [StringLength(10)]
        public string maphieutra { get; set; }

        [StringLength(10)]
        public string maphieumuon { get; set; }

        public DateTime? ngaytra { get; set; }

        [StringLength(50)]
        public string tinhtrang { get; set; }

        public int? tienphat { get; set; }

        public virtual PhieuMuonSach PhieuMuonSach { get; set; }
    }
}
