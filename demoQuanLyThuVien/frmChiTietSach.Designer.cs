namespace demoQuanLyThuVien
{
    partial class frmChiTietSach
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
            this.label1 = new System.Windows.Forms.Label();
            this.lblMaSach = new System.Windows.Forms.Label();
            this.lblTenSach = new System.Windows.Forms.Label();
            this.lblDauSach = new System.Windows.Forms.Label();
            this.lblLoai = new System.Windows.Forms.Label();
            this.lblTG = new System.Windows.Forms.Label();
            this.lblNgonNgu = new System.Windows.Forms.Label();
            this.lblNXB = new System.Windows.Forms.Label();
            this.txtMaSach = new System.Windows.Forms.TextBox();
            this.txtTenSach = new System.Windows.Forms.TextBox();
            this.btnTroVe = new System.Windows.Forms.Button();
            this.BtnHoanTat = new System.Windows.Forms.Button();
            this.cboLoaiSach = new System.Windows.Forms.ComboBox();
            this.lblTT = new System.Windows.Forms.Label();
            this.cboTT = new System.Windows.Forms.ComboBox();
            this.cboTG = new System.Windows.Forms.ComboBox();
            this.CboNXB = new System.Windows.Forms.ComboBox();
            this.cboNN = new System.Windows.Forms.ComboBox();
            this.cboDausach = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(208, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(292, 36);
            this.label1.TabIndex = 0;
            this.label1.Text = "THÔNG TIN SÁCH";
            // 
            // lblMaSach
            // 
            this.lblMaSach.AutoSize = true;
            this.lblMaSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaSach.Location = new System.Drawing.Point(141, 108);
            this.lblMaSach.Name = "lblMaSach";
            this.lblMaSach.Size = new System.Drawing.Size(62, 17);
            this.lblMaSach.TabIndex = 1;
            this.lblMaSach.Text = "Mã sách:";
            // 
            // lblTenSach
            // 
            this.lblTenSach.AutoSize = true;
            this.lblTenSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenSach.Location = new System.Drawing.Point(141, 161);
            this.lblTenSach.Name = "lblTenSach";
            this.lblTenSach.Size = new System.Drawing.Size(65, 17);
            this.lblTenSach.TabIndex = 2;
            this.lblTenSach.Text = "Tên sách:";
            // 
            // lblDauSach
            // 
            this.lblDauSach.AutoSize = true;
            this.lblDauSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDauSach.Location = new System.Drawing.Point(141, 218);
            this.lblDauSach.Name = "lblDauSach";
            this.lblDauSach.Size = new System.Drawing.Size(67, 17);
            this.lblDauSach.TabIndex = 3;
            this.lblDauSach.Text = "Đầu sách:";
            // 
            // lblLoai
            // 
            this.lblLoai.AutoSize = true;
            this.lblLoai.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLoai.Location = new System.Drawing.Point(141, 273);
            this.lblLoai.Name = "lblLoai";
            this.lblLoai.Size = new System.Drawing.Size(37, 17);
            this.lblLoai.TabIndex = 4;
            this.lblLoai.Text = "Loại:";
            // 
            // lblTG
            // 
            this.lblTG.AutoSize = true;
            this.lblTG.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTG.Location = new System.Drawing.Point(141, 332);
            this.lblTG.Name = "lblTG";
            this.lblTG.Size = new System.Drawing.Size(55, 17);
            this.lblTG.TabIndex = 5;
            this.lblTG.Text = "Tác giả:";
            // 
            // lblNgonNgu
            // 
            this.lblNgonNgu.AutoSize = true;
            this.lblNgonNgu.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNgonNgu.Location = new System.Drawing.Point(141, 389);
            this.lblNgonNgu.Name = "lblNgonNgu";
            this.lblNgonNgu.Size = new System.Drawing.Size(69, 17);
            this.lblNgonNgu.TabIndex = 6;
            this.lblNgonNgu.Text = "Ngôn ngữ:";
            // 
            // lblNXB
            // 
            this.lblNXB.AutoSize = true;
            this.lblNXB.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNXB.Location = new System.Drawing.Point(141, 449);
            this.lblNXB.Name = "lblNXB";
            this.lblNXB.Size = new System.Drawing.Size(90, 17);
            this.lblNXB.TabIndex = 7;
            this.lblNXB.Text = "Nhà xuất bản:";
            // 
            // txtMaSach
            // 
            this.txtMaSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaSach.Location = new System.Drawing.Point(237, 100);
            this.txtMaSach.Name = "txtMaSach";
            this.txtMaSach.Size = new System.Drawing.Size(263, 25);
            this.txtMaSach.TabIndex = 8;
            // 
            // txtTenSach
            // 
            this.txtTenSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenSach.Location = new System.Drawing.Point(237, 153);
            this.txtTenSach.Name = "txtTenSach";
            this.txtTenSach.Size = new System.Drawing.Size(263, 25);
            this.txtTenSach.TabIndex = 10;
            // 
            // btnTroVe
            // 
            this.btnTroVe.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTroVe.Location = new System.Drawing.Point(103, 554);
            this.btnTroVe.Name = "btnTroVe";
            this.btnTroVe.Size = new System.Drawing.Size(75, 23);
            this.btnTroVe.TabIndex = 15;
            this.btnTroVe.Text = "Trở về";
            this.btnTroVe.UseVisualStyleBackColor = true;
            this.btnTroVe.Click += new System.EventHandler(this.btnTroVe_Click);
            // 
            // BtnHoanTat
            // 
            this.BtnHoanTat.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnHoanTat.Location = new System.Drawing.Point(506, 554);
            this.BtnHoanTat.Name = "BtnHoanTat";
            this.BtnHoanTat.Size = new System.Drawing.Size(75, 23);
            this.BtnHoanTat.TabIndex = 18;
            this.BtnHoanTat.Text = "Hoàn tất";
            this.BtnHoanTat.UseVisualStyleBackColor = true;
            this.BtnHoanTat.Click += new System.EventHandler(this.BtnHoanTat_Click);
            // 
            // cboLoaiSach
            // 
            this.cboLoaiSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboLoaiSach.FormattingEnabled = true;
            this.cboLoaiSach.Location = new System.Drawing.Point(237, 270);
            this.cboLoaiSach.Name = "cboLoaiSach";
            this.cboLoaiSach.Size = new System.Drawing.Size(263, 25);
            this.cboLoaiSach.TabIndex = 19;
            // 
            // lblTT
            // 
            this.lblTT.AutoSize = true;
            this.lblTT.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTT.Location = new System.Drawing.Point(141, 499);
            this.lblTT.Name = "lblTT";
            this.lblTT.Size = new System.Drawing.Size(71, 17);
            this.lblTT.TabIndex = 20;
            this.lblTT.Text = "Tình trạng:";
            // 
            // cboTT
            // 
            this.cboTT.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboTT.FormattingEnabled = true;
            this.cboTT.Location = new System.Drawing.Point(237, 496);
            this.cboTT.Name = "cboTT";
            this.cboTT.Size = new System.Drawing.Size(263, 25);
            this.cboTT.TabIndex = 22;
            // 
            // cboTG
            // 
            this.cboTG.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboTG.FormattingEnabled = true;
            this.cboTG.Location = new System.Drawing.Point(237, 329);
            this.cboTG.Name = "cboTG";
            this.cboTG.Size = new System.Drawing.Size(263, 25);
            this.cboTG.TabIndex = 23;
            // 
            // CboNXB
            // 
            this.CboNXB.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboNXB.FormattingEnabled = true;
            this.CboNXB.Location = new System.Drawing.Point(237, 441);
            this.CboNXB.Name = "CboNXB";
            this.CboNXB.Size = new System.Drawing.Size(263, 25);
            this.CboNXB.TabIndex = 24;
            // 
            // cboNN
            // 
            this.cboNN.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboNN.FormattingEnabled = true;
            this.cboNN.Location = new System.Drawing.Point(237, 386);
            this.cboNN.Name = "cboNN";
            this.cboNN.Size = new System.Drawing.Size(263, 25);
            this.cboNN.TabIndex = 25;
            // 
            // cboDausach
            // 
            this.cboDausach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboDausach.FormattingEnabled = true;
            this.cboDausach.Location = new System.Drawing.Point(237, 215);
            this.cboDausach.Name = "cboDausach";
            this.cboDausach.Size = new System.Drawing.Size(263, 25);
            this.cboDausach.TabIndex = 26;
            // 
            // frmChiTietSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(683, 602);
            this.Controls.Add(this.cboDausach);
            this.Controls.Add(this.cboNN);
            this.Controls.Add(this.CboNXB);
            this.Controls.Add(this.cboTG);
            this.Controls.Add(this.cboTT);
            this.Controls.Add(this.lblTT);
            this.Controls.Add(this.cboLoaiSach);
            this.Controls.Add(this.BtnHoanTat);
            this.Controls.Add(this.btnTroVe);
            this.Controls.Add(this.txtTenSach);
            this.Controls.Add(this.txtMaSach);
            this.Controls.Add(this.lblNXB);
            this.Controls.Add(this.lblNgonNgu);
            this.Controls.Add(this.lblTG);
            this.Controls.Add(this.lblLoai);
            this.Controls.Add(this.lblDauSach);
            this.Controls.Add(this.lblTenSach);
            this.Controls.Add(this.lblMaSach);
            this.Controls.Add(this.label1);
            this.Name = "frmChiTietSach";
            this.Text = "frmChiTiétach";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblMaSach;
        private System.Windows.Forms.Label lblTenSach;
        private System.Windows.Forms.Label lblDauSach;
        private System.Windows.Forms.Label lblLoai;
        private System.Windows.Forms.Label lblTG;
        private System.Windows.Forms.Label lblNgonNgu;
        private System.Windows.Forms.Label lblNXB;
        private System.Windows.Forms.TextBox txtMaSach;
        private System.Windows.Forms.TextBox txtTenSach;
        private System.Windows.Forms.Button btnTroVe;
        private System.Windows.Forms.Button BtnHoanTat;
        private System.Windows.Forms.ComboBox cboLoaiSach;
        private System.Windows.Forms.Label lblTT;
        private System.Windows.Forms.ComboBox cboTT;
        private System.Windows.Forms.ComboBox cboTG;
        private System.Windows.Forms.ComboBox CboNXB;
        private System.Windows.Forms.ComboBox cboNN;
        private System.Windows.Forms.ComboBox cboDausach;
    }
}