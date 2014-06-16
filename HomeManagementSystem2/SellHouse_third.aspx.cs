using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace HomeManagementSystem2
{
    public partial class SellHouse_third : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            int id = Convert.ToInt32(Request.QueryString["person"]);
            NameOfJingjiren.Text = "经纪人:" + Commons.findAgentNameByAgentId(id);
         }


        protected void Out_inside_Click(object sender, EventArgs e)
        {

         
           // LZhuangxiu.Text = (string)Session["Zhuangxiu"];
           //     LLeixing.Text = (string)Session["Leixing"];
           //     LShiyongqingkuang.Text = (string)Session["Shiyongqingkuang"];
           //     LChaoxiang.Text = (string)Session["Chaoxiang"];
           //LLouceng.Text = (string)Session["Louceng"];
           // LKaifashang.Text = (string)Session["Kaifashang"];
           // LJianzaoniandai.Text = (string)Session["Jianzaoniandai"];
           // LWuyefei.Text = (string)Session["Wuyefei"];


            //LZhuangxiu.Text = Zhuangxiu.Text;
            //LLeixing.Text = Leixing.Text;
            //LShiyongqingkuang.Text = Shiyongqingkuang.Text;
            //LChaoxiang.Text = Chaoxiang.Text;
            //LLouceng.Text = Louceng.Text;
            //LKaifashang.Text = Kaifashang.Text;
            //LJianzaoniandai.Text = Jianzaoniandai.Text;
            //LWuyefei.Text = Wuyefei.Text;

        }

     

        protected void Submit_Click(Object sender, EventArgs e)
        {
           
                Session["Zhuangxiu"] = Zhuangxiu.Text;
                Session["Leixing"] = Leixing.Text;
                Session["Shiyongqingkuang"] = Shiyongqingkuang.Text;
                Session["Chaoxiang"] = Chaoxiang.Text;
                Session["Louceng"] = Louceng.Text;
                Session["Kaifashang"] = Kaifashang.Text;
                Session["Jianzaoniandai"] = Jianzaoniandai.Text;
                Session["Wuyefei"] = Wuyefei.Text;
                Session["Description"] = Description.Text;

                house h = new house();
                h.address = Commons.findCommunityByCommunityName((string)Session["Xiaoqu"]).address_id;
                h.levels = (string)Session["Louceng"];
                h.title = (string)(Session["Biaoti"]);
                h.area = Int32.Parse((string)Session["Mianji"]);
                h.orientation = (string)Session["Chaoxiang"];
                h.room = Byte.Parse((string)Session["Shi"]);
                h.hall = Byte.Parse((string)Session["Ting"]);
                h.toilet = Byte.Parse((string)Session["Wei"]);
                h.member = ((person)Session["Person"]).person_id;
                h.types = (string)Session["Leixing"];
                h.decoration = (string)Session["Zhuangxiu"];
                HttpPostedFile upfile = FileUpload1.PostedFile;
                int length = upfile.ContentLength;
                Byte[] FileByteArray = new Byte[length];
                Stream StreamObject = upfile.InputStream;
                StreamObject.Read(FileByteArray, 0, length);
                h.thumbnails = FileByteArray;
          
                salehouse s = new salehouse();
                s.types = (string)Session["Shiyongqingkuang"];
                s.price = Int32.Parse((string)Session["Jiage"]);
                s.developer = (string)Session["Kaifashang"];
                s.property_costs = Int32.Parse((string)Session["Wuyefei"]);
                s.description = (string)(Session["Description"]);
                s.house = h;
                s.build_date = DateTime.Now;

                HomeManagementSystem2.@delegate d = new HomeManagementSystem2.@delegate();
                d.member = ((person)Session["Person"]).person_id;
                
                
                d.agent = Convert.ToInt32(Request.QueryString["person"]);
                d.house1 = h;
                d.date = DateTime.Now;
                d.messages = "hey you ";
                d.state = "pending";
                
                Commons.insertOneIntoSaleHouseAndDelegate(s, d);
                Response.Redirect("SellHouse_forth.aspx");
            
            
        }

        protected void Zhuangxiu_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      

      
    }
}