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
    public partial class fTimKiem : Form
    {
        public fTimKiem()
        {
            InitializeComponent();
        }
        fHDNhapMenu hdn = new fHDNhapMenu();
        fHDBanmenu hdb = new fHDBanmenu();
        fTOPSP top = new fTOPSP();
        fDoanhThu DT = new fDoanhThu();
        fNhanVien NV = new fNhanVien();
        fHangHoa HH = new fHangHoa();
        fKhachHang KH = new fKhachHang();
        fHoaDon HD = new fHoaDon();
        DataProvider Data = new DataProvider();
        private void quảnLýNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NV.ShowDialog();
        }
        private void loadSP()
        {
            string querySP = "Select MaHH, TenHH,GiaBan, Soluong from DMHangHoa";
            dtgvSP.DataSource = Data.ExecQuery(querySP);
        }
        private void loadHD()
        {
            string queryHH = "Select * from HDNhap";
            dtgvHD.DataSource = Data.ExecQuery(queryHH);
        }
        private void fTimKiem_Load(object sender, EventArgs e)
        {
            loadSP();
            loadHD();
        }
        private void btnLammoi_Click_1(object sender, EventArgs e)
        {
            resertSP();
            loadSP();
        }
        private void resertSP()
        {
            txtLoai.Text = "";
            txtDo.Text = "";
            txtNSX.Text = "";
        }

        private void btnTrolai_Click(object sender, EventArgs e)
        {
            loadHD();
            resertHD();
        }
        private void resertHD()
        {
            txtNCC.Text = "";
            txtMahh.Text = "";
        }
        private void btnTimHD_Click_1(object sender, EventArgs e)
        {
            string query = "Select HDNhap.HDN, MaNV, NgayNhap, NhaCungCap.MaNCC, TongTien from HDNhap join ChiTietHDN on HDNhap.HDN = ChiTietHDN.HDN " +
                "                                join DMHangHoa on ChiTietHDN.MaHH = DMHangHoa.MaHH " +
                "                                join NhaCungCap on NhaCungCap.MaNCC = HDNhap.MaNCC " +
                "                                where HDNhap.HDN is not null ";
            if (txtMahh.Text != "")
            {
                query += "  and ChiTietHDN.MaHH = N'" + txtMahh.Text + "'";
            }
            else if (txtNCC.Text != "")
            {
                query += " and TenNCC = N'" + txtNCC.Text + "'";
            }
            dtgvHD.DataSource = Data.ExecQuery(query);
        }
        private void btnTim_Click_1(object sender, EventArgs e)
        {
            string querySP = "select MaHH, TenHH,GiaBan, Soluong " +
                "from DMHangHoa join DoRuou on DMHangHoa.MaDo = DoRuou.MaDo " +
                "               join Loai on DMHangHoa.Maloai = Loai.Maloai  " +
                "               join NuocSX on DMHangHoa.MaNSX = NuocSX.MaNSX where MaHH is not null ";
            if (txtLoai.Text != "")
            {
                querySP += " and Tenloai = N'" + txtLoai.Text + "'";
            }
            if (txtDo.Text != "")
            {
                querySP += " and TenDo = N'" + txtDo.Text + "'";
            }
            if (txtNSX.Text != "")
            {
                querySP += " and TenNSX = N'" + txtNSX.Text + "'";
            }
            dtgvSP.DataSource = Data.ExecQuery(querySP);
        }

        private void btnTrolai_Click_1(object sender, EventArgs e)
        {
            loadHD();
            resertHD();
        }
    }
}
