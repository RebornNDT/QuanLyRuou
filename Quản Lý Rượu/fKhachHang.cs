using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quản_Lý_Rượu
{
    public partial class fKhachHang : Form
    {
        DataProvider data = new DataProvider();
        public fKhachHang()
        {
            InitializeComponent();
        }

        private void fKhachHang_Load(object sender, EventArgs e)
        {
            load();
        }
        public void load()
        {
            string query = "Select * from [dbo].[KhachHang]";
            dtgvKH.DataSource = data.ExecQuery(query);
            
        }
        private void btnTim_Click(object sender, EventArgs e)
        {
            btnResert.Enabled = true;
            string query = "select * from  [dbo].[KhachHang] where MaKH is not null ";
            if (txtMaKH.Text != "")
            {
                query += " and MaKH like N'" + txtMaKH.Text + "'";
            }
            if (txtTenKH.Text != "")
            {
                query += " and TenKH like N'" + txtTenKH.Text + "'";
            }
            if (txtSDT.Text != "")
            {
                query += " and SDT like N'" + txtSDT.Text + "'";
            }
            if (txtDiaChi.Text != "")
            {
                query += " and DiaChi like N'" + txtDiaChi.Text + "'";
            }
            dtgvKH.DataSource = data.ExecQuery(query);
            
        }

        private void btnThem_Click(object sender, EventArgs e)
        {

            if (txtMaKH.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã khách hàng", "Thông báo");
                txtMaKH.Focus();
            }
            else if (txtTenKH.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên khách hàng", "Thông báo");
                txtTenKH.Focus();
            }
            else
            {
                dtgvKH.DataSource = data.ExecQuery("Insert into [dbo].[KhachHang]([MaKH], [TenKH], [Diachi], [SDT])values(N'"
                                                    + txtMaKH.Text + "', N'"
                                                    + txtTenKH.Text + "', N'"
                                                    + txtDiaChi.Text + "', N'"
                                                    + txtSDT.Text + "')");

            }
            load();
        }
        public void resert()
        {
            txtDiaChi.Text = "";
            txtMaKH.Text = "";
            txtTenKH.Text = "";
            txtSDT.Text = "";
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            var id = dtgvKH.SelectedCells[0].Value.ToString();
            string query = "delete [dbo].[KhachHang] where MaKH = '" + id +"'";
            data.ExecQuery(query);
            load();
        }
        private void btnResert_Click(object sender, EventArgs e)
        {
            load();
            resert();
        }

        private void dtgvKH_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            btnXoa.Enabled = true;
            txtMaKH.Text = dtgvKH[0, e.RowIndex].Value.ToString();
            txtTenKH.Text = dtgvKH[1, e.RowIndex].Value.ToString();
            txtDiaChi.Text = dtgvKH[2, e.RowIndex].Value.ToString();
            txtSDT.Text = dtgvKH[3, e.RowIndex].Value.ToString();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            string query = "Update [dbo].[KhachHang] set TenKH = N'" + txtTenKH.Text + "', DiaChi = N'" + txtDiaChi.Text + "', SDT = '" + txtSDT.Text
                                                                     + "' where MaKH = '" + txtMaKH.Text + "'";
            data.ExecQuery(query);
            load();
            resert();
            MessageBox.Show("Sửa thành công!", "Thông báo");
        }
    }
}
