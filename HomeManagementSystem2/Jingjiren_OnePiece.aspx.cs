using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class Jingjiren_OnePiece : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(Request.QueryString["houseid"].ToString());
            int person_id = ((person)(Session["Agent"])).person_id;
            Dictionary<string, string> d = HMS_DBProcessor.Commons.findAllSaleHouseInformationByAgentIdAndHouseId(person_id, house_id);
            a_city.Text = d["a*city"];
            a_area.Text = d["a*area"];
            a_street.Text = d["a*street"];
            a_community.Text = d["a*community"];
            levels.Text = d["levels"];
            area.Text = d["area"];
            orientation.Text = d["orientation"];
            types.Text = d["types"];
            decoration.Text = d["decoration"];
            room.Text = d["room"];
            hall.Text = d["hall"];
            toilet.Text = d["toilet"];
            p_names.Text = d["p*names"];
            p_phone.Text = d["p*phone"];
            de_date.Text = d["de*date"];
            s_types.Text = d["s*types"];
            s_developer.Text = d["s*developer"];
            s_price.Text = d["s*price"];
            s_property_costs.Text = d["s*property_costs"];
            s_description.Text = d["s*description"];
            de_messages.Text = d["de*messages"];
            Image1.ImageUrl = "showimg.aspx?HouseId=" + house_id;
            string[] allPhotos = HMS_DBProcessor.Commons.getAllSaleHousePicturesByHouseId(house_id);
            foreach (string s in allPhotos)
            {
                ImageGallery.InnerHtml
                    +=
                    "<li><a href=\"#\"><img src='UploadedImage/" + s + "'"+ " alt=\"description\" /><img src='img/" + s + "'"+ " alt=\"description\" class=\"preview\" /></a></li>";
            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(Request.QueryString["houseid"].ToString());
            HMS_DBProcessor.Commons.setDelegateStatusToAgree(house_id);
            System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;

            if (!page.ClientScript.IsClientScriptBlockRegistered(page.GetType(), "clientScript"))
                page.ClientScript.RegisterClientScriptBlock(page.GetType(),
                    "clientScript",
                    "<script language=javascript>confirm(\"您已经确认作为该房源的经纪人，在用户确认后房源就会上架，祝您工作愉快！\"); </script>");

            Response.Redirect("Jingjiren_main.aspx");
        }

        protected void Reject_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(Request.QueryString["houseid"].ToString());
            HMS_DBProcessor.Commons.setDelegateStatusToRefuse(house_id);
            Response.Redirect("Jingjiren_main.aspx");
        }
    }
}