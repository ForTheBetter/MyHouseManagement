using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class SellHouse_first : System.Web.UI.Page
    {
        public string A_Xiaoqu
        {
            get{return Xiaoqu.Text;}
            
        }
        public string A_Shi
        {
            get{return Shi.Text;}
          
        }
        public string A_Ting
        {
            get{return Ting.Text;}
         
        }
        public string A_Wei
        {
            get { return Wei.Text; }
       
        }
        public string A_Mianji
        {
            get { return Mianji.Text; }
        
        }
        public string A_Jiage
        {
            get { return Jiage.Text; }
         
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Person"] == null)
            {
                System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;
                if (!page.ClientScript.IsClientScriptBlockRegistered(page.GetType(), "clientScript"))
                    page.ClientScript.RegisterClientScriptBlock(page.GetType(),
                        "clientScript", "<script language=javascript>alert('您还没有登录，登录后才能使用卖房功能哦'); window.location.href='login.aspx' </script>");
                        
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Biaoti"] = Biaoti.Text;
            Session["Xiaoqu"] = A_Xiaoqu;
            Session["Shi"] = A_Shi;
            Session["Ting"] = A_Ting;
            Session["Wei"] = A_Wei;
            Session["Mianji"] = A_Mianji;
            Session["Jiage"] = A_Jiage;
            Server.Transfer("SellHouse_second.aspx");
        }

   
     
        

    }
}