using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using HMS_DataEntity;

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
            agent a = HMS_DBProcessor.Commons.findAgentByPersonId(p.person_id);
            Jiaoyishu.Text = a.trade_number.ToString();

            DataList1.DataSource = HMS_DBProcessor.Commons.findAllDelegatesSmallDetailByAgentId(p.person_id);
            if (DataList1.DataSource == null)
                DataList1.DataSource = HMS_DBProcessor.Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList1.DataKeyField = "HouseId";
            DataList1.DataBind();

            DataList2.DataSource = HMS_DBProcessor.Commons.findAllRentDelegatesSmallDetailByAgentId(p.person_id);
            if (DataList2.DataSource == null)
                DataList2.DataSource = HMS_DBProcessor.Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList2.DataKeyField = "HouseId";
            DataList2.DataBind();

            DataList3.DataSource = HMS_DBProcessor.Commons.findAllSaleManageByAgentId(p.person_id);
            if (HMS_DBProcessor.Commons.getSaleManageCountByPersonId(p.person_id) == 0)
                DataList3.DataSource = HMS_DBProcessor.Commons.getAnEmptySaleManageSource(p.person_id);
          
            DataList3.DataKeyField = "HouseId";
            DataList3.DataBind();

            DataList4.DataSource = HMS_DBProcessor.Commons.findAllRentManageByAgentId(p.person_id);
            if (HMS_DBProcessor.Commons.getRentManageCountByPersonId(p.person_id) == 0)
                DataList4.DataSource = HMS_DBProcessor.Commons.getAnEmptyRentManageSource(p.person_id);
          
            DataList4.DataKeyField = "HouseId";
            DataList4.DataBind();

            DelegateCount.Text = HMS_DBProcessor.Commons.getSaleManageCountByPersonId(((person)(Session["Agent"])).person_id).ToString();
            DelegateCount0.Text = HMS_DBProcessor.Commons.getRentManageCountByPersonId(((person)(Session["Agent"])).person_id).ToString();

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