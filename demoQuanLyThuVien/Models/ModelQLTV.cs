using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace demoQuanLyThuVien.Models
{
    public partial class ModelQLTV : DbContext
    {
        public ModelQLTV()
            : base("name=ModelThuVien")
        {
        }

        public virtual DbSet<DauSach> DauSaches { get; set; }
        public virtual DbSet<NgonNgu> NgonNgus { get; set; }
        public virtual DbSet<NhaXuatBan> NhaXuatBans { get; set; }
        public virtual DbSet<PhieuMuonSach> PhieuMuonSaches { get; set; }
        public virtual DbSet<PhieuTraSach> PhieuTraSaches { get; set; }
        public virtual DbSet<Sach> Saches { get; set; }
        public virtual DbSet<TacGia> TacGias { get; set; }
        public virtual DbSet<ThanhVien> ThanhViens { get; set; }
        public virtual DbSet<TheLoai> TheLoais { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DauSach>()
                .HasMany(e => e.Saches)
                .WithOptional(e => e.DauSach1)
                .HasForeignKey(e => e.dausach);

            modelBuilder.Entity<NgonNgu>()
                .HasMany(e => e.Saches)
                .WithOptional(e => e.NgonNgu1)
                .HasForeignKey(e => e.ngonngu);

            modelBuilder.Entity<NhaXuatBan>()
                .HasMany(e => e.Saches)
                .WithOptional(e => e.NhaXuatBan1)
                .HasForeignKey(e => e.nhaxuatban);

            modelBuilder.Entity<TacGia>()
                .HasMany(e => e.Saches)
                .WithOptional(e => e.TacGia1)
                .HasForeignKey(e => e.tacgia);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.PhieuMuonSaches)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.mathanhvien);

            modelBuilder.Entity<TheLoai>()
                .HasMany(e => e.Saches)
                .WithOptional(e => e.TheLoai)
                .HasForeignKey(e => e.loaisach);
        }
    }
}
