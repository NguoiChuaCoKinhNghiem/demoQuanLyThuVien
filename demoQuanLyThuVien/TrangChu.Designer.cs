namespace demoQuanLyThuVien
{
    partial class TrangChu
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
            this.lblQuanLyThuVien = new System.Windows.Forms.Label();
            this.btnThanhVien = new System.Windows.Forms.Button();
            this.btnSach = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lblTentt = new System.Windows.Forms.Label();
            this.txtTentt = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnPhieuMuonSach = new System.Windows.Forms.Button();
            this.txtDate = new System.Windows.Forms.TextBox();
            this.btnDangXuat = new System.Windows.Forms.Button();
            this.btnPhieuTra = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblQuanLyThuVien
            // 
            this.lblQuanLyThuVien.AutoSize = true;
            this.lblQuanLyThuVien.Font = new System.Drawing.Font("Times New Roman", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblQuanLyThuVien.Location = new System.Drawing.Point(117, 28);
            this.lblQuanLyThuVien.Name = "lblQuanLyThuVien";
            this.lblQuanLyThuVien.Size = new System.Drawing.Size(292, 32);
            this.lblQuanLyThuVien.TabIndex = 0;
            this.lblQuanLyThuVien.Text = "QUẢN LÝ THƯ VIỆN";
            // 
            // btnThanhVien
            // 
            this.btnThanhVien.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThanhVien.Location = new System.Drawing.Point(271, 80);
            this.btnThanhVien.Name = "btnThanhVien";
            this.btnThanhVien.Size = new System.Drawing.Size(214, 39);
            this.btnThanhVien.TabIndex = 1;
            this.btnThanhVien.Text = "THÀNH VIÊN";
            this.btnThanhVien.UseVisualStyleBackColor = true;
            this.btnThanhVien.Click += new System.EventHandler(this.btnThanhVien_Click);
            // 
            // btnSach
            // 
            this.btnSach.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSach.Location = new System.Drawing.Point(271, 134);
            this.btnSach.Name = "btnSach";
            this.btnSach.Size = new System.Drawing.Size(214, 39);
            this.btnSach.TabIndex = 2;
            this.btnSach.Text = "SÁCH";
            this.btnSach.UseVisualStyleBackColor = true;
            this.btnSach.Click += new System.EventHandler(this.btnSach_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.lblTentt);
            this.panel1.Controls.Add(this.txtTentt);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Location = new System.Drawing.Point(36, 80);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(214, 181);
            this.panel1.TabIndex = 4;
            // 
            // lblTentt
            // 
            this.lblTentt.AutoSize = true;
            this.lblTentt.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTentt.Location = new System.Drawing.Point(12, 142);
            this.lblTentt.Name = "lblTentt";
            this.lblTentt.Size = new System.Drawing.Size(53, 15);
            this.lblTentt.TabIndex = 5;
            this.lblTentt.Text = "Thủ thư:";
            // 
            // txtTentt
            // 
            this.txtTentt.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtTentt.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTentt.Location = new System.Drawing.Point(62, 142);
            this.txtTentt.Name = "txtTentt";
            this.txtTentt.ReadOnly = true;
            this.txtTentt.Size = new System.Drawing.Size(127, 15);
            this.txtTentt.TabIndex = 4;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.pictureBox1.BackgroundImage = global::demoQuanLyThuVien.Properties.Resources.Screenshot__2_;
            this.pictureBox1.InitialImage = global::demoQuanLyThuVien.Properties.Resources.Screenshot__2_;
            this.pictureBox1.Location = new System.Drawing.Point(50, 14);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(117, 112);
            this.pictureBox1.TabIndex = 3;
            this.pictureBox1.TabStop = false;
            // 
            // btnPhieuMuonSach
            // 
            this.btnPhieuMuonSach.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhieuMuonSach.Location = new System.Drawing.Point(271, 192);
            this.btnPhieuMuonSach.Name = "btnPhieuMuonSach";
            this.btnPhieuMuonSach.Size = new System.Drawing.Size(214, 45);
            this.btnPhieuMuonSach.TabIndex = 6;
            this.btnPhieuMuonSach.Text = "PHIẾU MƯỢN SÁCH";
            this.btnPhieuMuonSach.UseVisualStyleBackColor = true;
            this.btnPhieuMuonSach.Click += new System.EventHandler(this.btnPhieuMuonSach_Click);
            // 
            // txtDate
            // 
            this.txtDate.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtDate.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDate.Location = new System.Drawing.Point(432, 316);
            this.txtDate.Multiline = true;
            this.txtDate.Name = "txtDate";
            this.txtDate.ReadOnly = true;
            this.txtDate.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal;
            this.txtDate.Size = new System.Drawing.Size(125, 55);
            this.txtDate.TabIndex = 0;
            this.txtDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtDate.TextChanged += new System.EventHandler(this.txtDate_TextChanged);
            // 
            // btnDangXuat
            // 
            this.btnDangXuat.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangXuat.Location = new System.Drawing.Point(21, 336);
            this.btnDangXuat.Name = "btnDangXuat";
            this.btnDangXuat.Size = new System.Drawing.Size(139, 35);
            this.btnDangXuat.TabIndex = 7;
            this.btnDangXuat.Text = "ĐĂNG XUẤT";
            this.btnDangXuat.UseVisualStyleBackColor = true;
            this.btnDangXuat.Click += new System.EventHandler(this.btnDangXuat_Click);
            // 
            // btnPhieuTra
            // 
            this.btnPhieuTra.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhieuTra.Location = new System.Drawing.Point(271, 254);
            this.btnPhieuTra.Name = "btnPhieuTra";
            this.btnPhieuTra.Size = new System.Drawing.Size(214, 45);
            this.btnPhieuTra.TabIndex = 8;
            this.btnPhieuTra.Text = "PHIẾU TRẢ SÁCH";
            this.btnPhieuTra.UseVisualStyleBackColor = true;
            this.btnPhieuTra.Click += new System.EventHandler(this.btnPhieuTra_Click);
            // 
            // TrangChu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(581, 383);
            this.Controls.Add(this.btnPhieuTra);
            this.Controls.Add(this.txtDate);
            this.Controls.Add(this.btnDangXuat);
            this.Controls.Add(this.btnPhieuMuonSach);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnSach);
            this.Controls.Add(this.lblQuanLyThuVien);
            this.Controls.Add(this.btnThanhVien);
            this.Name = "TrangChu";
            this.Text = "TrangChu";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblQuanLyThuVien;
        private System.Windows.Forms.Button btnThanhVien;
        private System.Windows.Forms.Button btnSach;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblTentt;
        private System.Windows.Forms.TextBox txtTentt;
        private System.Windows.Forms.Button btnPhieuMuonSach;
        private System.Windows.Forms.Button btnDangXuat;
        private System.Windows.Forms.TextBox txtDate;
        private System.Windows.Forms.Button btnPhieuTra;
    }
}