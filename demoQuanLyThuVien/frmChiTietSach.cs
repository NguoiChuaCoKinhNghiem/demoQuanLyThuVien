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
    public partial class frmChiTietSach : Form
    {
        ModelQLTV db = new ModelQLTV();
        public frmChiTietSach()
        {
            InitializeComponent();
            KhoiTao();
        }

        public void KhoiTao()
        {
            foreach(var x in db.DauSaches.ToList())
            {
                cboDausach.Items.Add(x);
            }
            cboDausach.SelectedIndex=0;
            foreach(var tg in db.TacGias.ToList())
            {
                cboTG.Items.Add(tg);
            }
            cboTG.SelectedIndex = 0;
            foreach (var ls in db.TheLoais.ToList())
            {
                cboLoaiSach.Items.Add(ls);
            }
            cboLoaiSach.SelectedIndex = 0;
            foreach (var nxb in db.NhaXuatBans.ToList())
            {
                CboNXB.Items.Add(nxb);
            }
            CboNXB.SelectedIndex = 0;
            foreach (var nn in db.NgonNgus.ToList())
            {
                cboNN.Items.Add(nn);
            }
            cboNN.SelectedIndex = 0;
            cboTT.Items.Clear();
            cboTT.Items.Add("Được mượn");
            cboTT.Items.Add("Chưa được mượn");
            cboTT.SelectedIndex = 1;
        }
        private void BtnHoanTat_Click(object sender, EventArgs e)
        {
            Sach s = db.Saches.Find(txtMaSach.Text);
            if (s != null)
            {
                s.tensach = txtTenSach.Text;
                s.dausach = cboDausach.SelectedItem.ToString();
                s.loaisach = cboLoaiSach.SelectedItem.ToString();
                s.tacgia = cboTG.SelectedItem.ToString();
                s.ngonngu = cboNN.SelectedItem.ToString();
                s.nhaxuatban = CboNXB.SelectedItem.ToString();
                if (s.tinhtrang != null)
                {
                    s.tinhtrang = cboTT.SelectedItem.ToString();
                }
                else
                {
                    cboTT.SelectedIndex = 0;
                    s.tinhtrang = null;
                }
                db.SaveChanges();
            }
            else
            {
                s = new Sach();
                s.masach = txtMaSach.Text;
                s.tensach = txtTenSach.Text;
                s.dausach = cboDausach.SelectedItem.ToString();
                s.loaisach = cboLoaiSach.SelectedItem.ToString();
                s.tacgia = cboTG.SelectedItem.ToString();
                s.ngonngu = cboNN.SelectedItem.ToString();
                s.nhaxuatban = CboNXB.SelectedItem.ToString();
                s.tinhtrang = cboTT.SelectedItem.ToString();
                db.Saches.Add(s);
                db.SaveChanges();
            }

            this.Hide();
            frmSach sach = new frmSach();
            sach.ShowDialog();

        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmSach sach = new frmSach();
            sach.ShowDialog();
        }
        public frmChiTietSach(Sach s)
        {
            InitializeComponent();
            KhoiTao();
            txtMaSach.Text = s.masach;
            txtTenSach.Text = s.tensach;
            cboDausach.Text=s.dausach;
            cboLoaiSach.Text = s.loaisach;
            cboTG.Text = s.tacgia;
            cboNN.Text = s.ngonngu;
            CboNXB.Text = s.nhaxuatban;
            cboTT.Text = s.tinhtrang;
        }
    }
}
