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
    public partial class fHDNhapMenu : Form
    {
        DataProvider data = new DataProvider();
        public fHDNhapMenu()
        {
            InitializeComponent();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            string qr = "select HDN, TongTien from HDNhap where MaNCC = '" + txtMaNCC.Text +"' group by HDN, TongTien";
            dtgvHD.DataSource = data.ExecQuery(qr);
        }
    }
}
