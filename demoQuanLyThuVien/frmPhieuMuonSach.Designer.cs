namespace demoQuanLyThuVien
{
    partial class frmPhieuMuonSach
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblQLPhieuMuon = new System.Windows.Forms.Label();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.btnTaoPhieuTra = new System.Windows.Forms.Button();
            this.btnTroVe = new System.Windows.Forms.Button();
            this.txtTimKiem = new System.Windows.Forms.TextBox();
            this.lblMaso = new System.Windows.Forms.Label();
            this.listView1 = new System.Windows.Forms.ListView();
            this.btnSuaPhieu = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblQLPhieuMuon
            // 
            this.lblQLPhieuMuon.AutoSize = true;
            this.lblQLPhieuMuon.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblQLPhieuMuon.Location = new System.Drawing.Point(45, 25);
            this.lblQLPhieuMuon.Name = "lblQLPhieuMuon";
            this.lblQLPhieuMuon.Size = new System.Drawing.Size(478, 36);
            this.lblQLPhieuMuon.TabIndex = 0;
            this.lblQLPhieuMuon.Text = "QUẢN LÝ PHIẾU MƯỢN SÁCH";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.Location = new System.Drawing.Point(413, 93);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(92, 30);
            this.btnTimKiem.TabIndex = 11;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnTaoPhieuTra
            // 
            this.btnTaoPhieuTra.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTaoPhieuTra.Location = new System.Drawing.Point(238, 151);
            this.btnTaoPhieuTra.Name = "btnTaoPhieuTra";
            this.btnTaoPhieuTra.Size = new System.Drawing.Size(154, 29);
            this.btnTaoPhieuTra.TabIndex = 10;
            this.btnTaoPhieuTra.Text = "Tạo phiếu trả";
            this.btnTaoPhieuTra.UseVisualStyleBackColor = true;
            this.btnTaoPhieuTra.Click += new System.EventHandler(this.btnTaoPhieuTra_Click);
            // 
            // btnTroVe
            // 
            this.btnTroVe.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTroVe.Location = new System.Drawing.Point(446, 151);
            this.btnTroVe.Name = "btnTroVe";
            this.btnTroVe.Size = new System.Drawing.Size(77, 29);
            this.btnTroVe.TabIndex = 9;
            this.btnTroVe.Text = "Trở về";
            this.btnTroVe.UseVisualStyleBackColor = true;
            this.btnTroVe.Click += new System.EventHandler(this.btnTroVe_Click);
            // 
            // txtTimKiem
            // 
            this.txtTimKiem.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTimKiem.Location = new System.Drawing.Point(113, 97);
            this.txtTimKiem.Name = "txtTimKiem";
            this.txtTimKiem.Size = new System.Drawing.Size(246, 25);
            this.txtTimKiem.TabIndex = 8;
            // 
            // lblMaso
            // 
            this.lblMaso.AutoSize = true;
            this.lblMaso.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaso.Location = new System.Drawing.Point(59, 100);
            this.lblMaso.Name = "lblMaso";
            this.lblMaso.Size = new System.Drawing.Size(48, 17);
            this.lblMaso.TabIndex = 7;
            this.lblMaso.Text = "Mã số:";
            // 
            // listView1
            // 
            this.listView1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listView1.HideSelection = false;
            this.listView1.Location = new System.Drawing.Point(22, 203);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(520, 208);
            this.listView1.TabIndex = 12;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            this.listView1.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            // 
            // btnSuaPhieu
            // 
            this.btnSuaPhieu.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaPhieu.Location = new System.Drawing.Point(40, 151);
            this.btnSuaPhieu.Name = "btnSuaPhieu";
            this.btnSuaPhieu.Size = new System.Drawing.Size(154, 29);
            this.btnSuaPhieu.TabIndex = 13;
            this.btnSuaPhieu.Text = "Sửa phiếu mượn";
            this.btnSuaPhieu.UseVisualStyleBackColor = true;
            this.btnSuaPhieu.Click += new System.EventHandler(this.btnSuaPhieu_Click);
            // 
            // frmPhieuMuonSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(570, 426);
            this.Controls.Add(this.btnSuaPhieu);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.btnTaoPhieuTra);
            this.Controls.Add(this.btnTroVe);
            this.Controls.Add(this.txtTimKiem);
            this.Controls.Add(this.lblMaso);
            this.Controls.Add(this.lblQLPhieuMuon);
            this.Name = "frmPhieuMuonSach";
            this.Text = "PhieuMuonSach";
            this.Load += new System.EventHandler(this.frmPhieuMuonSach_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblQLPhieuMuon;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnTaoPhieuTra;
        private System.Windows.Forms.Button btnTroVe;
        private System.Windows.Forms.TextBox txtTimKiem;
        private System.Windows.Forms.Label lblMaso;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.Button btnSuaPhieu;
    }
}