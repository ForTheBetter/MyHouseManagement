using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Register_Click(object sender, EventArgs e)
        {
            HMS_DBProcessor.HMS_DBProcessor Proc = new HMS_DBProcessor.HMS_DBProcessor();
            Proc.RegisterProcess(TB_Reg_UserIdentityNumber.Text,
                            TB_Reg_UserName.Text,
                            TB_Reg_UserPassword.Text,
                            TB_Reg_UserPhone.Text,
                            TB_Reg_UserEmail.Text);
        }

        protected void BTN_Login_Click(object sender, EventArgs e)
        {

            if (!HMS_DBProcessor.Commons.doLogin(TB_Log_UserAccount.Text, TB_Log_UserPassword.Text))  //Login
            {
                Label6.Text = "用户名或密码错误！";
            }
            else
            {
                person p = HMS_DBProcessor.Commons.findPersonByEmail(TB_Log_UserAccount.Text);
                Session["Person"] = p;
                Response.Redirect("index3.aspx");
            }
        }
    }
}