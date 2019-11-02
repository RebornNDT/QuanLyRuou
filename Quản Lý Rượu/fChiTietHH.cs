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
    public partial class fChiTietHH : Form
    {
        DataProvider data = new DataProvider();
        public fChiTietHH()
        {
            InitializeComponent();
        }

        private void fChiTietHH_Load(object sender, EventArgs e)
        {
            string query = "Select * from [dbo].[DMHangHoa]";
            dtgvChiTietHH.DataSource = data.ExecQuery(query);
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
