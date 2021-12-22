using demoQuanLyThuVien.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace demoQuanLyThuVien
{
    public partial class frmChiTietPhieuMuon : Form
    {
        ModelQLTV db = new ModelQLTV();
        ThanhVien tv;
        Sach s;
        public frmChiTietPhieuMuon()
        {
            InitializeComponent();
        }
        
        private void btnTroLai_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmThanhVien tv = new frmThanhVien();
            tv.ShowDialog();
        }

        private void btnHoanTat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            PhieuMuonSach pm = db.PhieuMuonSaches.Find(txtMaPhieu.Text);
            if (pm != null)
            {
                frmSach sach = new frmSach(pm, tv);
                sach.ShowDialog();
            }
            else
            {
                frmSach sach = new frmSach(tv);
                sach.ShowDialog();
            }
            

        }

        private void btnSửa_Click(object sender, EventArgs e)
        {
            PhieuMuonSach pm = db.PhieuMuonSaches.Find(txtMaPhieu.Text);
            if (pm != null)
            {
                pm.masach = txtMaSach.Text;
                pm.ngaymuon = dateTimePicker1.Value;
                pm.ngayhentra = dateTimePicker2.Value;
                db.SaveChanges();
                this.Hide();
                frmPhieuMuonSach phieumuon = new frmPhieuMuonSach();
                phieumuon.ShowDialog();
            }
        }
        public frmChiTietPhieuMuon(Sach s)
        {
            InitializeComponent();
            txtMaSach.Text = s.masach;
            
        }
        public frmChiTietPhieuMuon(PhieuMuonSach pm)
        {
            InitializeComponent();
            txtMaPhieu.Text = pm.maphieumuon;
            txtMaSach.Text = pm.masach;
            txtMaTV.Text = pm.mathanhvien;
            dateTimePicker1.Value = pm.ngaymuon.Value;
            dateTimePicker2.Value = pm.ngayhentra.Value;
        }
        public frmChiTietPhieuMuon(PhieuMuonSach pm, ThanhVien tv, Sach s)
        {
            InitializeComponent();
            txtMaPhieu.Text = pm.maphieumuon;
            txtMaSach.Text = s.masach;
            txtMaTV.Text = pm.mathanhvien;
            dateTimePicker1.Value = pm.ngaymuon.Value;
            dateTimePicker2.Value = pm.ngayhentra.Value;
        }
        public frmChiTietPhieuMuon(ThanhVien tv)
        {
            InitializeComponent();
            this.tv = tv;
            txtMaTV.Text = tv.matv;
        }
        public frmChiTietPhieuMuon(ThanhVien tv, Sach s)
        {
            InitializeComponent();
            this.tv = tv;
            txtMaTV.Text = tv.matv;
            txtMaSach.Text = s.masach;
        }
    }
}
