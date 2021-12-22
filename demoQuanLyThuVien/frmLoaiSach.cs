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
    public partial class frmLoaiSach : Form
    {
        ModelQLTV db = new ModelQLTV();
        public frmLoaiSach()
        {
            InitializeComponent();
        }

        private void frmLoaiSach_Load(object sender, EventArgs e)
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
            listView1.Columns.Add("Mã loại", 100);
            listView1.Columns.Add("Thể loại", 200);
            foreach(TheLoai ls in db.TheLoais.ToList())
            {
                ListViewItem li = listView1.Items.Add(ls.maloai);
                li.SubItems.Add(ls.tenloai);
            }
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            TheLoai tl = db.TheLoais.Find(txtTimKiem.Text);
            if (tl != null)
            {
                listView1.Items.Clear();
                ListViewItem li = listView1.Items.Add(tl.maloai);
                li.SubItems.Add(tl.tenloai);

            }
            else
            {
                MessageBox.Show("Không tìn thấy thông tin loại sách!!!!!");
            }
        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            //this.Hide();
            //frmQLSach ql = new frmQLSach();
            //ql.ShowDialog();
        }

        private void btnHoantat_Click(object sender, EventArgs e)
        {

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            TheLoai tl = new TheLoai();
            tl.maloai = txtTimKiem.Text;
            tl.tenloai = txtTenLoai.Text;
            db.TheLoais.Add(tl);
            db.SaveChanges();
            hienthi();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            TheLoai tl = db.TheLoais.Find(txtTimKiem.Text);
            if (tl == null)
            {
                MessageBox.Show("Loại sách chưa tồn tại nên không thể xóa!!");
            }
            tl.tenloai = txtTenLoai.Text;
            db.SaveChanges();
            hienthi();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            //bool kq = false;
            //foreach (ListViewItem li in listView1.SelectedItems)
            //{
            //    kq = true;
            //    TheLoai tl = db.TheLoais.Find(li.SubItems[0].Text);
            //    if (tl != null)
            //    {
            //        if (tl.Saches.Count == 0)
            //            db.TheLoais.Remove(tl);
            //        else
            //            MessageBox.Show("Không thể xóa!!!!!");
            //    }
                    
            //    db.SaveChanges();
            //}
            //if (kq)
            //    hienthi();
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(ListViewItem li in listView1.SelectedItems)
            {
                txtTimKiem.Text = li.SubItems[0].Text;
                txtTenLoai.Text = li.SubItems[1].Text;
            }
        }
    }
}
