namespace demoQuanLyThuVien
{
    partial class frmQLSach
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
            this.btnttSach = new System.Windows.Forms.Button();
            this.btntacgia = new System.Windows.Forms.Button();
            this.btnLoaiSach = new System.Windows.Forms.Button();
            this.lblQuanLySach = new System.Windows.Forms.Label();
            this.btnNXB = new System.Windows.Forms.Button();
            this.txtDate = new System.Windows.Forms.TextBox();
            this.btnTroVe = new System.Windows.Forms.Button();
            this.btnDauSach = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnttSach
            // 
            this.btnttSach.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnttSach.Location = new System.Drawing.Point(26, 95);
            this.btnttSach.Name = "btnttSach";
            this.btnttSach.Size = new System.Drawing.Size(214, 39);
            this.btnttSach.TabIndex = 11;
            this.btnttSach.Text = "SÁCH";
            this.btnttSach.UseVisualStyleBackColor = true;
            this.btnttSach.Click += new System.EventHandler(this.btnttSach_Click);
            // 
            // btntacgia
            // 
            this.btntacgia.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btntacgia.Location = new System.Drawing.Point(277, 95);
            this.btntacgia.Name = "btntacgia";
            this.btntacgia.Size = new System.Drawing.Size(214, 45);
            this.btntacgia.TabIndex = 15;
            this.btntacgia.Text = "TÁC GIẢ";
            this.btntacgia.UseVisualStyleBackColor = true;
            this.btntacgia.Click += new System.EventHandler(this.btntacgia_Click);
            // 
            // btnLoaiSach
            // 
            this.btnLoaiSach.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLoaiSach.Location = new System.Drawing.Point(26, 170);
            this.btnLoaiSach.Name = "btnLoaiSach";
            this.btnLoaiSach.Size = new System.Drawing.Size(214, 39);
            this.btnLoaiSach.TabIndex = 12;
            this.btnLoaiSach.Text = "LOẠI SÁCH";
            this.btnLoaiSach.UseVisualStyleBackColor = true;
            this.btnLoaiSach.Click += new System.EventHandler(this.btnLoaiSach_Click);
            // 
            // lblQuanLySach
            // 
            this.lblQuanLySach.AutoSize = true;
            this.lblQuanLySach.Font = new System.Drawing.Font("Times New Roman", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblQuanLySach.Location = new System.Drawing.Point(148, 34);
            this.lblQuanLySach.Name = "lblQuanLySach";
            this.lblQuanLySach.Size = new System.Drawing.Size(233, 32);
            this.lblQuanLySach.TabIndex = 10;
            this.lblQuanLySach.Text = "QUẢN LÝ SÁCH";
            // 
            // btnNXB
            // 
            this.btnNXB.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNXB.Location = new System.Drawing.Point(277, 164);
            this.btnNXB.Name = "btnNXB";
            this.btnNXB.Size = new System.Drawing.Size(214, 45);
            this.btnNXB.TabIndex = 14;
            this.btnNXB.Text = "NHÀ XUẤT BẢN";
            this.btnNXB.UseVisualStyleBackColor = true;
            this.btnNXB.Click += new System.EventHandler(this.btnNXB_Click);
            // 
            // txtDate
            // 
            this.txtDate.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtDate.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDate.Location = new System.Drawing.Point(448, 316);
            this.txtDate.Multiline = true;
            this.txtDate.Name = "txtDate";
            this.txtDate.ReadOnly = true;
            this.txtDate.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal;
            this.txtDate.Size = new System.Drawing.Size(125, 55);
            this.txtDate.TabIndex = 9;
            this.txtDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnTroVe
            // 
            this.btnTroVe.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTroVe.Location = new System.Drawing.Point(415, 272);
            this.btnTroVe.Name = "btnTroVe";
            this.btnTroVe.Size = new System.Drawing.Size(92, 30);
            this.btnTroVe.TabIndex = 18;
            this.btnTroVe.Text = "Trở về";
            this.btnTroVe.UseVisualStyleBackColor = true;
            this.btnTroVe.Click += new System.EventHandler(this.btnTroVe_Click);
            // 
            // btnDauSach
            // 
            this.btnDauSach.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDauSach.Location = new System.Drawing.Point(154, 241);
            this.btnDauSach.Name = "btnDauSach";
            this.btnDauSach.Size = new System.Drawing.Size(214, 39);
            this.btnDauSach.TabIndex = 19;
            this.btnDauSach.Text = "ĐẦU SÁCH";
            this.btnDauSach.UseVisualStyleBackColor = true;
            this.btnDauSach.Click += new System.EventHandler(this.btnDauSach_Click);
            // 
            // frmQLSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 314);
            this.Controls.Add(this.btnDauSach);
            this.Controls.Add(this.btnTroVe);
            this.Controls.Add(this.btntacgia);
            this.Controls.Add(this.txtDate);
            this.Controls.Add(this.btnNXB);
            this.Controls.Add(this.btnLoaiSach);
            this.Controls.Add(this.lblQuanLySach);
            this.Controls.Add(this.btnttSach);
            this.Name = "frmQLSach";
            this.Text = "frmQLSach";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnttSach;
        private System.Windows.Forms.Button btntacgia;
        private System.Windows.Forms.Button btnLoaiSach;
        private System.Windows.Forms.Label lblQuanLySach;
        private System.Windows.Forms.Button btnNXB;
        private System.Windows.Forms.TextBox txtDate;
        private System.Windows.Forms.Button btnTroVe;
        private System.Windows.Forms.Button btnDauSach;
    }
}