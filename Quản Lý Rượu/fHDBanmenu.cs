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
    public partial class fHDBanmenu : Form
    {
        DataProvider data = new DataProvider();
        public fHDBanmenu()
        {
            InitializeComponent();
        }

        private void fHDBanmenu_Load(object sender, EventArgs e)
        {

        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            string qr = "Select HDB, ChiTietHDB.SoLuong, ThanhTien " +
                        "from DMHangHoa join ChiTietHDB on DMHangHoa.MaHH = ChiTietHDB.MaHH " +
                        "where DMHangHoa.MaHH = '" + txtMahh.Text +"'";
            dtgvHD.DataSource = data.ExecQuery(qr);
        }
    }
}
