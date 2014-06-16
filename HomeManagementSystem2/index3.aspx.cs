using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class index3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["fcglConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(s))
            {
                string sql =
                    "SELECT house.address, house.room, house.hall, house.toilet, house.area, salehouse.price FROM house INNER JOIN salehouse ON house.house_id = salehouse.house_id";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address1.Text = Convert.ToString(reader[0]);
                        description1.Text = ss;
                        price1.Text = Convert.ToString(reader[5]);
                    }
                    if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address2.Text = Convert.ToString(reader[0]);
                        description2.Text = ss;
                        price2.Text = Convert.ToString(reader[5]);
                    } if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address2.Text = Convert.ToString(reader[0]);
                        description3.Text = ss;
                        price3.Text = Convert.ToString(reader[5]);
                    } if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address2.Text = Convert.ToString(reader[0]);
                        description4.Text = ss;
                        price4.Text = Convert.ToString(reader[5]);
                    }

                }
                string sql1 =
                    "SELECT house.address, house.room, house.hall, house.toilet, house.area, renthouse.payment FROM house INNER JOIN renthouse ON house.house_id = renthouse.house_id";
                SqlCommand command1 = new SqlCommand(sql1, connection);
                using (SqlDataReader reader = command1.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address11.Text = Convert.ToString(reader[0]);
                        description11.Text = ss;
                        price11.Text = Convert.ToString(reader[5]);
                    } if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address12.Text = Convert.ToString(reader[0]);
                        description12.Text = ss;
                        price12.Text = Convert.ToString(reader[5]);
                    } if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address13.Text = Convert.ToString(reader[0]);
                        description13.Text = ss;
                        price13.Text = Convert.ToString(reader[5]);
                    } if (reader.Read())
                    {
                        string ss = Convert.ToString(reader[1]) + "室" + Convert.ToString(reader[2]) + "厅" + Convert.ToString(reader[3]) + "卫, " + Convert.ToString(reader[4]);
                        address14.Text = Convert.ToString(reader[0]);
                        description14.Text = ss;
                        price14.Text = Convert.ToString(reader[5]);
                    }
                }
                command.Dispose();
                connection.Close();
            }
        }
    }
}