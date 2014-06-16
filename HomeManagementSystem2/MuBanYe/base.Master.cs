﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class _base : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["fcglConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(s))
            {
               string sql = "select * from information";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
             /*  using (SqlDataReader reader = command.ExecuteReader())
            
                {
                    //1
                    reader.Read();
                    info0.Text = Convert.ToString(reader[1]);
                    infocontent0.Text = Convert.ToString(reader[2]);

                    //----->2
                    reader.Read();
                    info1.Text = Convert.ToString(reader[1]);
                    infocontent1.Text = Convert.ToString(reader[2]);
                    //----------->3
                    reader.Read();
                    info2.Text = Convert.ToString(reader[1]);
                    infocontent2.Text = Convert.ToString(reader[2]);
                    //------------>4
                    reader.Read();
                    info3.Text = Convert.ToString(reader[1]);
                    infocontent3.Text = Convert.ToString(reader[2]);
                }*/

                string sql1 = "select * from person, agent where person.person_id = agent.person_id";
                SqlCommand command1 = new SqlCommand(sql1, connection);
                using (SqlDataReader reader = command1.ExecuteReader())
                {
                    reader.Read();
                    agent0.Text = Convert.ToString(reader[3]);
                    phone0.Text = Convert.ToString(reader[4]);
                    address0.Text = Convert.ToString(reader[2]);
                    reader.Read();
                    agent1.Text = Convert.ToString(reader[3]);
                    phone1.Text = Convert.ToString(reader[4]);
                    address1.Text = Convert.ToString(reader[2]);
                   
                }

                command.Dispose();
                connection.Close();

                person p = (person)Session["Person"];
                if (p == null)
                {
                    please1.Text = "您好，请";
                    zzHyperLink.Text = "登录";
                    zzHyperLink.NavigateUrl = "../login.aspx";
                }
                else
                {
                    DataClasses1DataContext dc = new DataClasses1DataContext();
                    please1.Text = "欢迎,";
                    zzHyperLink.Text = p.names;
                    zzHyperLink.NavigateUrl = "#";
                    System.Linq.IQueryable<@delegate> dt = dc.@delegate.Where(a => a.member == p.person_id && (a.state == "refuse" || a.state == "agree"));
                    @delegate[] da = dt.ToArray();
                    string htm = "";
                    foreach (var v in da)
                    {
                        string tmp = "房源委托" + v.house1.title + "已被" + v.state;
                        htm += "<p class=\"clearfix\"><span><a target=\"_blank\" href=\"#\">";
                        htm += tmp;
                        htm += "</span></p>";
                    }
                    //htm += "<asp:LinkButton ID='LinkButton4' runat='server' OnClick='delete_dg'>确认</asp:LinkButton>";
                    showMessageBox.InnerHtml = htm;
                }
            }
        }

        protected void delete_dg(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            person p = (person)Session["Person"];
            System.Linq.IQueryable<@delegate> dt = dc.@delegate.Where(a => a.member == p.person_id && (a.state == "refuse" || a.state == "agree"));
            @delegate[] da = dt.ToArray();
            foreach (var v in da)
            {
                dc.@delegate.DeleteOnSubmit(v);
            }
            dc.SubmitChanges();
            string htm = "";
            showMessageBox.InnerHtml = htm;
        }

    }
}