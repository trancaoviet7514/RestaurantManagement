namespace RestaurantManagement
{
    partial class fGeneral
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fGeneral));
            this.menuOption = new System.Windows.Forms.MenuStrip();
            this.menuAccName = new System.Windows.Forms.ToolStripMenuItem();
            this.menuAdmin = new System.Windows.Forms.ToolStripMenuItem();
            this.menuTableManager = new System.Windows.Forms.ToolStripMenuItem();
            this.menuInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.menuLogout = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.menuExit = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.menuOption.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuOption
            // 
            this.menuOption.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.menuOption.BackColor = System.Drawing.SystemColors.MenuBar;
            this.menuOption.Dock = System.Windows.Forms.DockStyle.None;
            this.menuOption.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuAccName});
            this.menuOption.Location = new System.Drawing.Point(726, -1);
            this.menuOption.Name = "menuOption";
            this.menuOption.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.menuOption.Size = new System.Drawing.Size(101, 24);
            this.menuOption.TabIndex = 6;
            this.menuOption.Text = "text";
            // 
            // menuAccName
            // 
            this.menuAccName.AutoToolTip = true;
            this.menuAccName.BackColor = System.Drawing.SystemColors.MenuBar;
            this.menuAccName.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuAdmin,
            this.menuTableManager,
            this.menuInfo,
            this.menuLogout,
            this.toolStripSeparator1,
            this.menuExit});
            this.menuAccName.ForeColor = System.Drawing.SystemColors.Highlight;
            this.menuAccName.Image = global::RestaurantManagement.Properties.Resources.icons8_Profile;
            this.menuAccName.Name = "menuAccName";
            this.menuAccName.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.menuAccName.Size = new System.Drawing.Size(93, 20);
            this.menuAccName.Text = "Đăng nhập";
            this.menuAccName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.menuAccName.Click += new System.EventHandler(this.menuAccName_Click);
            // 
            // menuAdmin
            // 
            this.menuAdmin.Image = global::RestaurantManagement.Properties.Resources.icons8_manager;
            this.menuAdmin.Name = "menuAdmin";
            this.menuAdmin.Size = new System.Drawing.Size(171, 22);
            this.menuAdmin.Text = "Quản lí cửa hàng";
            this.menuAdmin.Visible = false;
            this.menuAdmin.Click += new System.EventHandler(this.menuAdmin_Click_1);
            // 
            // menuTableManager
            // 
            this.menuTableManager.Image = global::RestaurantManagement.Properties.Resources.cutlery;
            this.menuTableManager.Name = "menuTableManager";
            this.menuTableManager.Size = new System.Drawing.Size(171, 22);
            this.menuTableManager.Text = "Quản lí bàn ăn";
            this.menuTableManager.Visible = false;
            this.menuTableManager.Click += new System.EventHandler(this.menuTableManager_Click_1);
            // 
            // menuInfo
            // 
            this.menuInfo.Image = global::RestaurantManagement.Properties.Resources.icons8_Profile;
            this.menuInfo.Name = "menuInfo";
            this.menuInfo.Size = new System.Drawing.Size(171, 22);
            this.menuInfo.Text = "Thông tin cá nhân";
            this.menuInfo.Visible = false;
            this.menuInfo.Click += new System.EventHandler(this.menuInfo_Click);
            // 
            // menuLogout
            // 
            this.menuLogout.Image = global::RestaurantManagement.Properties.Resources.icons8_Exit;
            this.menuLogout.Name = "menuLogout";
            this.menuLogout.Size = new System.Drawing.Size(171, 22);
            this.menuLogout.Text = "Đăng xuất";
            this.menuLogout.Visible = false;
            this.menuLogout.Click += new System.EventHandler(this.menuLogout_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(168, 6);
            // 
            // menuExit
            // 
            this.menuExit.Image = global::RestaurantManagement.Properties.Resources.icons8_Logout;
            this.menuExit.Name = "menuExit";
            this.menuExit.Size = new System.Drawing.Size(171, 22);
            this.menuExit.Text = "Thoát";
            this.menuExit.Click += new System.EventHandler(this.menuExit_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.menuOption);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(836, 23);
            this.panel1.TabIndex = 7;
            // 
            // fGeneral
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(836, 461);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "fGeneral";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Phần mềm quản lí cửa hàng ăn uống";
            this.menuOption.ResumeLayout(false);
            this.menuOption.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuOption;
        private System.Windows.Forms.ToolStripMenuItem menuAccName;
        private System.Windows.Forms.ToolStripMenuItem menuInfo;
        private System.Windows.Forms.ToolStripMenuItem menuLogout;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ToolStripMenuItem menuAdmin;
        private System.Windows.Forms.ToolStripMenuItem menuTableManager;
        private System.Windows.Forms.ToolStripMenuItem menuExit;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
    }
}