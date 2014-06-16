using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class hirePage_2__1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                bindGrid();
        }

        private void bindGrid()
        {
            if (!IsPostBack)
            {
            }
            //DataClasses1DataContext dc = new DataClasses1DataContext();
            //var query = from p in dc.person
            //            from a in dc.agent
            //            where p.person_id == a.person_id
            //            select new { name = p.names, profession = a.profession, register_date = a.register_date, trade_number = a.trade_number };
            //GridView1.DataSource = query;
            GridView1.DataSource = Commons.findAllAgents();

            GridView1.DataKeyNames = new string[] { "person_id" };
            GridView1.DataSourceID = null;
            GridView1.DataBind();


        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGrid();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            int selected_person_id = (int)GridView1.DataKeys[e.NewSelectedIndex].Value;
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            if (!page.ClientScript.IsClientScriptBlockRegistered(page.GetType(), "clientScript"))
                page.ClientScript.RegisterClientScriptBlock(page.GetType(),
                    "clientScript",
                    "<script language=javascript>if(confirm('确定选择该经纪人为你卖房么？')) window.location.href='hirePage_2.aspx?person=" + selected_person_id + "';  else {} </script>");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}