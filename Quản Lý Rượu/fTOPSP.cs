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
    public partial class fTOPSP : Form
    {
        DataProvider data = new DataProvider();
        public fTOPSP()
        {
            InitializeComponent();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            dtgvTOP.Visible = true;
            string qr = "Select TenHH as N'Tên hàng hóa' from TOP3SP('" + txtMaKH.Text + "')";
            dtgvTOP.DataSource = data.ExecQuery(qr);
        }
    }
}
