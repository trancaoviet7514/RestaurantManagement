namespace RestaurantManagement
{
    partial class fTableMananger
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fTableMananger));
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lvBill = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel4 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.txbTotal = new System.Windows.Forms.TextBox();
            this.cbSwitchTable = new System.Windows.Forms.ComboBox();
            this.btnSwitchTable = new System.Windows.Forms.Button();
            this.nmDiscount = new System.Windows.Forms.NumericUpDown();
            this.button1 = new System.Windows.Forms.Button();
            this.btnCheckOut = new System.Windows.Forms.Button();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnAddFood = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.nmcount = new System.Windows.Forms.NumericUpDown();
            this.cbFood = new System.Windows.Forms.ComboBox();
            this.cbCategory = new System.Windows.Forms.ComboBox();
            this.flpTable = new System.Windows.Forms.FlowLayoutPanel();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnNhanBan = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.cbTableOrderType = new System.Windows.Forms.ComboBox();
            this.txbTenNguoiDat = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.btnUpdateTableOrder = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.btnDeleteTableOrder = new System.Windows.Forms.Button();
            this.txbPhone = new System.Windows.Forms.TextBox();
            this.btnAddTableOrder = new System.Windows.Forms.Button();
            this.dtpkDateOrder = new System.Windows.Forms.DateTimePicker();
            this.dtpkTimeOrder = new System.Windows.Forms.DateTimePicker();
            this.cbTableOrderID = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnViewAllTableOrder = new System.Windows.Forms.Button();
            this.btnSeachTableOrder = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.txbSDTNguoiDat_Seach = new System.Windows.Forms.TextBox();
            this.lvTableOrder = new System.Windows.Forms.ListView();
            this.columnHeader6 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader10 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader7 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader9 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Header8 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmDiscount)).BeginInit();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmcount)).BeginInit();
            this.tabPage3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(830, 430);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.panel2);
            this.tabPage1.Controls.Add(this.flpTable);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(822, 404);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Phòng Ăn";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.lvBill);
            this.panel2.Controls.Add(this.panel4);
            this.panel2.Controls.Add(this.panel3);
            this.panel2.Location = new System.Drawing.Point(397, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(422, 398);
            this.panel2.TabIndex = 11;
            // 
            // lvBill
            // 
            this.lvBill.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.lvBill.FullRowSelect = true;
            this.lvBill.GridLines = true;
            this.lvBill.Location = new System.Drawing.Point(3, 60);
            this.lvBill.Name = "lvBill";
            this.lvBill.Size = new System.Drawing.Size(416, 271);
            this.lvBill.TabIndex = 10;
            this.lvBill.UseCompatibleStateImageBehavior = false;
            this.lvBill.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Tên món";
            this.columnHeader1.Width = 182;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Số lượng";
            this.columnHeader2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.columnHeader2.Width = 54;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Đơn giá";
            this.columnHeader3.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.columnHeader3.Width = 71;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Thành tiền";
            this.columnHeader4.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.columnHeader4.Width = 103;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.label1);
            this.panel4.Controls.Add(this.txbTotal);
            this.panel4.Controls.Add(this.cbSwitchTable);
            this.panel4.Controls.Add(this.btnSwitchTable);
            this.panel4.Controls.Add(this.nmDiscount);
            this.panel4.Controls.Add(this.button1);
            this.panel4.Controls.Add(this.btnCheckOut);
            this.panel4.Location = new System.Drawing.Point(3, 337);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(416, 56);
            this.panel4.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(168, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "Tổng cộng:";
            // 
            // txbTotal
            // 
            this.txbTotal.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.txbTotal.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbTotal.ForeColor = System.Drawing.Color.Red;
            this.txbTotal.Location = new System.Drawing.Point(167, 32);
            this.txbTotal.Name = "txbTotal";
            this.txbTotal.ReadOnly = true;
            this.txbTotal.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.txbTotal.Size = new System.Drawing.Size(146, 20);
            this.txbTotal.TabIndex = 8;
            this.txbTotal.Text = "0";
            this.txbTotal.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // cbSwitchTable
            // 
            this.cbSwitchTable.FormattingEnabled = true;
            this.cbSwitchTable.Location = new System.Drawing.Point(3, 30);
            this.cbSwitchTable.Name = "cbSwitchTable";
            this.cbSwitchTable.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cbSwitchTable.Size = new System.Drawing.Size(76, 21);
            this.cbSwitchTable.TabIndex = 4;
            // 
            // btnSwitchTable
            // 
            this.btnSwitchTable.Location = new System.Drawing.Point(3, 3);
            this.btnSwitchTable.Name = "btnSwitchTable";
            this.btnSwitchTable.Size = new System.Drawing.Size(76, 23);
            this.btnSwitchTable.TabIndex = 7;
            this.btnSwitchTable.Text = "Chuyển bàn";
            this.btnSwitchTable.UseVisualStyleBackColor = true;
            this.btnSwitchTable.Click += new System.EventHandler(this.btnSwitchTable_Click_1);
            // 
            // nmDiscount
            // 
            this.nmDiscount.Location = new System.Drawing.Point(96, 32);
            this.nmDiscount.Name = "nmDiscount";
            this.nmDiscount.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.nmDiscount.Size = new System.Drawing.Size(65, 20);
            this.nmDiscount.TabIndex = 4;
            this.nmDiscount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(96, 4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(65, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "Giảm giá";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // btnCheckOut
            // 
            this.btnCheckOut.Image = global::RestaurantManagement.Properties.Resources.transfer_money;
            this.btnCheckOut.Location = new System.Drawing.Point(319, 4);
            this.btnCheckOut.Name = "btnCheckOut";
            this.btnCheckOut.Size = new System.Drawing.Size(92, 49);
            this.btnCheckOut.TabIndex = 4;
            this.btnCheckOut.UseVisualStyleBackColor = true;
            this.btnCheckOut.Click += new System.EventHandler(this.btnCheckOut_Click_1);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnAddFood);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.nmcount);
            this.panel3.Controls.Add(this.cbFood);
            this.panel3.Controls.Add(this.cbCategory);
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(416, 53);
            this.panel3.TabIndex = 1;
            // 
            // btnAddFood
            // 
            this.btnAddFood.Image = global::RestaurantManagement.Properties.Resources.plus;
            this.btnAddFood.Location = new System.Drawing.Point(357, 3);
            this.btnAddFood.Name = "btnAddFood";
            this.btnAddFood.Size = new System.Drawing.Size(54, 47);
            this.btnAddFood.TabIndex = 2;
            this.btnAddFood.UseVisualStyleBackColor = true;
            this.btnAddFood.Click += new System.EventHandler(this.btnAddFood_Click_1);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 8);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Danh mục:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 32);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Tên món:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(299, 8);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Số lượng:";
            // 
            // nmcount
            // 
            this.nmcount.Location = new System.Drawing.Point(299, 30);
            this.nmcount.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.nmcount.Name = "nmcount";
            this.nmcount.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.nmcount.Size = new System.Drawing.Size(52, 20);
            this.nmcount.TabIndex = 3;
            this.nmcount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.nmcount.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // cbFood
            // 
            this.cbFood.FormattingEnabled = true;
            this.cbFood.Location = new System.Drawing.Point(68, 30);
            this.cbFood.Name = "cbFood";
            this.cbFood.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cbFood.Size = new System.Drawing.Size(225, 21);
            this.cbFood.TabIndex = 1;
            // 
            // cbCategory
            // 
            this.cbCategory.FormattingEnabled = true;
            this.cbCategory.Location = new System.Drawing.Point(68, 4);
            this.cbCategory.Name = "cbCategory";
            this.cbCategory.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cbCategory.Size = new System.Drawing.Size(225, 21);
            this.cbCategory.TabIndex = 0;
            this.cbCategory.SelectedIndexChanged += new System.EventHandler(this.cbCategory_SelectedIndexChanged_1);
            // 
            // flpTable
            // 
            this.flpTable.AutoScroll = true;
            this.flpTable.Location = new System.Drawing.Point(6, 3);
            this.flpTable.Name = "flpTable";
            this.flpTable.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.flpTable.Size = new System.Drawing.Size(385, 393);
            this.flpTable.TabIndex = 0;
            this.flpTable.Paint += new System.Windows.Forms.PaintEventHandler(this.flpTable_Paint);
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.groupBox2);
            this.tabPage3.Controls.Add(this.groupBox1);
            this.tabPage3.Controls.Add(this.lvTableOrder);
            this.tabPage3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(822, 404);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Đặt bàn";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnNhanBan);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.cbTableOrderType);
            this.groupBox2.Controls.Add(this.txbTenNguoiDat);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.btnUpdateTableOrder);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.btnDeleteTableOrder);
            this.groupBox2.Controls.Add(this.txbPhone);
            this.groupBox2.Controls.Add(this.btnAddTableOrder);
            this.groupBox2.Controls.Add(this.dtpkDateOrder);
            this.groupBox2.Controls.Add(this.dtpkTimeOrder);
            this.groupBox2.Controls.Add(this.cbTableOrderID);
            this.groupBox2.Location = new System.Drawing.Point(504, 73);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(310, 301);
            this.groupBox2.TabIndex = 18;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chỉnh sửa";
            // 
            // btnNhanBan
            // 
            this.btnNhanBan.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNhanBan.Image = global::RestaurantManagement.Properties.Resources.placeholder;
            this.btnNhanBan.Location = new System.Drawing.Point(154, 215);
            this.btnNhanBan.Name = "btnNhanBan";
            this.btnNhanBan.Size = new System.Drawing.Size(40, 40);
            this.btnNhanBan.TabIndex = 19;
            this.btnNhanBan.UseVisualStyleBackColor = true;
            this.btnNhanBan.Click += new System.EventHandler(this.btnNhanBan_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(10, 101);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(99, 16);
            this.label5.TabIndex = 17;
            this.label5.Text = "Tên người đặt  :";
            // 
            // cbTableOrderType
            // 
            this.cbTableOrderType.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbTableOrderType.FormattingEnabled = true;
            this.cbTableOrderType.Items.AddRange(new object[] {
            "VIP",
            "Normal"});
            this.cbTableOrderType.Location = new System.Drawing.Point(118, 31);
            this.cbTableOrderType.Name = "cbTableOrderType";
            this.cbTableOrderType.Size = new System.Drawing.Size(180, 24);
            this.cbTableOrderType.TabIndex = 16;
            this.cbTableOrderType.SelectedIndexChanged += new System.EventHandler(this.cbTableOrderType_SelectedIndexChanged);
            // 
            // txbTenNguoiDat
            // 
            this.txbTenNguoiDat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbTenNguoiDat.Location = new System.Drawing.Point(118, 91);
            this.txbTenNguoiDat.Name = "txbTenNguoiDat";
            this.txbTenNguoiDat.Size = new System.Drawing.Size(180, 22);
            this.txbTenNguoiDat.TabIndex = 18;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(10, 159);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(96, 16);
            this.label6.TabIndex = 1;
            this.label6.Text = "Ngày đặt          :";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(10, 39);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(96, 16);
            this.label10.TabIndex = 15;
            this.label10.Text = "Loại bàn           :";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(10, 129);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(99, 16);
            this.label7.TabIndex = 2;
            this.label7.Text = "SĐT người đặt :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(10, 70);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(98, 16);
            this.label8.TabIndex = 3;
            this.label8.Text = "Mã bàn              :";
            // 
            // btnUpdateTableOrder
            // 
            this.btnUpdateTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpdateTableOrder.Image = global::RestaurantManagement.Properties.Resources.refresh;
            this.btnUpdateTableOrder.Location = new System.Drawing.Point(205, 215);
            this.btnUpdateTableOrder.Name = "btnUpdateTableOrder";
            this.btnUpdateTableOrder.Size = new System.Drawing.Size(40, 40);
            this.btnUpdateTableOrder.TabIndex = 13;
            this.btnUpdateTableOrder.UseVisualStyleBackColor = true;
            this.btnUpdateTableOrder.Click += new System.EventHandler(this.btnUpdateTableOrder_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(10, 188);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(96, 16);
            this.label9.TabIndex = 4;
            this.label9.Text = "Giờ đặt              :";
            // 
            // btnDeleteTableOrder
            // 
            this.btnDeleteTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeleteTableOrder.Image = global::RestaurantManagement.Properties.Resources.delete_button;
            this.btnDeleteTableOrder.Location = new System.Drawing.Point(101, 216);
            this.btnDeleteTableOrder.Name = "btnDeleteTableOrder";
            this.btnDeleteTableOrder.Size = new System.Drawing.Size(40, 40);
            this.btnDeleteTableOrder.TabIndex = 12;
            this.btnDeleteTableOrder.UseVisualStyleBackColor = true;
            this.btnDeleteTableOrder.Click += new System.EventHandler(this.btnDeleteTableOrder_Click);
            // 
            // txbPhone
            // 
            this.txbPhone.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbPhone.Location = new System.Drawing.Point(118, 121);
            this.txbPhone.Name = "txbPhone";
            this.txbPhone.Size = new System.Drawing.Size(180, 22);
            this.txbPhone.TabIndex = 6;
            // 
            // btnAddTableOrder
            // 
            this.btnAddTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddTableOrder.Image = global::RestaurantManagement.Properties.Resources.plus;
            this.btnAddTableOrder.Location = new System.Drawing.Point(258, 215);
            this.btnAddTableOrder.Name = "btnAddTableOrder";
            this.btnAddTableOrder.Size = new System.Drawing.Size(40, 40);
            this.btnAddTableOrder.TabIndex = 11;
            this.btnAddTableOrder.UseVisualStyleBackColor = true;
            this.btnAddTableOrder.Click += new System.EventHandler(this.btnAddTableOrder_Click);
            // 
            // dtpkDateOrder
            // 
            this.dtpkDateOrder.CustomFormat = "dd/MM/yyyy";
            this.dtpkDateOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpkDateOrder.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpkDateOrder.Location = new System.Drawing.Point(118, 151);
            this.dtpkDateOrder.Name = "dtpkDateOrder";
            this.dtpkDateOrder.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.dtpkDateOrder.Size = new System.Drawing.Size(180, 22);
            this.dtpkDateOrder.TabIndex = 7;
            // 
            // dtpkTimeOrder
            // 
            this.dtpkTimeOrder.CustomFormat = "hh:mm tt";
            this.dtpkTimeOrder.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right;
            this.dtpkTimeOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpkTimeOrder.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpkTimeOrder.Location = new System.Drawing.Point(118, 181);
            this.dtpkTimeOrder.Name = "dtpkTimeOrder";
            this.dtpkTimeOrder.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.dtpkTimeOrder.RightToLeftLayout = true;
            this.dtpkTimeOrder.ShowUpDown = true;
            this.dtpkTimeOrder.Size = new System.Drawing.Size(180, 22);
            this.dtpkTimeOrder.TabIndex = 10;
            // 
            // cbTableOrderID
            // 
            this.cbTableOrderID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbTableOrderID.FormattingEnabled = true;
            this.cbTableOrderID.Location = new System.Drawing.Point(118, 61);
            this.cbTableOrderID.Name = "cbTableOrderID";
            this.cbTableOrderID.Size = new System.Drawing.Size(180, 24);
            this.cbTableOrderID.TabIndex = 9;
            this.cbTableOrderID.SelectedIndexChanged += new System.EventHandler(this.cbTableOrderID_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnViewAllTableOrder);
            this.groupBox1.Controls.Add(this.btnSeachTableOrder);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.txbSDTNguoiDat_Seach);
            this.groupBox1.Location = new System.Drawing.Point(8, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(806, 61);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tìm kiếm";
            // 
            // btnViewAllTableOrder
            // 
            this.btnViewAllTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnViewAllTableOrder.Image = global::RestaurantManagement.Properties.Resources.eye;
            this.btnViewAllTableOrder.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnViewAllTableOrder.Location = new System.Drawing.Point(673, 12);
            this.btnViewAllTableOrder.Name = "btnViewAllTableOrder";
            this.btnViewAllTableOrder.Size = new System.Drawing.Size(80, 40);
            this.btnViewAllTableOrder.TabIndex = 18;
            this.btnViewAllTableOrder.Text = "Tất cả";
            this.btnViewAllTableOrder.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnViewAllTableOrder.UseVisualStyleBackColor = true;
            this.btnViewAllTableOrder.Click += new System.EventHandler(this.btnViewAllTableOrder_Click);
            // 
            // btnSeachTableOrder
            // 
            this.btnSeachTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSeachTableOrder.Image = global::RestaurantManagement.Properties.Resources.search;
            this.btnSeachTableOrder.Location = new System.Drawing.Point(614, 12);
            this.btnSeachTableOrder.Name = "btnSeachTableOrder";
            this.btnSeachTableOrder.Size = new System.Drawing.Size(40, 40);
            this.btnSeachTableOrder.TabIndex = 17;
            this.btnSeachTableOrder.UseVisualStyleBackColor = true;
            this.btnSeachTableOrder.Click += new System.EventHandler(this.btnSeachTableOrder_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(325, 24);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(96, 16);
            this.label11.TabIndex = 16;
            this.label11.Text = "SĐT người đặt:";
            // 
            // txbSDTNguoiDat_Seach
            // 
            this.txbSDTNguoiDat_Seach.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbSDTNguoiDat_Seach.Location = new System.Drawing.Point(437, 20);
            this.txbSDTNguoiDat_Seach.Name = "txbSDTNguoiDat_Seach";
            this.txbSDTNguoiDat_Seach.Size = new System.Drawing.Size(147, 24);
            this.txbSDTNguoiDat_Seach.TabIndex = 7;
            // 
            // lvTableOrder
            // 
            this.lvTableOrder.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader6,
            this.columnHeader10,
            this.columnHeader7,
            this.columnHeader9,
            this.Header8,
            this.columnHeader5});
            this.lvTableOrder.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvTableOrder.FullRowSelect = true;
            this.lvTableOrder.GridLines = true;
            this.lvTableOrder.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
            this.lvTableOrder.Location = new System.Drawing.Point(0, 73);
            this.lvTableOrder.Name = "lvTableOrder";
            this.lvTableOrder.Size = new System.Drawing.Size(498, 301);
            this.lvTableOrder.TabIndex = 5;
            this.lvTableOrder.UseCompatibleStateImageBehavior = false;
            this.lvTableOrder.View = System.Windows.Forms.View.Details;
            this.lvTableOrder.SelectedIndexChanged += new System.EventHandler(this.lvTableOrder_SelectedIndexChanged);
            // 
            // columnHeader6
            // 
            this.columnHeader6.DisplayIndex = 1;
            this.columnHeader6.Text = "Tên bàn";
            this.columnHeader6.Width = 64;
            // 
            // columnHeader10
            // 
            this.columnHeader10.DisplayIndex = 0;
            this.columnHeader10.Text = "Tên người đặt";
            this.columnHeader10.Width = 100;
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "SDT Người đặt";
            this.columnHeader7.Width = 110;
            // 
            // columnHeader9
            // 
            this.columnHeader9.Text = "Giờ đặt";
            // 
            // Header8
            // 
            this.Header8.Text = "Ngày đặt";
            this.Header8.Width = 80;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "Loại bàn";
            this.columnHeader5.Width = 80;
            // 
            // fTableMananger
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(830, 430);
            this.Controls.Add(this.tabControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "fTableMananger";
            this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Phần mềm quản lý cửa hàng ăn uống";
            this.Load += new System.EventHandler(this.fTableMananger_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmDiscount)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmcount)).EndInit();
            this.tabPage3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ListView lvBill;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txbTotal;
        private System.Windows.Forms.ComboBox cbSwitchTable;
        private System.Windows.Forms.Button btnSwitchTable;
        private System.Windows.Forms.NumericUpDown nmDiscount;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnCheckOut;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown nmcount;
        private System.Windows.Forms.Button btnAddFood;
        private System.Windows.Forms.ComboBox cbFood;
        private System.Windows.Forms.ComboBox cbCategory;
        private System.Windows.Forms.FlowLayoutPanel flpTable;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ListView lvTableOrder;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnUpdateTableOrder;
        private System.Windows.Forms.Button btnDeleteTableOrder;
        private System.Windows.Forms.Button btnAddTableOrder;
        private System.Windows.Forms.DateTimePicker dtpkTimeOrder;
        private System.Windows.Forms.ComboBox cbTableOrderID;
        private System.Windows.Forms.DateTimePicker dtpkDateOrder;
        private System.Windows.Forms.TextBox txbPhone;
        private System.Windows.Forms.ColumnHeader columnHeader6;
        private System.Windows.Forms.ColumnHeader columnHeader7;
        private System.Windows.Forms.ColumnHeader Header8;
        private System.Windows.Forms.ComboBox cbTableOrderType;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSeachTableOrder;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txbSDTNguoiDat_Seach;
        private System.Windows.Forms.ColumnHeader columnHeader10;
        private System.Windows.Forms.ColumnHeader columnHeader9;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txbTenNguoiDat;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.Button btnViewAllTableOrder;
        private System.Windows.Forms.Button btnNhanBan;
    }
}