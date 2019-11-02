using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quản_Lý_Rượu
{
    class DataProvider
    {
        private string connectionSTR = "Data Source= DESKTOP-2SI7H1S;Initial Catalog = QLRuou; Integrated Security = True";
        SqlConnection sqlConnect = null;
        //Hàm mở kết nối CSDL
        private void KetNoiCSDL()
        {
            sqlConnect = new SqlConnection(connectionSTR);
            if (sqlConnect.State != ConnectionState.Open)
                sqlConnect.Open();
        }

        //Hàm đóng kết nối CSDL  
        private void DongKetNoiCSDL()
        {
            if (sqlConnect.State != ConnectionState.Closed)
                sqlConnect.Close();
            sqlConnect.Dispose();
        }

        //Hàm thực lệnh insert hoặc update hoặc delete    
        public void CapNhatDuLieu(string sql)
        {
            KetNoiCSDL();

            SqlCommand sqlcommand = new SqlCommand();
            sqlcommand.Connection = sqlConnect;
            sqlcommand.CommandText = sql;
            sqlcommand.ExecuteNonQuery();
            DongKetNoiCSDL();
        }
        public DataTable ExecQuery(string query)
        {
            DataTable data = new DataTable();
            
            SqlConnection conn = new SqlConnection(connectionSTR);

            conn.Open();

            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            
            adapter.Fill(data);
            
            conn.Close();

            return data;
        }
         public int ExecuteNon(string query, object[] parameter = null)
         {
             int data = 0;
            using (SqlConnection con = new SqlConnection(connectionSTR))
            {
             con.Open();

             SqlCommand command = new SqlCommand(query, con);

            if(parameter != null)
                {
                    string[] listPara = query.Split(' ');
                    int i = 0;
                    foreach(string item in listPara)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                        }
                    }
                }
             data = command.ExecuteNonQuery();

             con.Close();
            }
            return data;
        }
    }
}
