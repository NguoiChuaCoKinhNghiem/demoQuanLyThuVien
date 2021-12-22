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
    public partial class frmQLSach : Form
    {
        public frmQLSach()
        {
            InitializeComponent();
        }

        private void btnttSach_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmSach sach = new frmSach();
            sach.ShowDialog();
        }

        private void btntacgia_Click(object sender, EventArgs e)
        {
            //this.Hide();
            //frmTacGia tg = new frmTacGia();
            //tg.ShowDialog();
        }

        private void btnLoaiSach_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLoaiSach ls = new frmLoaiSach();
            ls.ShowDialog();
        }

        private void btnNXB_Click(object sender, EventArgs e)
        {
            //this.Hide();
            //frmNhaXuatBan nxb = new frmNhaXuatBan();
            //nxb.ShowDialog();
        }

        private void btnDauSach_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmDauSach ds = new frmDauSach();
            ds.ShowDialog();
        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            this.Hide();
            TrangChu tc = new TrangChu();
            tc.ShowDialog();
        }
    }
}
