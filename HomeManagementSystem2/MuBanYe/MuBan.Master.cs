using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class MuBan : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            person p = (person)Session["Person"];
            if (p == null)
            {
                LoginStatus.Text = "您还没有登录,登录享受更多服务吧";
                ToUserDetailOrLogin.Text = "点击这里登录";
                ToUserDetailOrLogin.NavigateUrl = "../login.aspx";
            }
            else
            {
                LoginStatus.Text = "欢迎您:" + p.names + "~.~";
                ToUserDetailOrLogin.Text = "点击这里查看您的消息及个人信息";
                ToUserDetailOrLogin.NavigateUrl = "";
            }
        }
    }
}