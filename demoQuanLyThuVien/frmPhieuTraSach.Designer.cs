namespace demoQuanLyThuVien
{
    partial class frmPhieuTraSach
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
            this.btnSửa = new System.Windows.Forms.Button();
            this.btnHoanTat = new System.Windows.Forms.Button();
            this.btnTroLai = new System.Windows.Forms.Button();
            this.txtMaPhieuTra = new System.Windows.Forms.TextBox();
            this.dtNgayTra = new System.Windows.Forms.DateTimePicker();
            this.lblNgayTra = new System.Windows.Forms.Label();
            this.lblMaPhieuTra = new System.Windows.Forms.Label();
            this.lblTaoPhieuTra = new System.Windows.Forms.Label();
            this.txtMaPhieuMuon = new System.Windows.Forms.TextBox();
            this.lblMaPhieuMuon = new System.Windows.Forms.Label();
            this.lblTinhTrang = new System.Windows.Forms.Label();
            this.txtPhiPhat = new System.Windows.Forms.TextBox();
            this.lblPhatPhi = new System.Windows.Forms.Label();
            this.btnThem = new System.Windows.Forms.Button();
            this.listView1 = new System.Windows.Forms.ListView();
            this.btnXoa = new System.Windows.Forms.Button();
            this.cboTT = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btnSửa
            // 
            this.btnSửa.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSửa.Location = new System.Drawing.Point(506, 186);
            this.btnSửa.Name = "btnSửa";
            this.btnSửa.Size = new System.Drawing.Size(75, 23);
            this.btnSửa.TabIndex = 29;
            this.btnSửa.Text = "Sửa";
            this.btnSửa.UseVisualStyleBackColor = true;
            this.btnSửa.Click += new System.EventHandler(this.btnSửa_Click);
            // 
            // btnHoanTat
            // 
            this.btnHoanTat.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHoanTat.Location = new System.Drawing.Point(506, 129);
            this.btnHoanTat.Name = "btnHoanTat";
            this.btnHoanTat.Size = new System.Drawing.Size(75, 23);
            this.btnHoanTat.TabIndex = 28;
            this.btnHoanTat.Text = "Hoàn tất";
            this.btnHoanTat.UseVisualStyleBackColor = true;
            this.btnHoanTat.Click += new System.EventHandler(this.btnHoanTat_Click);
            // 
            // btnTroLai
            // 
            this.btnTroLai.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTroLai.Location = new System.Drawing.Point(506, 77);
            this.btnTroLai.Name = "btnTroLai";
            this.btnTroLai.Size = new System.Drawing.Size(75, 23);
            this.btnTroLai.TabIndex = 27;
            this.btnTroLai.Text = "Trở lại";
            this.btnTroLai.UseVisualStyleBackColor = true;
            this.btnTroLai.Click += new System.EventHandler(this.btnTroLai_Click);
            // 
            // txtMaPhieuTra
            // 
            this.txtMaPhieuTra.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaPhieuTra.Location = new System.Drawing.Point(229, 77);
            this.txtMaPhieuTra.Name = "txtMaPhieuTra";
            this.txtMaPhieuTra.Size = new System.Drawing.Size(233, 25);
            this.txtMaPhieuTra.TabIndex = 21;
            // 
            // dtNgayTra
            // 
            this.dtNgayTra.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtNgayTra.Location = new System.Drawing.Point(229, 184);
            this.dtNgayTra.Name = "dtNgayTra";
            this.dtNgayTra.Size = new System.Drawing.Size(233, 25);
            this.dtNgayTra.TabIndex = 20;
            // 
            // lblNgayTra
            // 
            this.lblNgayTra.AutoSize = true;
            this.lblNgayTra.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNgayTra.Location = new System.Drawing.Point(78, 190);
            this.lblNgayTra.Name = "lblNgayTra";
            this.lblNgayTra.Size = new System.Drawing.Size(63, 17);
            this.lblNgayTra.TabIndex = 19;
            this.lblNgayTra.Text = "Ngày trả:";
            // 
            // lblMaPhieuTra
            // 
            this.lblMaPhieuTra.AutoSize = true;
            this.lblMaPhieuTra.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaPhieuTra.Location = new System.Drawing.Point(78, 85);
            this.lblMaPhieuTra.Name = "lblMaPhieuTra";
            this.lblMaPhieuTra.Size = new System.Drawing.Size(117, 17);
            this.lblMaPhieuTra.TabIndex = 16;
            this.lblMaPhieuTra.Text = "Mã phiếu trả sách:";
            // 
            // lblTaoPhieuTra
            // 
            this.lblTaoPhieuTra.AutoSize = true;
            this.lblTaoPhieuTra.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTaoPhieuTra.Location = new System.Drawing.Point(196, 27);
            this.lblTaoPhieuTra.Name = "lblTaoPhieuTra";
            this.lblTaoPhieuTra.Size = new System.Drawing.Size(286, 36);
            this.lblTaoPhieuTra.TabIndex = 15;
            this.lblTaoPhieuTra.Text = "PHIẾU TRẢ SÁCH";
            // 
            // txtMaPhieuMuon
            // 
            this.txtMaPhieuMuon.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaPhieuMuon.Location = new System.Drawing.Point(229, 127);
            this.txtMaPhieuMuon.Name = "txtMaPhieuMuon";
            this.txtMaPhieuMuon.Size = new System.Drawing.Size(233, 25);
            this.txtMaPhieuMuon.TabIndex = 31;
            // 
            // lblMaPhieuMuon
            // 
            this.lblMaPhieuMuon.AutoSize = true;
            this.lblMaPhieuMuon.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaPhieuMuon.Location = new System.Drawing.Point(78, 135);
            this.lblMaPhieuMuon.Name = "lblMaPhieuMuon";
            this.lblMaPhieuMuon.Size = new System.Drawing.Size(135, 17);
            this.lblMaPhieuMuon.TabIndex = 30;
            this.lblMaPhieuMuon.Text = "Mã phiếu mượn sách:";
            // 
            // lblTinhTrang
            // 
            this.lblTinhTrang.AutoSize = true;
            this.lblTinhTrang.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTinhTrang.Location = new System.Drawing.Point(78, 242);
            this.lblTinhTrang.Name = "lblTinhTrang";
            this.lblTinhTrang.Size = new System.Drawing.Size(71, 17);
            this.lblTinhTrang.TabIndex = 32;
            this.lblTinhTrang.Text = "Tình trạng:";
            // 
            // txtPhiPhat
            // 
            this.txtPhiPhat.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPhiPhat.Location = new System.Drawing.Point(229, 297);
            this.txtPhiPhat.Name = "txtPhiPhat";
            this.txtPhiPhat.Size = new System.Drawing.Size(233, 25);
            this.txtPhiPhat.TabIndex = 35;
            // 
            // lblPhatPhi
            // 
            this.lblPhatPhi.AutoSize = true;
            this.lblPhatPhi.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPhatPhi.Location = new System.Drawing.Point(78, 300);
            this.lblPhatPhi.Name = "lblPhatPhi";
            this.lblPhatPhi.Size = new System.Drawing.Size(61, 17);
            this.lblPhatPhi.TabIndex = 34;
            this.lblPhatPhi.Text = "Phí Phạt:";
            // 
            // btnThem
            // 
            this.btnThem.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.Location = new System.Drawing.Point(506, 242);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 36;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // listView1
            // 
            this.listView1.HideSelection = false;
            this.listView1.Location = new System.Drawing.Point(57, 349);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(561, 121);
            this.listView1.TabIndex = 37;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            this.listView1.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            // 
            // btnXoa
            // 
            this.btnXoa.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.Location = new System.Drawing.Point(506, 300);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 38;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // cboTT
            // 
            this.cboTT.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboTT.FormattingEnabled = true;
            this.cboTT.Location = new System.Drawing.Point(229, 239);
            this.cboTT.Name = "cboTT";
            this.cboTT.Size = new System.Drawing.Size(233, 25);
            this.cboTT.TabIndex = 39;
            // 
            // frmPhieuTraSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(673, 482);
            this.Controls.Add(this.cboTT);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.txtPhiPhat);
            this.Controls.Add(this.lblPhatPhi);
            this.Controls.Add(this.lblTinhTrang);
            this.Controls.Add(this.txtMaPhieuMuon);
            this.Controls.Add(this.lblMaPhieuMuon);
            this.Controls.Add(this.btnSửa);
            this.Controls.Add(this.btnHoanTat);
            this.Controls.Add(this.btnTroLai);
            this.Controls.Add(this.txtMaPhieuTra);
            this.Controls.Add(this.dtNgayTra);
            this.Controls.Add(this.lblNgayTra);
            this.Controls.Add(this.lblMaPhieuTra);
            this.Controls.Add(this.lblTaoPhieuTra);
            this.Name = "frmPhieuTraSach";
            this.Text = "frmPhieuTraSach";
            this.Load += new System.EventHandler(this.frmPhieuTraSach_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSửa;
        private System.Windows.Forms.Button btnHoanTat;
        private System.Windows.Forms.Button btnTroLai;
        private System.Windows.Forms.TextBox txtMaPhieuTra;
        private System.Windows.Forms.DateTimePicker dtNgayTra;
        private System.Windows.Forms.Label lblNgayTra;
        private System.Windows.Forms.Label lblMaPhieuTra;
        private System.Windows.Forms.Label lblTaoPhieuTra;
        private System.Windows.Forms.TextBox txtMaPhieuMuon;
        private System.Windows.Forms.Label lblMaPhieuMuon;
        private System.Windows.Forms.Label lblTinhTrang;
        private System.Windows.Forms.TextBox txtPhiPhat;
        private System.Windows.Forms.Label lblPhatPhi;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.ComboBox cboTT;
    }
}