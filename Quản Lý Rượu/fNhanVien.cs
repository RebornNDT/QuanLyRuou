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
    public partial class fNhanVien : Form
    {
        DataProvider data = new DataProvider();
        public fNhanVien()
        {
            InitializeComponent();
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            btnResert.Enabled = true;
            string query = "select * from [dbo].[NhanVien] where MaNV is not null ";
            if(txtMaNV.Text != "")
            {
                query += " and MaNV like N'" + txtMaNV.Text + "'";
            }
            if(txtTenNV.Text != "")
            {
                query += " and TenNV like N'" + txtTenNV.Text + "'";
            }
            if(txtSDT.Text != "")
            {
                query += " and SDT like N'" + txtSDT.Text + "'";
            }
            if(txtGioiTinh.Text != "")
            {
                query += " and GioiTinh = N'" + txtGioiTinh.Text.Trim() + "'";
            }
            if(txtDiaChi.Text != "")
            {
                query += " and DiaChi like N'" + txtDiaChi.Text + "'";
            }
            if(txtMaCV.Text != "")
            {
                query += " and MaCV like N'" + txtMaCV.Text + "'";
            }
            dtgvNV.DataSource = data.ExecQuery(query);
        }

        private void fNhanVien_Load(object sender, EventArgs e)
        {
            load();
        }
        public void load()
        {
            string query = "select * from [dbo].[NhanVien]";
            dtgvNV.DataSource = data.ExecQuery(query);
            resert();
        }
        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            btnResert.Enabled = true;
            if(txtMaNV.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã nhân viên", "Thông báo");
                txtMaNV.Focus();
            }
            else if(txtTenNV.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên nhân viên", "Thông báo");
                txtTenNV.Focus();
            }
            else if(txtMaCV.Text == "")
            {
                MessageBox.Show("Bạn chưa thêm mã công việc", "Thông báo");
                txtMaCV.Focus();
            }
            else if (txtGioiTinh.Text == "")
            {
                MessageBox.Show("Ai cũng phải có giới tính", "Thông báo");
                txtGioiTinh.Focus();
            }
            else
            {
                dtgvNV.DataSource = data.ExecQuery("Insert into [dbo].[NhanVien](MaNV, TenNV, GioiTinh, NgaySinh, SDT, DiaChi, MaCV)values(N'"
                                                    + txtMaNV.Text + "', N'"
                                                    + txtTenNV.Text + "', N'"
                                                    + txtGioiTinh.Text + "', '"
                                                    + txtNgaySinh.Text + "', '"
                                                    + txtSDT.Text + "', N'"
                                                    + txtDiaChi.Text + "', N'"
                                                    + txtMaCV.Text + "')");
                dtgvNV.DataSource = data.ExecQuery("select * from [dbo].[NhanVien]");
                resert();
                MessageBox.Show("Thêm thành công!");
            }
            
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            var id = dtgvNV.SelectedCells[0].Value.ToString();
            string query = "delete from [dbo].[NhanVien] where MaNV = '" + id + "'";
            data.ExecQuery(query);
            load();
            MessageBox.Show("Xóa thành công!", "Thông báo");        }
        public void resert()
        {
            txtDiaChi.Text = "";
            txtGioiTinh.Text = "";
            txtMaCV.Text = "";
            txtMaNV.Text = "";
            txtSDT.Text = "";
            txtTenNV.Text = "";
        }
        private void dtgvNV_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            btnXoa.Enabled = true;
            DateTime date = Convert.ToDateTime(dtgvNV[3, e.RowIndex].Value.ToString());
            txtMaNV.Text = dtgvNV[0, e.RowIndex].Value.ToString();
            txtTenNV.Text = dtgvNV[1, e.RowIndex].Value.ToString();
            txtGioiTinh.Text = dtgvNV[2, e.RowIndex].Value.ToString();
            txtNgaySinh.Text = date.ToString();
            txtSDT.Text = dtgvNV[4, e.RowIndex].Value.ToString();
            txtDiaChi.Text = dtgvNV[5, e.RowIndex].Value.ToString();
            txtMaCV.Text = dtgvNV[6, e.RowIndex].Value.ToString();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
          
           string query = "Update [dbo].[NhanVien] set TenNV = N'" + txtTenNV.Text + "', [GioiTinh] = N'" + txtGioiTinh.Text 
                                                    + "', [NgaySinh] = '" + txtNgaySinh.Text + "', SDT = '" + txtSDT.Text + "',MaCV = '"
                                                    + txtMaCV.Text + "', DiaChi = N'" + txtDiaChi.Text + "' where MaNV = '" + txtMaNV.Text + "'";
            data.ExecQuery(query);
            load();
            MessageBox.Show("Sửa thành công");
        }

        private void btnResert_Click(object sender, EventArgs e)
        {
            resert();
            load();
        }
    }
}
