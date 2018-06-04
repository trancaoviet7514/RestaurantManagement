using RestaurantManagement.DAO;
using RestaurantManagement.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RestaurantManagement
{
    public partial class fTableMananger : Form
    {
        private Account loginAccount;
        BindingSource bdTableOrder = new BindingSource();
        
        public Account LoginAccount
        {
            get { return loginAccount; }
            set { loginAccount = value; ChangAccount(loginAccount.Type);}
        }
 
        #region method

        public void LoadCategory()
        {

            List<Category> listCategory = CategoryDAO.Instance.getListCategory();

            cbCategory.DataSource = listCategory;

            cbCategory.DisplayMember = "name";

        }

        public void LoadListFoodByCategoryID(int id)
        {
            List<Food> listFood = FoodDAO.Instance.getListFoodByCategoryID(id);

            cbFood.DataSource = listFood;

            cbFood.DisplayMember = "name";
        }

        public fTableMananger() {


            InitializeComponent();

            LoadListTable();

            LoadCategory();

            int id = 1;

            LoadListFoodByCategoryID(id);

            LoadComboboxTable();

            LoadListTableOrder();

            LoadComboboxTableOrderType();

            LoadComboboxTableID();

            loadDateTimeforDTPKOrder();
        }
        public fTableMananger(Account acc)
        {
            InitializeComponent();

            this.LoginAccount = acc;

            LoadListTable();

            LoadCategory();

            int id = 1;

            LoadListFoodByCategoryID(id);

            LoadComboboxTable();

            LoadListTableOrder();            
  
            LoadComboboxTableOrderType();

            LoadComboboxTableID();

            loadDateTimeforDTPKOrder();

        }

        private void loadDateTimeforDTPKOrder()
        {
            DateTime today = DateTime.Now;
            dtpkDateOrder.Value = new DateTime(today.Year, today.Month, today.Day);
        }

        void LoadComboboxTableOrderType()
        {
            cbTableOrderType.SelectedIndex = 0;
        }
        void LoadComboboxTableID()
        {
            cbTableOrderID.DataSource = TableDAO.Instance.LoadListTable();
            cbTableOrderID.DisplayMember = "ID";
        }
        void LoadListTableOrder()
        {
            lvTableOrder.Items.Clear();
            List<TableOrder> listTableOrder = TableOrderDAO.Instance.getListTableOrder();
            foreach (TableOrder item in listTableOrder)
            {
                ListViewItem lvItem = new ListViewItem(item.IDTable.ToString());
                lvItem.SubItems.Add((item.TableName.ToString()));
                lvItem.SubItems.Add((item.SDTNguoiDat.ToString()));
                lvItem.SubItems.Add((item.TimeOrder.ToString()));
                lvItem.SubItems.Add((item.DateOrder.ToString()));
                lvItem.SubItems.Add((item.TableType.ToString()));
                lvTableOrder.Items.Add(lvItem);
            }
        }
        void LoadListTable()
        {
            flpTable.Controls.Clear();

            List<Table> listTable = TableDAO.Instance.LoadListTable();

            foreach (Table item in listTable)
            {
                Button btn = new Button() { Width = 90, Height = 95 };
                
                btn.Text = item.Name + "\n"+ item.TableType+"\n"+ item.Status+"\n";
                
                btn.Tag = item;
                
                btn.Click += btn_Click;

                if (item.Status == "Trống")
                {
                    btn.BackColor = Color.FromArgb(168,171,215);
                    if (item.TableType == "VIP")
                    {
                        btn.BackColor = Color.FromArgb(255,255,157);
                    }
                }
                else
                {
                    btn.BackColor = Color.LightPink;
                }
                flpTable.Controls.Add(btn);
            }
        }

        void ShowBill(int id)
        {
            lvBill.Items.Clear();
            txbTotal.Clear();

            List<DTO.Menu> listBillInfo = MenuDAO.Instance.getListMenuByTable(id);

            float total =  0;

            foreach (RestaurantManagement.DTO.Menu item in listBillInfo)
            {
                ListViewItem lvItem = new ListViewItem(item.FoodName.ToString());
                lvItem.SubItems.Add((item.Count.ToString()));
                lvItem.SubItems.Add((item.Price.ToString()));
                lvItem.SubItems.Add((item.TotalPrice1.ToString()));

                total += item.TotalPrice1;                

                lvBill.Items.Add(lvItem);
            }

            CultureInfo culture = new CultureInfo("vi-VN");
           Thread.CurrentThread.CurrentCulture = culture;
            txbTotal.Text = total.ToString("c");
            CultureInfo culture2 = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = culture2;
            LoadListTable();
        
        }

        void LoadComboboxTable()
        {
            cbSwitchTable.DataSource = TableDAO.Instance.LoadListTable();
            cbSwitchTable.DisplayMember = "Name";
        }

        void ChangAccount(int type)
        {
            //adminToolStripMenuItem.Enabled = type == 1;
        }

        #endregion

        #region event

        


        private void btn_Click(object sender, EventArgs e)
        {
            int TableID = ((sender as Button).Tag as Table).ID;

            lvBill.Tag = (sender as Button).Tag;

            ShowBill(TableID);

            (sender as Button).BackColor = Color.Black;
        }

        private void cbCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = 0;

            ComboBox cb = sender as ComboBox;

            if (cb.SelectedItem == null)
            {
                 return;
            }

            Category category = cb.SelectedItem as Category;

            id = category.Id;

            LoadListFoodByCategoryID(id);
        }

        private void btnAddFood_Click(object sender, EventArgs e)
        {
            Table table = lvBill.Tag as Table;

            if (table == null)
            {
                MessageBox.Show("Vui lòng chọn bàn trước khi thêm món!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            //Kiểm tra bàn đã có người đặt hay chưa
            DateTime now = DateTime.Now;

            if (TableOrderDAO.Instance.isReallyOrder(table.ID.ToString(), now.ToString()))
            {
                MessageBox.Show("Bàn đã có người đặt, Vui lòng chọn bàn khác!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            int idBill = BillDAO.Instance.GetBillIDUnCheckoutBytableID(table.ID);

            int idFood = (cbFood.SelectedItem as Food).ID;

            

            int count = (int)nmcount.Value;

            if (idBill == -1)
            {
                BillDAO.Instance.InsertBill(table.ID);

                BillInfoDAO.Instance.InsertBillInfo(BillDAO.Instance.getMaxIDBill(),idFood,count);
            }
            else
            {

                BillInfoDAO.Instance.InsertBillInfo(idBill, idFood, count);

            }

            ShowBill(table.ID);

        }

        private void btnCheckOut_Click(object sender, EventArgs e)
        {
            Table table = lvBill.Tag as Table;

            if (table == null)
            {
                MessageBox.Show("Vui lòng chọn bàn trước khi thanh toán","Thông báo",MessageBoxButtons.OK, MessageBoxIcon.Error);
                
                return;
            }

            int idBill = BillDAO.Instance.GetBillIDUnCheckoutBytableID(table.ID);

            if (idBill == -1)
            {
                MessageBox.Show("Bàn chưa có hóa đơn");
                return;
            }

            int discount = (int)nmDiscount.Value;

            string temp = txbTotal.Text.Split(',')[0];
            temp = temp.Replace(".", "");
            double TotalPrice = Convert.ToDouble(temp);
            double finalTotalPrice = TotalPrice - (TotalPrice * discount) / 100;

            if (idBill != -1)
            {
                if (MessageBox.Show(string.Format("Bạn có chắc chắn thanh toán cho {0}\n Tổng tiền - (Tổng tiền/100) x giảm giá\n {1} - ({1}/100) x {2} = {3} ", table.Name, TotalPrice ,discount,finalTotalPrice), "Thông báo", MessageBoxButtons.OKCancel) == DialogResult.OK)
                {
                    BillDAO.Instance.CheckOut(idBill, table.ID, discount,(float)TotalPrice);
                    ShowBill(table.ID);
                }
            }

        }

        private void btnSwitchTable_Click(object sender, EventArgs e)
        {
            int id1 = (lvBill.Tag as Table).ID;
            int id2 = (cbSwitchTable.SelectedItem as Table).ID;

            if (MessageBox.Show(string.Format("Bạn chắc chắn chuyển từ {0} sang {1}", (lvBill.Tag as Table).Name, (cbSwitchTable.SelectedItem as Table).Name), "Thông báo", MessageBoxButtons.OKCancel) == System.Windows.Forms.DialogResult.OK)
            {
                TableDAO.Instance.SwitchTable(id1, id2);
                LoadListTable();
            }

        }

        

        #endregion

       
        private void btnAddFood_Click_1(object sender, EventArgs e)
        {
            btnAddFood_Click(sender, e);
        }

        private void btnCheckOut_Click_1(object sender, EventArgs e)
        {
            btnCheckOut_Click(sender, e);
        }

        private void btnSwitchTable_Click_1(object sender, EventArgs e)
        {
            btnSwitchTable_Click(sender,e);
        }

        private void cbCategory_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            cbCategory_SelectedIndexChanged(sender, e);
        }

        private void fTableMananger_Load(object sender, EventArgs e)
        {

        }

        private void btnAddTableOrder_Click(object sender, EventArgs e)
        {
            string idTableOrder = cbTableOrderID.Text;
            string TableOrderName = txbTenNguoiDat.Text;
            string SDTNguoiDat = txbPhone.Text;
            string TimeOrder = dtpkTimeOrder.Value.ToShortTimeString();
            string DateOrder = dtpkDateOrder.Value.ToShortDateString();
            string DateTimeOrder = DateOrder+" "+ TimeOrder;
            string tableType;
            int temp = cbTableOrderType.SelectedIndex;
            if (temp == 0) tableType = "VIP"; else tableType = "Normal";

            if (SDTNguoiDat.Length == 0) { MessageBox.Show("Vui lòng nhập số điện thoại người đặt"); return; }
            if (idTableOrder.Length == 0) { MessageBox.Show("Vui lòng chọn bàn được đặt"); return; }
            if (TimeOrder.Length == 0) { MessageBox.Show("Vui lòng chọn thời gian"); return; }
            if (DateOrder.Length == 0) { MessageBox.Show("Vui lòng chọn ngày đặt"); return; }

            if (TableOrderDAO.Instance.isReallyOrder(idTableOrder,DateTimeOrder))
            {
                MessageBox.Show("Lỗi! Bàn đã có người đặt");
                return;
            }

            if (insertTableOrder(idTableOrder, TableOrderName, SDTNguoiDat, DateTimeOrder, tableType))
            {
                MessageBox.Show("Đặt bàn thành công!");
                LoadListTableOrder();
            }
            else
                MessageBox.Show("Đã có lỗi hệ thống!. Vui lòng thao tác lại");
        }
        bool insertTableOrder(string idTableOrder, string TableOrderName, string SDTNguoiDat, string DateTimeOrder, string tableType)
        {

            return TableOrderDAO.Instance.insertTableOrder(idTableOrder, TableOrderName, SDTNguoiDat, DateTimeOrder, tableType);
        }
       

        void LoadComboboxTableID(string type)
        {
            cbTableOrderID.DataSource = TableDAO.Instance.LoadListTableByType(type);
            cbTableOrderID.DisplayMember = "ID";
        }
        private void cbTableOrderType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string type = cbTableOrderType.Text;
            LoadComboboxTableID(type);
        }

        private void btnUpdateTableOrder_Click(object sender, EventArgs e)
        {

        }

        private void btnDeleteTableOrder_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(cbTableOrderID.Text);
            string TimeOrder = dtpkDateOrder.Text +" "+ dtpkTimeOrder.Text;

            if (TableOrderDAO.Instance.delete(id,TimeOrder))
            {
                MessageBox.Show("Xóa thành công");
            }
            else
            {
                MessageBox.Show("Đã xảy ra lỗi");
            }
            LoadListTableOrder();
        }

        private void lvTableOrder_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                txbTenNguoiDat.Text = items.SubItems[1].Text;
            }
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                txbPhone.Text = items.SubItems[2].Text;
            }
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                cbTableOrderID.Text = items.SubItems[0].Text;
            }
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                dtpkDateOrder.Text= items.SubItems[4].Text;
            }
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                dtpkTimeOrder.Text = items.SubItems[3].Text;
            }
            foreach (ListViewItem items in lvTableOrder.SelectedItems)
            {
                cbTableOrderType.Text = items.SubItems[5].Text;
            }
        }

        private void cbTableOrderID_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnSeachTableOrder_Click(object sender, EventArgs e)
        {
            string sdt = txbSDTNguoiDat_Seach.Text;
            lvTableOrder.Items.Clear();
            List<TableOrder> listTableOrder = TableOrderDAO.Instance.getListTableOrderBySDT(sdt);
            foreach (TableOrder item in listTableOrder)
            {
                ListViewItem lvItem = new ListViewItem(item.IDTable.ToString());
                lvItem.SubItems.Add((item.TableName.ToString()));
                lvItem.SubItems.Add((item.SDTNguoiDat.ToString()));
                lvItem.SubItems.Add((item.TimeOrder.ToString()));
                lvItem.SubItems.Add((item.DateOrder.ToString()));
                lvItem.SubItems.Add((item.TableType.ToString()));
                lvTableOrder.Items.Add(lvItem);
            }
        }

        private void btnViewAllTableOrder_Click(object sender, EventArgs e)
        {
            LoadListTableOrder();
        }

        private void btnNhanBan_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(cbTableOrderID.Text);
            string TimeOrder = dtpkDateOrder.Text +" "+ dtpkTimeOrder.Text;

            if (TableOrderDAO.Instance.delete(id,TimeOrder))
            {
                MessageBox.Show("Đã Nhận bàn");
            }
            else
            {
                MessageBox.Show("Đã xảy ra lỗi hệ thống. Vui lòng thao tác lại");
            }
            LoadListTableOrder();
        }

        

        private void nemuAdmin_Click(object sender, EventArgs e)
        {
            fAdmin f = new fAdmin();
            f.ShowDialog();
        }

        private void menuInfo_Click(object sender, EventArgs e)
        {
            this.IsMdiContainer = true;
            fAccountProfile f = new fAccountProfile(loginAccount);
            f.MdiParent = this;
            f.Show();
        }

        private void menuLogout_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
            fLogin f = new fLogin(this.loginAccount);
            f.ShowDialog();
            this.Enabled = true;

           // menuAccName.Text = this.loginAccount.DisplayName;
           // MainMenuStrip.Location = new Point(780 - (this.loginAccount.DisplayName.Length)*5, MainMenuStrip.Location.Y);
            //if (this.loginAccount.Type == 0) menuAdmin.Visible = false;
        }

        private void flpTable_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
