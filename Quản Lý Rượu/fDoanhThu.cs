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
    public partial class fDoanhThu : Form
    {
        DataProvider data = new DataProvider();
        public fDoanhThu()
        {
            InitializeComponent();
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            string qr = "Select sum(TongTien) as N'Doanh Thu' from HDBan where YEAR(NgayBan) = '" + txtNam.Text + "'";
            dtgvDT.DataSource = data.ExecQuery(qr);
            dtgvDT.Visible = true;
            textBox1.Text = dtgvDT.Rows[0].Cells[0].Value.ToString();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
