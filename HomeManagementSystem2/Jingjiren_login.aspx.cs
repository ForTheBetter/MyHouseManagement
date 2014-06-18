using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class Jingjiren_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Login_Click(object sender, EventArgs e)
        {
            string account = TB_Log_AgentAccount.Text;
            string password = TB_Log_AgentPassword.Text;

            if (HMS_DBProcessor.Commons.judgeAgentByAgentAccountAndPassword(account, password))
            {
                Session["Agent"] = HMS_DBProcessor.Commons.findPersonByEmail(account);
                Response.Redirect("Jingjiren_main.aspx");
            }
            else
            {
                Label6.Text = "用户名或密码错误！";

            }
        }
    }
}