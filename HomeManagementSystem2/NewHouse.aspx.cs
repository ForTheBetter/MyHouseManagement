﻿using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;
using System.Runtime.InteropServices;

namespace HomeManagementSystem2
{
    public partial class NewHouse : System.Web.UI.Page
    {

        [DllImport("HMS_SpecialFunc.dll", CallingConvention=CallingConvention.StdCall)]
        unsafe static extern int* Price_Parse([MarshalAs(UnmanagedType.LPStr)]string search_condition_price);

        [DllImport("HMS_SpecialFunc.dll")]
        public static extern int RoomKind_Parse([MarshalAs(UnmanagedType.LPStr)]string search_condition_roomkind);

        public String myhtnl = "";
        public String price_search = "全部";
        public String area_search = "全部";
        public String house_search = "全部";
        public String type_search = "全部";
        public String decorate_search = "全部";
        public String order_type = "默认排序";
        public int my_current_page = 1;
        public static int items_per_page = 8;
        public String customer_search_val = "";
        public int search_function = 0;//0卫客观搜索，1为自定义搜索
        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("hello");
            if (Session["first_load"] == null)
            {
                Session["money"] = price_search;
                Session["area"] = area_search;
                Session["house"] = house_search;
                Session["type"] = type_search;
                Session["decorate"] = decorate_search;
                Session["order"] = order_type;
                Session["first_load"] = "true";
                Session["current_page"] = 1;
                Session["search"] = 0;
            }
            price_search = Session["money"].ToString();
            area_search = Session["area"].ToString();
            house_search = Session["house"].ToString();
            type_search = Session["type"].ToString();
            decorate_search = Session["decorate"].ToString();
            order_type = Session["order"].ToString();
            my_current_page = Convert.ToInt32(Session["current_page"]);
            search_function = Convert.ToInt32(Session["search"]);

