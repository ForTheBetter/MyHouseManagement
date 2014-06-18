using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class singleSellHouse : System.Web.UI.Page
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
                    ihtml += "<div class=\"pic\"><img width='600px' height='500px' src='UploadedImage/" + s.picture + "'/></div>";
                }
                Image_Gallery.InnerHtml = ihtml;
                Label1.Text = Server.HtmlEncode(House.salehouse.types);
                Label2.Text = Server.HtmlEncode(House.address1.city);
                Label3.Text = Server.HtmlEncode(House.address1.area);
                Label4.Text = Server.HtmlEncode(House.address1.community);
                if (House.salehouse.build_date != null)
                {
                    DateTime dt = (DateTime)House.salehouse.build_date;
                    yearTxt.Text = Server.HtmlEncode(dt.Year.ToString());
                }
                communityTxt.Text = Server.HtmlEncode(House.address1.community);
                addressTxt.Text = Server.HtmlEncode(House.address1.street);
                titleTxt.Text = Server.HtmlEncode(House.title);
                priceTxt.Text = Server.HtmlEncode(House.salehouse.price.ToString());
                roomTxt.Text = Server.HtmlEncode(House.room.ToString());
                WCTxt.Text = Server.HtmlEncode(House.toilet.ToString());
                hallTxt.Text = Server.HtmlEncode(House.hall.ToString());
                areaTxt.Text = Server.HtmlEncode(House.area.ToString());
                floorTxt.Text = Server.HtmlEncode(House.levels);
                dirTxt.Text = Server.HtmlEncode(House.orientation);
                decoTxt.Text = Server.HtmlEncode(House.decoration);
                descrTxt.Text = Server.HtmlEncode(House.salehouse.description);
                int per = (int)House.salehouse.price * 10000 / (int)House.area;
                perTxt.Text = Server.HtmlEncode(per.ToString());
                thumbnail.ImageUrl = "showimg.aspx?id=" + Request.QueryString.Get("id");
                int hid = int.Parse(Request.QueryString.Get("id"));
                /*manage mana = dc.manage.FirstOrDefault(a => a.house == hid);
                if (mana != null)
                {
                    agent ag = dc.agent.FirstOrDefault(a => a.person_id == mana.agent);
                    agentName.Text = Server.HtmlEncode(ag.person.names);
                    tradeCnt.Text = Server.HtmlEncode(ag.person.agent.trade_number.ToString());
                    regDate.Text = Server.HtmlEncode(ag.person.agent.register_date.ToString());
                    profession.Text = Server.HtmlEncode(ag.person.agent.profession);
                    phoneTxt.Text = Server.HtmlEncode(ag.person.phone);
                    agentIcon.ImageUrl = "showimg.aspx?AgentId=" + ag.person.agent.person_id;
                }*/
                agent ag = dc.agent.FirstOrDefault(a => a.person_id == dc.@delegate.FirstOrDefault(s => s.house == hid).agent);
                if (ag != null)
                {
                    agentName.Text = Server.HtmlEncode(ag.person.names);
                    tradeCnt.Text = Server.HtmlEncode(ag.person.agent.trade_number.ToString());
                    regDate.Text = Server.HtmlEncode(ag.person.agent.register_date.ToString());
                    profession.Text = Server.HtmlEncode(ag.person.agent.profession);
                    phoneTxt.Text = Server.HtmlEncode(ag.person.phone);
                    agentIcon.ImageUrl = "showimg.aspx?AgentId=" + ag.person.agent.person_id;
                }
            }
        }
    }
}