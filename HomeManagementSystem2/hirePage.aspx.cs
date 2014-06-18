using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class hirePage : System.Web.UI.Page
    {
        public string community, facility, floorCnt;
        public int hireCost;
        public int roomCnt, wcCnt, hallCnt;
        public int area;
        public string hireType, houseType, decorateDegree, direction;

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

        protected void Button_Next_Click(object sender, EventArgs e)
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            community = TextBox1.Text;
            hireCost = int.Parse(TextBox7.Text);
            roomCnt = int.Parse(TextBox2.Text);
            wcCnt = int.Parse(TextBox3.Text);
            hallCnt = int.Parse(TextBox4.Text);
            area = int.Parse(TextBox5.Text);
            floorCnt = TextBox6.Text;
            hireType = RadioButtonList1.Text;
            houseType = DropDownList1.Text;
            decorateDegree = DropDownList2.Text;
            direction = DropDownList3.Text;
            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {
                    facility += CheckBoxList2.Items[i].Text + " ";
                }
            }
            house House = new house()
            {
                levels = this.floorCnt,
                area = this.area,
                orientation = this.direction,
                types = this.houseType,
                decoration = this.decorateDegree,
                room = (byte)this.roomCnt,
                hall = (byte)this.hallCnt,
                toilet = (byte)this.wcCnt,
                member = ((person)Session["Person"]).person_id,
                //未做
                address = dc.address.FirstOrDefault(a => a.community == community).address_id
            };
            //dc.house.InsertOnSubmit(House);
            //dc.SubmitChanges();
            int pid = ((person)Session["Person"]).person_id;
            //int id = dc.house.FirstOrDefault(a => a.member == pid).house_id;
            Application["house"] = House;
            Application["hireType"] = hireType;
            Application["hireCost"] = hireCost;
            Server.Transfer("hirePage_2.1.aspx");
        }


    }
}