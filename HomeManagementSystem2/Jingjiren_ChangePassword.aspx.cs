using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class Jingjiren_ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              
            string old_pass = Old.Text;
            string new_pass = NewPass.Text;
            Commons.changePassword(old_pass, new_pass, ((person)(Session["Agent"])).person_id);
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            if (!page.ClientScript.IsClientScriptBlockRegistered(page.GetType(), "clientScript"))
                page.ClientScript.RegisterClientScriptBlock(page.GetType(),
                    "clientScript",
                    "<script language=javascript>修改成功! </script>");

        }
    }
}