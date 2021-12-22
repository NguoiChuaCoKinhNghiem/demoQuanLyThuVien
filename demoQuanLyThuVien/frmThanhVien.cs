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
    public partial class frmThanhVien : Form
    {
        ModelQLTV db = new ModelQLTV();
       
        public frmThanhVien()
        {
            InitializeComponent();
        }
        
        //public frmThanhVien(ThanhVien thanhvien)
        //{
            
        //    thanhvien = tv;
        //}

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            this.Hide();
            TrangChu tc = new TrangChu();
            tc.ShowDialog();
        }


        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            ThanhVien tv = db.ThanhViens.Find(txtTimKiem.Text);
            if (tv != null)
            {
                lvThanhVien.Items.Clear();
                ListViewItem li = lvThanhVien.Items.Add(tv.matv);
                li.SubItems.Add(tv.hoten);
                li.SubItems.Add(tv.gioitinh.ToString());
                li.SubItems.Add(tv.diachi);
                li.SubItems.Add(tv.sdt);
                li.SubItems.Add(tv.smnd);
                li.SubItems.Add(tv.mail);
            }
            else
            {
                MessageBox.Show("Không tìm thấy thông tin thành viên!!!!!");
            }
        }

        private void btnTaoPhieu_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem li in lvThanhVien.SelectedItems)
            {
                ThanhVien tv = db.ThanhViens.Find(li.SubItems[0].Text);
                this.Hide();
                frmChiTietPhieuMuon phieu = new frmChiTietPhieuMuon(tv);
                phieu.ShowDialog();
            }

        }

        private void frmThanhVien_Load(object sender, EventArgs e)
        {
            hienthi();
            
        }
        public void hienthi()
        {
            lvThanhVien.View = View.Details;
            lvThanhVien.GridLines = true;
            lvThanhVien.FullRowSelect = true;
            lvThanhVien.Items.Clear();
            lvThanhVien.Columns.Clear();
            lvThanhVien.Columns.Add("Mã số", 80);
            lvThanhVien.Columns.Add("Họ tên", 150);
            lvThanhVien.Columns.Add("Giới tính", 80);
            lvThanhVien.Columns.Add("Địa chỉ", 200);
            lvThanhVien.Columns.Add("SĐT", 100);
            lvThanhVien.Columns.Add("CMND", 100);
            lvThanhVien.Columns.Add("Email", 200);
            foreach(ThanhVien tv in db.ThanhViens.ToList())
            {
                ListViewItem li = lvThanhVien.Items.Add(tv.matv);
                li.SubItems.Add(tv.hoten);
                if (tv.gioitinh == true)
                {
                    li.SubItems.Add("Nam");
                }
                else
                    li.SubItems.Add("Nữ");
                li.SubItems.Add(tv.diachi);
                li.SubItems.Add(tv.sdt);
                li.SubItems.Add(tv.smnd);
                li.SubItems.Add(tv.mail);
            }
        }
        

        private void lvThanhVien_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(ListViewItem li in lvThanhVien.SelectedItems)
            {
                txtTimKiem.Text = li.SubItems[0].Text;
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmChiTietThanhVien thanhVien = new frmChiTietThanhVien();
            thanhVien.ShowDialog();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            ThanhVien tv;
            foreach (ListViewItem li in lvThanhVien.SelectedItems)
            {
                tv = db.ThanhViens.Find(li.SubItems[0].Text);
                frmChiTietThanhVien thanhVien = new frmChiTietThanhVien(tv);
                this.Hide();
                thanhVien.ShowDialog();
            }


        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            bool kq = false;
            foreach (ListViewItem li in lvThanhVien.SelectedItems)
            {
                kq = true;
                ThanhVien tv = db.ThanhViens.Find(li.SubItems[0].Text);
                //if (tv != null)
                //{
                //    if (tv.PhieuMuonSach.Count == 0)
                        db.ThanhViens.Remove(tv);
                //    else
                //        MessageBox.Show("Không thể xóa được!!!!!");
                //}
                db.SaveChanges();
            }
            if (kq)
            {
                hienthi();
            }
        }
    }
}
