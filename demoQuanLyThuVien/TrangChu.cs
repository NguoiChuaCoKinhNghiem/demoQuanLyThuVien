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
    public partial class TrangChu : Form
    {
        public TrangChu()
        {
            InitializeComponent();

            //txtDate.Text = DateTime.Today.Date.ToShortDateString()+DateTime.Now.ToLongTimeString();
            txtTentt.Text = "Ngô Thùy Thương";
            txtDate.Text = DateTime.Today.Date.ToString("dd/MM/yyyy") + " " + DateTime.Now.ToString("HH:mm");

        }

        private void txtDate_TextChanged(object sender, EventArgs e)
        {
            
            String date = DateTime.Today.Date.ToString("dd/MM/yyyy") + " " + DateTime.Now.ToString("HH:mm");
            
            if (String.Compare(txtDate.Text, date,true)!=0)
            {
                txtDate.Text = date;
            }
        }

        private void btnThanhVien_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmThanhVien thanhVien = new frmThanhVien();
            thanhVien.ShowDialog();
        }

        private void btnSach_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmQLSach ql = new frmQLSach();
            ql.ShowDialog();
        }

        private void btnPhieuMuonSach_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmPhieuMuonSach phieumuon = new frmPhieuMuonSach();
            phieumuon.ShowDialog();
        }

        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnPhieuTra_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmPhieuTraSach pt = new frmPhieuTraSach();
            pt.ShowDialog();
        }
    }
}
