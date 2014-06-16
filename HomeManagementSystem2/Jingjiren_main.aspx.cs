using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace HomeManagementSystem2
{
    public partial class Jingjiren_main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            person p = ((person)(Session["Agent"]));
            Yonghuming.Text = p.email;
            Xingming.Text = p.names;
            Image1.ImageUrl = "showimg.aspx?AgentId=" + p.person_id;
            agent a = Commons.findAgentByPersonId(p.person_id);
            Jiaoyishu.Text = a.trade_number.ToString();

            DataList1.DataSource = Commons.findAllDelegatesSmallDetailByAgentId(p.person_id);
            if (DataList1.DataSource == null)
                DataList1.DataSource = Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList1.DataKeyField = "HouseId";
            DataList1.DataBind();

            DataList2.DataSource = Commons.findAllRentDelegatesSmallDetailByAgentId(p.person_id);
            if (DataList2.DataSource == null)
                DataList2.DataSource = Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList2.DataKeyField = "HouseId";
            DataList2.DataBind();

            DataList3.DataSource = Commons.findAllSaleManageByAgentId(p.person_id);
            if (Commons.getSaleManageCountByPersonId(p.person_id) == 0)
             DataList3.DataSource = Commons.getAnEmptySaleManageSource(p.person_id);
          
            DataList3.DataKeyField = "HouseId";
            DataList3.DataBind();
           
            DataList4.DataSource = Commons.findAllRentManageByAgentId(p.person_id);
            if (Commons.getRentManageCountByPersonId(p.person_id) == 0)
                DataList4.DataSource = Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList4.DataKeyField = "HouseId";
            DataList4.DataBind();

            DelegateCount.Text = Commons.getSaleManageCountByPersonId(((person)(Session["Agent"])).person_id).ToString();
            DelegateCount0.Text = Commons.getRentManageCountByPersonId(((person)(Session["Agent"])).person_id).ToString();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(((LinkButton)sender).CommandArgument.ToString());
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            Response.Redirect("Jingjiren_OnePiece.aspx?HouseId=" + house_id);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(((LinkButton)sender).CommandArgument.ToString());
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            Response.Redirect("Jingjiren_RentOnePiece.aspx?houseid=" + house_id);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(((LinkButton)sender).CommandArgument.ToString());
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            Response.Redirect("singleSellHouse.aspx?id=" + house_id);
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(((LinkButton)sender).CommandArgument.ToString());
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            Response.Redirect("singleHouse.aspx?id=" + house_id);
        }

    }
}