            Console.WriteLine("hello");
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);
        }

        protected void search_by_money(object sender, EventArgs e)
        {
            LinkButton a1 = (LinkButton)sender;
            int[] price = new int[2];
            price_search = a1.Text;
            unsafe
            {
                price[0] = Price_Parse(price_search)[0];
                price[1] = Price_Parse(price_search)[1];
            }
            search_function = 0;
            Session["search"] = 0;
            Session["money"] = price_search;

            price_show.InnerHtml = price_search;
            my_current_page = 1;
            Session["current_page"] = 1;
            TextBox1.Text = "";
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);


        }


        protected void search_by_area(object sender, EventArgs e)
        {
            LinkButton a1 = (LinkButton)sender;
            area_search = a1.Text;
            area_show.InnerHtml = area_search;
            if (!area_search.Equals("全部"))
            {
                area_search += "区";
            }
            Session["area"] = area_search;
            search_function = 0;
            Session["search"] = 0;
            my_current_page = 1;
            Session["current_page"] = 1;

            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);

        }

        protected void search_by_house(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
            house_search = a.Text;

            search_function = 0;
            Session["search"] = 0;
            Session["house"] = house_search;
            my_current_page = 1;
            Session["current_page"] = 1;
            room_show.InnerHtml = house_search;
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);
        }

        protected void search_by_type(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
            type_search = a.Text;
            search_function = 0;
            Session["search"] = 0;
            Session["type"] = type_search;
            my_current_page = 1;
            Session["current_page"] = 1;
            type_show.InnerHtml = type_search;
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);

        }
        //用户自定义搜索
        protected void custom_earch(object sender, EventArgs e)
        {
            //将下面的搜索项全置为全部
            price_search = "全部";
            Session["money"] = price_search;
            price_show.InnerHtml = price_search;

            area_search = "全部";
            Session["area"] = area_search;
            area_show.InnerHtml = area_search;

            house_search = "全部";
            Session["house"] = house_search;
            room_show.InnerHtml = house_search;

            type_search = "全部";
            Session["type"] = type_search;
            type_show.InnerHtml = type_search;

            decorate_search = "全部";
            Session["decorate"] = decorate_search;
            decorate_show.InnerHtml = decorate_search;
            //===
            customer_search_val = TextBox1.Text;
            if (customer_search_val.Equals(""))
            {
                return;
            }
            my_current_page = 1;
            Session["current_page"] = 1;
            search_function = 1;
            Session["search"] = 1;
            List<HouseInfo> hou_list = search_by_customer_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);
        }
        //按装修
        protected void search_by_decorate(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
            decorate_search = a.Text;
            Session["decorate"] = decorate_search;
            decorate_show.InnerHtml = decorate_search;
            search_function = 0;
            Session["search"] = 0;
            my_current_page = 1;
            Session["current_page"] = 1;
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);
        }
        //排序方式
        protected void OrderType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            order_type = dropDownList.SelectedValue;
            Session["order"] = order_type;
            search_function = Convert.ToInt32(Session["search"]);
            List<HouseInfo> hou_list = null;
            if (search_function == 0)
                hou_list = search_by_condition();
            else
                hou_list = search_by_customer_condition();
            my_current_page = 1;
            Session["current_page"] = my_current_page;
            current_page.InnerText = Convert.ToString(1);
            list.InnerHtml = sethtml(hou_list, 0);
        }
        protected void changepage(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
            switch (a.Text)
            {
                case "首页":
                    {
                        List<HouseInfo> hou_list = null;
                        if (search_function == 0)
                            hou_list = search_by_condition();
                        else
                            hou_list = search_by_customer_condition();
                        current_page.InnerText = Convert.ToString(1);
                        Session["current_page"] = 1;
                        my_current_page = 1;
                        list.InnerHtml = sethtml(hou_list, 0);
                        break;
                    }
                case "上一页":
                    {
                        List<HouseInfo> hou_list = null;
                        if (search_function == 0)
                            hou_list = search_by_condition();
                        else
                            hou_list = search_by_customer_condition();
                        current_page.InnerText = (my_current_page - 1).ToString();
                        Session["current_page"] = my_current_page - 1;
                        my_current_page -= 1;
                        list.InnerHtml = sethtml(hou_list, (my_current_page - 1) * items_per_page);

                        break;
                    }
                case "下一页":
                    {
                        List<HouseInfo> hou_list = null;
                        if (search_function == 0)
                            hou_list = search_by_condition();
                        else
                            hou_list = search_by_customer_condition();
                        current_page.InnerText = (my_current_page + 1).ToString();
                        Session["current_page"] = my_current_page + 1;
                        my_current_page += 1;
                        list.InnerHtml = sethtml(hou_list, (my_current_page - 1) * items_per_page);

                        break;
                    }
                case "尾页":
                    {
                        List<HouseInfo> hou_list = null;
                        if (search_function == 0)
                            hou_list = search_by_condition();
                        else
                            hou_list = search_by_customer_condition();
                        int i_total_page = 0;
                        if (hou_list.Count % items_per_page == 0)
                        {
                            i_total_page = hou_list.Count / items_per_page;
                        }
                        else
                            i_total_page = hou_list.Count / items_per_page + 1;

                        current_page.InnerText = i_total_page.ToString();
                        Session["current_page"] = i_total_page;
                        my_current_page = i_total_page;
                        list.InnerHtml = sethtml(hou_list, (i_total_page - 1) * items_per_page);
                        break;
                    }
                default:
                    break;
            }
        }
        protected String sethtml(List<HouseInfo> hou_list, int index)
        {
            String html = "";

            int i_total_page = 0;
            if (hou_list.Count % items_per_page == 0)
            {
                i_total_page = hou_list.Count / items_per_page;
            }
            else
                i_total_page = hou_list.Count / items_per_page + 1;
            total_page.InnerText = i_total_page.ToString();  //总页数
            //==================
            first.Enabled = true;
            before.Enabled = true;
            next.Enabled = true;
            last.Enabled = true;
            if (my_current_page == 1)
            {
                first.Enabled = false;
                before.Enabled = false;
            }
            if (my_current_page == i_total_page)
            {
                next.Enabled = false;
                last.Enabled = false;
            }
            //==================
            //hou_list = search_by_condition();
            if (hou_list.Count <= items_per_page)
            {
                //thread_theme_4.InnerHtml = "";
                thread_theme_4.Visible = false;
            }
            else
            {
                thread_theme_4.Visible = true;
            }

            if (my_current_page == 1)
                current_page.InnerText = Convert.ToString(1);
            for (int i = index; i < hou_list.Count; i++)
            {
                if (i == index + items_per_page)
                {
                    return html;
                }

                html += "<dl class=\"dd_list_house\">";
                html += "<dt class=\"dt_photo\">";
                html += "<img width=\"100px\"  height=\"75px\" src=\"showimg.aspx?id=";
                html += hou_list.ElementAt(i).photoId;
                html += "\" />";
                html += "</dt>";
                html += "<dd class=\"dd_houseInfo\">";
                html += "<a href=\"singleSellHouse.aspx?id=";
                html += hou_list.ElementAt(i).photoId;
                html += "\" class=\"house_description\">";
                html += hou_list.ElementAt(i).Description;
                html += "</a>";

                html += "<p class=\"p_tag\">";
                html += "地址：" + hou_list.ElementAt(i).city + "," + hou_list.ElementAt(i).local_Area + ",";
                html += hou_list.ElementAt(i).Street + "," + hou_list.ElementAt(i).Community + "," + hou_list.ElementAt(i).Level + "层"; ;
                html += "</p>";
                html += "<p class=\"p_tag\">";
                html += "户型：";
                html += hou_list.ElementAt(i).Room + "室" + hou_list.ElementAt(i).Hall + "厅" + hou_list.ElementAt(i).Toilet + "卫" + "  面积:" + hou_list.ElementAt(i).Area;
                html += "</p>";
                html += "<p class=\"p_tag\">";
                html += "类型：" + hou_list.ElementAt(i).type + "   " + hou_list.ElementAt(i).Decoration;
                html += "</p>";
                html += "<p class=\"p_name\">";
                html += "电话：" + hou_list.ElementAt(i).phoneNum;
                html += "</p>";
                html += "</dd>";
                html += "<dd class=\"dd_price\">";
                html += "<strong>";
                html += hou_list.ElementAt(i).Price + "元/平米";
                html += "</strong>";
                html += "</dd>";
                html += "<div class=\"info_bot\">";
                html += "<i class=\"b\" style=\"float:left\">" + "活动";
                html += "</i>";
                html += "<div class=\"bot_R\" style=\"float:left\">";
                html += "<a href=\"http://www.baidu.com\" target=\"_blank\">";
                html += "优质商品房大甩卖，买一送一，买二送三";
                html += "</a></br></div></div>";
                html += "</dl>";
            }
            return html;
        }

        //private 
        private List<HouseInfo> search_by_customer_condition()
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getCustomerExpression());
            order_type = Session["order"].ToString();
            if (order_type.Equals("默认排序"))
            {
            }
            else if (order_type.Equals("总价由高到低"))
            {
                result = result.OrderByDescending(n => n.salehouse.price);
            }
            else if (order_type.Equals("总价由低到高"))
            {
                result = result.OrderBy(n => n.salehouse.price);
            }
            else if (order_type.Equals("单价由低到高"))
            {
                result = result.OrderBy(n => n.salehouse.price / n.area);
            }
            else if (order_type.Equals("单价由高到低"))
            {
                result = result.OrderByDescending(n => n.salehouse.price / n.area);
            }
            else if (order_type.Equals("面积由大到小"))
            {
                result = result.OrderByDescending(n => n.area);
            }
            else if (order_type.Equals("面积由小到大"))
            {
                result = result.OrderBy(n => n.area);
            }
            foreach (var Items in result)
            {
                HouseInfo houseInfo = new HouseInfo
                (
                    Items.house_id,
                    Items.salehouse.description,
                    Items.address1.city,
                    Items.address1.area,
                    Items.address1.street,
                    Items.address1.community,
                    Items.levels,
                    Convert.ToInt32(Items.room),
                    Convert.ToInt32(Items.hall),
                    Convert.ToInt32(Items.toilet),
                    Items.area.ToString(),
                    Items.types,
                    Items.decoration,
                    Items.member1.person.phone,
                    Convert.ToInt32(Items.area == 0? 0:Items.salehouse.price * 10000 / Items.area),
                    Items.salehouse.types
                );
                list.Add(houseInfo);
            }
            return list;
        }

        class testing {
            testing(int a, int b) { }
        }

        private List<HouseInfo> search_by_condition()
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getExpression());
            order_type = Session["order"].ToString();
            if (order_type.Equals("默认排序"))
            {
            }
            else if (order_type.Equals("总价由高到低"))
            {
                result = result.OrderByDescending(n => n.salehouse.price);
            }
            else if (order_type.Equals("总价由低到高"))
            {
                result = result.OrderBy(n => n.salehouse.price);
            }
            else if (order_type.Equals("单价由低到高"))
            {
                result = result.OrderBy(n => n.salehouse.price / n.area);
            }
            else if (order_type.Equals("单价由高到低"))
            {
                result = result.OrderByDescending(n => n.salehouse.price / n.area);
            }
            else if (order_type.Equals("面积由大到小"))
            {
                result = result.OrderByDescending(n => n.area);
            }
            else if (order_type.Equals("面积由小到大"))
            {
                result = result.OrderBy(n => n.area);
            }
            foreach (var Items in result)
            {
                HouseInfo houseInfo = new HouseInfo
                (
                    Items.house_id,
                    Items.salehouse.description,
                    Items.address1.city,
                    Items.address1.area,
                    Items.address1.street,
                    Items.address1.community,
                    Items.levels,
                    Convert.ToInt32(Items.room),
                    Convert.ToInt32(Items.hall),
                    Convert.ToInt32(Items.toilet),
                    Items.area.ToString(),
                    Items.types,
                    Items.decoration,
                    Items.member1.person.phone,
                    Items.area == 0 ? 0 : Convert.ToInt32(Items.area==0?0:Items.salehouse.price * 10000 / Items.area),
                    Items.salehouse.types
                );
                list.Add(houseInfo);
            }
            // show.InnerText = "price_search";
            //排列顺序


            return list;
        }

        public Expression<Func<house, bool>> getCustomerExpression()
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.True<house>();
            condition = condition.And(m => m.types != "老公房" && m.types != "酒店");
            condition = condition.And(m => m.salehouse.types == "新房");
            condition = condition.And(m => m.address1.area == customer_search_val || m.address1.city == customer_search_val
                || m.address1.community == customer_search_val || m.decoration == customer_search_val
                || m.title == customer_search_val || m.types == customer_search_val || m.salehouse.developer == customer_search_val);
            //
            Console.WriteLine(condition.Name);
            return condition;
        }
        public Expression<Func<house, bool>> getExpression()
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.True<house>();

            condition = condition.And(m => m.types != "老公房" && m.types != "酒店");
            condition = condition.And(m => m.salehouse.types == "新房");
            //search_area
            String my_area = area_search;
            //String my_area= Convert.ToString(Session["area"]);
            if (!my_area.Equals("全部"))
            {
                condition = condition.And(m => m.address1.area == my_area);
            }

            //根据价格搜索
            unsafe
            {
                int[] price_range = new int[2];
                price_range[0] = Price_Parse(price_search)[0];
                price_range[1] = Price_Parse(price_search)[1];
                if (price_range[1] == -1)
                {
                    condition = condition.And(m => m.salehouse.price >= price_range[0]);
                }

                if (price_range[1] != -1)
                {
                    condition = condition.And(m => m.salehouse.price >= price_range[0]);
                    condition = condition.And(m => m.salehouse.price < price_range[1]);
                }
            }
            //根据房型搜索
            // int RoomKind = Convert.ToInt32(Session["house"]);
            int RoomKind = RoomKind_Parse(house_search);
            if (RoomKind != 0)
            {
                condition = condition.And(m => m.room == RoomKind);
            }
            //根据类型搜索
            String house_type = type_search;
            if (!house_type.Equals("全部"))
            {
                condition = condition.And(m => m.types == house_type);
            }
            //根据装修类型
            if (!decorate_search.Equals("全部"))
            {
                condition = condition.And(m => m.decoration == decorate_search);
            }
            return condition;
        }
    }

    public static class PredicateExtensions
    {
        public static Expression<Func<T, bool>> True<T>() { return f => true; }

        public static Expression<Func<T, bool>> False<T>() { return f => false; }

        public static Expression<Func<T, bool>> Or<T>(this Expression<Func<T, bool>> expression1,
           Expression<Func<T, bool>> expression2)
        {
            var invokedExpression = Expression.Invoke(expression2, expression1.Parameters
                    .Cast<Expression>());

            return Expression.Lambda<Func<T, bool>>(Expression.Or(expression1.Body, invokedExpression),
            expression1.Parameters);
        }

        public static Expression<Func<T, bool>> And<T>(this Expression<Func<T, bool>> expression1,
              Expression<Func<T, bool>> expression2)
        {
            var invokedExpression = Expression.Invoke(expression2, expression1.Parameters
                 .Cast<Expression>());

            return Expression.Lambda<Func<T, bool>>(Expression.And(expression1.Body,
                   invokedExpression), expression1.Parameters);
        }
    }

}