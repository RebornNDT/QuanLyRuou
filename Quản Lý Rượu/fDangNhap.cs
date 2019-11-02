using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Quản_Lý_Rượu
{
    public partial class fDangNhap : Form
    {
        DataProvider data = new DataProvider();
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-2SI7H1S;Initial Catalog = QLRuou; Integrated Security = True");
        public fDangNhap()
        {
            InitializeComponent();
        }

        private void BtnDangNhap_Click(object sender, EventArgs e)
        {
            
            if (txtTaiKhoan.Text == "" || txtMatKhau.Text == "")
            {
                DialogResult dialog = MessageBox.Show("Nhập mật khẩu & Tài Khoản", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                if (dialog == DialogResult.Cancel)
                {
                    this.Close();
                }
            }
            else
            {
                try
                {
                    conn.Open();
                    string sql = "SELECT *FROM dbo.tblDangNhap WHERE TaiKhoan='" + txtTaiKhoan.Text + "' AND MatKhau='" + txtMatKhau.Text + "'";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    if (dataReader.Read() == true)
                    {
                        fMain formMain = new fMain();
                        formMain.Show();
                        if (checkBox1.Checked)
                        {
                            string sqlt = "UPDATE dbo.tblNoteDangNhap SET NoteTaiKhoan ='" + txtTaiKhoan.Text +
                                "',NoteMatKhau ='" + txtMatKhau.Text + "'";
                            data.CapNhatDuLieu(sqlt);
                        }
                        else
                        {
                            string sqll = "UPDATE dbo.tblNoteDangNhap SET NoteTaiKhoan ='',NoteMatKhau=''";
                            data.CapNhatDuLieu(sqll);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Sai Mật Khẩu", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Error);
                        dataReader.Close();
                    }
                }
                
                catch (Exception ed)
                {
                    MessageBox.Show("Lỗi Kết nối");
                }
               
                conn.Close();
            }
        }

        private void BtnThoat_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Bạn có muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialog == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void FDangNhap_Load(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "Select NoteTaiKhoan,NoteMatKhau from tblNoteDangNhap";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader1 = cmd.ExecuteReader();
            while (dataReader1.Read())
            {
                txtTaiKhoan.Text = dataReader1["NoteTaiKhoan"].ToString();
                txtMatKhau.Text = dataReader1["NoteMatKhau"].ToString();
            }
            dataReader1.Close();
            conn.Close();

        }
    }
}
