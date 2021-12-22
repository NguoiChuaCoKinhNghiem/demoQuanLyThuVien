
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
    public partial class frmChiTietThanhVien : Form
    {
        ModelQLTV db = new ModelQLTV();
        
        public frmChiTietThanhVien()
        {
            InitializeComponent();
        }

        
        private void frmChiTietThanhVien_Load(object sender, EventArgs e)
        {
            hienthi();
        }

        public void hienthi()
        {
            cboGT.Items.Clear();
            cboGT.Items.Add("Nam");
            cboGT.Items.Add("Nữ");
            cboGT.SelectedIndex = 0;

        }
        private void btnTroVe_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmThanhVien tv = new frmThanhVien();
            tv.ShowDialog();
        }


        private void BtnHoanTat_Click(object sender, EventArgs e)
        {
            ThanhVien tv = db.ThanhViens.Find(txtMaTV.Text);
            hienthi();
            if (tv != null)
            {
                tv.hoten = txtHoTen.Text;
                tv.diachi = txtDiaChi.Text;
                tv.smnd = txtCMND.Text;
                tv.mail = txtEmail.Text;
                tv.sdt = txtSDT.Text;
                if (cboGT.SelectedIndex==0)
                {
                    tv.gioitinh = true;
                }
                else if (cboGT.SelectedIndex==1)
                {
                    tv.gioitinh = false;
                }
                tv.hoten = txtHoTen.Text;
                
            }
            else
            {
                tv = new ThanhVien();
                tv.matv = txtMaTV.Text;
                tv.hoten = txtHoTen.Text;
                tv.diachi = txtDiaChi.Text;
                tv.smnd = txtCMND.Text;
                tv.mail = txtEmail.Text;
                tv.sdt = txtSDT.Text;
                if (cboGT.SelectedIndex == 0)
                {
                    tv.gioitinh = true;
                }
                else if (cboGT.SelectedIndex == 1)
                {
                    tv.gioitinh = false;
                }

                tv.hoten = txtHoTen.Text;
                db.ThanhViens.Add(tv);
                
            }
            db.SaveChanges();
            this.Hide();
            frmThanhVien thanhVien = new frmThanhVien();
            thanhVien.ShowDialog();
        }

        private void cboGT_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        public frmChiTietThanhVien(ThanhVien thanhvien)
        {
            InitializeComponent();
            txtMaTV.Text = thanhvien.matv;
            txtHoTen.Text = thanhvien.hoten;
            txtDiaChi.Text = thanhvien.diachi;
            txtCMND.Text = thanhvien.smnd;
            txtSDT.Text = thanhvien.sdt;
            txtEmail.Text = thanhvien.mail;
            if (thanhvien.gioitinh == true)
                cboGT.Text = "Nam";
            else if (thanhvien.gioitinh == false)
            {
                cboGT.Text = "Nữ";
            }
                

        }
    }
}
