using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class singleHouse : System.Web.UI.Page
    {
        house House = new house();
        protected void Page_Load(object sender, EventArgs e)
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            if (Request.QueryString.Get("id") != null)
            {
                int house_id = int.Parse(Request.QueryString.Get("id"));
                House = dc.house.FirstOrDefault(a => a.house_id == house_id);
            }
        }

        protected void Txt_Load(object sender, EventArgs e)
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            if (Request.QueryString.Get("id") != null)
            {
                string ihtml = "";
                foreach (var s in House.photo)
                {
                    ihtml += "<div class=\"pic\"><img  width='600px' height='500px' src='UploadedImage/" + s.picture + "'/></div>";
                }
                Image_Gallery.InnerHtml = ihtml;

                int hid = int.Parse(Request.QueryString.Get("id"));
                //manage mana = dc.manage.FirstOrDefault(a => a.house == hid);
                agent ag = dc.agent.FirstOrDefault(a => a.person_id == 3);
                agentName.Text = Server.HtmlEncode(ag.person.names);
                tradeCnt.Text = Server.HtmlEncode(ag.person.agent.trade_number.ToString());
                regDate.Text = Server.HtmlEncode(ag.person.agent.register_date.ToString());
                profession.Text = Server.HtmlEncode(ag.person.agent.profession);
                phoneTxt.Text = Server.HtmlEncode(ag.person.phone);
                agentIcon.ImageUrl = "showimg.aspx?AgentId=" + 3;
                Label2.Text = Server.HtmlEncode(House.address1.city);
                Label3.Text = Server.HtmlEncode(House.address1.area);
                Label4.Text = Server.HtmlEncode(House.address1.community);
                titleTxt.Text = Server.HtmlEncode(House.title);
                priceTxt.Text = Server.HtmlEncode(House.renthouse.payment.ToString());
                roomTxt.Text = Server.HtmlEncode(House.room.ToString());
                WCTxt.Text = Server.HtmlEncode(House.toilet.ToString());
                hallTxt.Text = Server.HtmlEncode(House.hall.ToString());
                areaTxt.Text = Server.HtmlEncode(House.area.ToString());
                hiretypeTxt.Text = Server.HtmlEncode(House.renthouse.types);
                floorTxt.Text = Server.HtmlEncode(House.levels);
                phoneTxt.Text = Server.HtmlEncode(House.member1.person.phone);
                dirTxt.Text = Server.HtmlEncode(House.orientation);
                decoTxt.Text = Server.HtmlEncode(House.decoration);
                descrTxt.Text = Server.HtmlEncode(House.renthouse.description);
                communityTxt.Text = Server.HtmlEncode(House.address1.community);
                addressTxt.Text = Server.HtmlEncode(House.address1.street);
                string setStr = "";
                foreach (var p in House.renthouse.setting)
                {
                    setStr = p.rentsetting;
                    break;
                }
                settingTxt.Text = Server.HtmlEncode(setStr);
                thumbnail.ImageUrl = "showimg.aspx?id=" + Request.QueryString.Get("id");
                //multiImage.ImageUrl = "showmultiimg.aspx?house_id=" + Request.QueryString.Get("id");
            }
        }
    }
}