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
    public partial class frmSach : Form
    {
        ModelQLTV db = new ModelQLTV();
        ThanhVien tv;
        PhieuMuonSach pm;
        public frmSach()
        {
            InitializeComponent();
        }

        public frmSach(ThanhVien tv)
        {
            this.tv = tv;
            InitializeComponent();
        }
        public frmSach(PhieuMuonSach pm, ThanhVien tv)
        {
            this.tv = tv;
            this.pm = pm;
            InitializeComponent();
        }
        private void btnTroVe_Click(object sender, EventArgs e)
        {
            //this.Hide();
            //frmQLSach ql = new frmQLSach();
            //ql.ShowDialog();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmChiTietSach cts = new frmChiTietSach();
            cts.ShowDialog();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            foreach(ListViewItem li in listView1.SelectedItems)
            {
                Sach s = db.Sach.Find(li.SubItems[0].Text);
                frmChiTietSach sach = new frmChiTietSach(s);
                this.Hide();
                sach.ShowDialog();
            }

        }

        private void frmSach_Load(object sender, EventArgs e)
        {
            hienthi();
        }
        public void hienthi()
        {
            listView1.View = View.Details;
            listView1.GridLines = true;
            listView1.FullRowSelect = true;
            listView1.Items.Clear();
            listView1.Columns.Clear();
            listView1.Columns.Add("Mã sách", 80);
            listView1.Columns.Add("Tên sách", 250);
            listView1.Columns.Add("Đầu sách", 100);
            listView1.Columns.Add("Loại sách", 100);
            listView1.Columns.Add("Tác giả", 80);
            listView1.Columns.Add("Ngôn ngữ", 80);
            listView1.Columns.Add("NXB", 100);
            listView1.Columns.Add("Tình trạng", 80);
            foreach(Sach s in db.Saches.ToList())
            {
                ListViewItem li = listView1.Items.Add(s.masach);
                li.SubItems.Add(s.tensach);
                li.SubItems.Add(s.dausach);
                li.SubItems.Add(s.loaisach);
                li.SubItems.Add(s.tacgia);
                li.SubItems.Add(s.ngonngu);
                li.SubItems.Add(s.nhaxuatban);
                li.SubItems.Add(s.tinhtrang);
            }
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            
            DauSach ds = db.DauSaches.Find(txtTimKiem.Text);
            if(ds!=null)
            {
                listView1.Items.Clear();
                foreach (Sach s in db.Saches.ToList())
                {
                    if (s.dausach == ds.mads)
                    {
                        
                        ListViewItem li = listView1.Items.Add(s.masach);
                        li.SubItems.Add(s.tensach);
                        li.SubItems.Add(s.dausach);
                        li.SubItems.Add(s.loaisach);
                        li.SubItems.Add(s.tacgia);
                        li.SubItems.Add(s.ngonngu);
                        li.SubItems.Add(s.nhaxuatban);
                        li.SubItems.Add(s.tinhtrang);
                    }
                }
                
            }
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(ListViewItem li in listView1.SelectedItems)
            {
                txtTimKiem.Text = li.SubItems[2].Text;
            }
        }

        private void btnHoantat_Click(object sender, EventArgs e)
        {
            //foreach (ListViewItem li in listView1.SelectedItems)
            //{
            //    Sach s = db.Saches.Find(li.SubItems[0].Text);
            //    frmChiTietPhieuMuon phiuemuon = new frmChiTietPhieuMuon(pm,tv,s);
            //    this.Hide();
            //    phiuemuon.ShowDialog();
            //}
        }
    }
}
