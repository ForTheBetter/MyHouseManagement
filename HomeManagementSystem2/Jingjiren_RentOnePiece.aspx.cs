using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class Jingjiren_RentOnePiece : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(Request.QueryString["houseid"].ToString());
            int person_id = ((person)(Session["Agent"])).person_id;
            Dictionary<string, string> d = HMS_DBProcessor.Commons.findAllRentHouseInformationByAgentIdAndHouseId(person_id, house_id);
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
            s_types.Text = d["r*types"];
            s_price.Text = d["r*payment"];
            s_description.Text = d["r*description"];
            de_messages.Text = d["de*messages"];
            Image1.ImageUrl = "showimg.aspx?HouseId=" + house_id;
            string[] allPhotos = HMS_DBProcessor.Commons.getAllSaleHousePicturesByHouseId(house_id);
            foreach (string s in allPhotos)
            {
                ImageGallery.InnerHtml
                    +=
                    "<li><a href=\"#\"><img src='UploadedImage/" + s + "'" + " alt=\"description\" /><img src='img/" + s + "'" + " alt=\"description\" class=\"preview\" /></a></li>";
            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {
            int house_id = Convert.ToInt32(Request.QueryString["houseid"].ToString());
            HMS_DBProcessor.Commons.setDelegateStatusToAgree(house_id);
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