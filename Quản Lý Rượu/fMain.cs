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
    public partial class fMain : Form
    {

        fHDNhapMenu hdn = new fHDNhapMenu();
        fHDBanmenu hdb = new fHDBanmenu();
        fTOPSP top = new fTOPSP();
        fDoanhThu DT = new fDoanhThu();
        fNhanVien NV = new fNhanVien();
        fHangHoa HH = new fHangHoa();
        fKhachHang KH = new fKhachHang();
        fHoaDon HD = new fHoaDon();
        DataProvider Data = new DataProvider();
        fTimKiem TimKiem = new fTimKiem();
        public fMain()
        {
            InitializeComponent();
        }
        private void btnQuanLyRuou_Click(object sender, EventArgs e)
        {
            HH.ShowDialog();
        }

        private void btnNhanVien_Click(object sender, EventArgs e)
        {
            NV.ShowDialog();
        }

        private void btnKH_Click(object sender, EventArgs e)
        {
            KH.ShowDialog();
        }

        private void btnHoaDon_Click(object sender, EventArgs e)
        {
            HD.ShowDialog();
        }

        private void quảnLýNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NV.ShowDialog();
        }

        private void btnNSX_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Bạn có muốn thoát chương trình không", "Thông báo" , MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Close();
            }
        }
        private void sảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HH.ShowDialog();
        }

        private void kháchHàngToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            KH.ShowDialog();
        }

        private void hóaĐơnToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            HD.ShowDialog();
        }
        private void doanhThuNămToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            DT.ShowDialog();
        }
        private void tOPSảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            top.ShowDialog();
        }
        private void thốngKếHDBánToolStripMenuItem_Click(object sender, EventArgs e)
        {
            hdb.ShowDialog();
        }

        private void thốngKêHDNhậpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            hdn.ShowDialog();
        }
        private void tìmKiếmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TimKiem.Show();
        }       
    }
}
