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
    public partial class frmPhieuTraSach : Form
    {
        ModelQLTV db = new ModelQLTV();
        public frmPhieuTraSach()
        {
            InitializeComponent();
        }

        private void frmPhieuTraSach_Load(object sender, EventArgs e)
        {
            hienthi();
            khoitao();
        }
        public void hienthi()
        {
            listView1.View = View.Details;
            listView1.GridLines = true;
            listView1.FullRowSelect = true;
            listView1.Items.Clear();
            listView1.Columns.Clear();
            listView1.Columns.Add("Mã phiếu trả", 80);
            listView1.Columns.Add("Mã phiếu mượn", 100);
            listView1.Columns.Add("Ngày trả", 120);
            listView1.Columns.Add("Tình trạng", 120);
            listView1.Columns.Add("Phí phạt", 120);
            foreach (PhieuTraSach pt in db.PhieuTraSaches.ToList())
            {
                ListViewItem li = listView1.Items.Add(pt.maphieutra);
                li.SubItems.Add(pt.maphieumuon);
                li.SubItems.Add(pt.ngaytra.Value.ToString("dd/MM/yyyy"));
                li.SubItems.Add(pt.tinhtrang);
                li.SubItems.Add(pt.tienphat.ToString());

            }
        }
        public void khoitao()
        {
            cboTT.Items.Clear();
            cboTT.Items.Add("Trả đúng hạn!!!!!!");
            cboTT.Items.Add("Trả trễ hạn!!!!!!!!!!!!");
            cboTT.SelectedIndex = 0;
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem li in listView1.SelectedItems)
            {
                txtMaPhieuTra.Text = li.SubItems[0].Text;
                txtMaPhieuMuon.Text = li.SubItems[1].Text;
                dtNgayTra.Value = DateTime.Parse(li.SubItems[2].Text);
                //txtTinhTrang.Text = li.SubItems[3].Text;
                cboTT.Text = li.SubItems[3].Text;
                txtPhiPhat.Text = li.SubItems[4].Text;
            }
        }

        private void btnTroLai_Click(object sender, EventArgs e)
        {
            this.Hide();
            TrangChu tc = new TrangChu();
            tc.ShowDialog();
        }

        private void btnHoanTat_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmPhieuMuonSach pm = new frmPhieuMuonSach();
            pm.ShowDialog();
        }

        private void btnSửa_Click(object sender, EventArgs e)
        {
            PhieuTraSach pt = db.PhieuTraSaches.Find(txtMaPhieuTra.Text);
            if (pt != null)
            {
                pt.maphieumuon = txtMaPhieuMuon.Text;
                pt.ngaytra = dtNgayTra.Value;
                pt.tinhtrang = cboTT.Text;
                pt.tienphat = int.Parse(txtPhiPhat.Text);
            }
            db.SaveChanges();
            hienthi();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            PhieuTraSach pt = db.PhieuTraSaches.Find(txtMaPhieuTra.Text);
            if (pt != null)
            {
                MessageBox.Show("Phiếu trả sach này đã tồn tại không thể thêm mới!!!!!");
            }
            else
            {
                pt = new PhieuTraSach();
                pt.maphieumuon = txtMaPhieuMuon.Text;
                pt.maphieutra = txtMaPhieuTra.Text;
                pt.ngaytra = dtNgayTra.Value;
                pt.tinhtrang = cboTT.Text;
                pt.tienphat = int.Parse(txtPhiPhat.Text);
                db.PhieuTraSaches.Add(pt);
                db.SaveChanges();
            }
            hienthi();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem li in listView1.SelectedItems)
            {
                PhieuTraSach pt = db.PhieuTraSaches.Find(li.SubItems[0].Text);
                db.PhieuTraSaches.Remove(pt);
                db.SaveChanges();
                hienthi();
            }
        }
        public frmPhieuTraSach(PhieuMuonSach pm)
        {
            InitializeComponent();
            khoitao();
            txtMaPhieuMuon.Text = pm.maphieumuon;
            
        }
    }
}
