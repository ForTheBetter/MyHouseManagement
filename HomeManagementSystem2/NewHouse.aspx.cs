using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HomeManagementSystem2
{
    public partial class NewHouse : System.Web.UI.Page
    {
        public String myhtnl="";
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
            
            if (Session["first_load"]==null)
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
            my_current_page = Convert.ToInt32( Session["current_page"]);
            search_function = Convert.ToInt32(Session["search"]);

            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list, 0);
        }

        protected void search_by_money(object sender, EventArgs e)
        {
            LinkButton a1 = (LinkButton)sender;
            int[] price = new int[2];
            price_search = a1.Text;
            price = Price_Parse(price_search);
            search_function = 0;
            Session["search"] = 0;
            Session["money"] = price_search;

            price_show.InnerHtml = price_search;
            my_current_page = 1;
            Session["current_page"] = 1;
            TextBox1.Text = "";
            List<HouseInfo> hou_list = search_by_condition();
            show_total.InnerText = hou_list.Count.ToString();
            list.InnerHtml = sethtml(hou_list,0);

            
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
            list.InnerHtml = sethtml(hou_list,0);
           
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
            list.InnerHtml = sethtml(hou_list,0);
        }

        protected void search_by_type(object sender,EventArgs e)
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
            list.InnerHtml = sethtml(hou_list,0);

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
            list.InnerHtml = sethtml(hou_list,0);
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
            list.InnerHtml = sethtml(hou_list,0);
        }
        //排序方式
        protected void OrderType_SelectedIndexChanged(object sender,EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            order_type = dropDownList.SelectedValue;
            Session["order"] = order_type;
            search_function = Convert.ToInt32(Session["search"]);
             List<HouseInfo> hou_list=null;
             if (search_function == 0)
                 hou_list = search_by_condition();
             else
                 hou_list = search_by_customer_condition();
            my_current_page = 1;
            Session["current_page"] = my_current_page;
            current_page.InnerText = Convert.ToString(1);
            list.InnerHtml = sethtml(hou_list,0);
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
                        list.InnerHtml = sethtml(hou_list, (my_current_page-1) * items_per_page);
                        
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
        protected String  sethtml(List<HouseInfo> hou_list,int index)
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
                if (i == index+items_per_page)
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
                html += "地址：" + hou_list.ElementAt(i).city + ","+hou_list.ElementAt(i).local_Area+",";
                html += hou_list.ElementAt(i).Street + "," + hou_list.ElementAt(i).Community + "," + hou_list.ElementAt(i).Level + "层"; ;
                html += "</p>";
                html += "<p class=\"p_tag\">";
                html += "户型：";
                html += hou_list.ElementAt(i).Room+"室"+hou_list.ElementAt(i).Hall+"厅"+hou_list.ElementAt(i).Toilet+"卫"+"  面积:"+ hou_list.ElementAt(i).Area;
                html += "</p>";
                html += "<p class=\"p_tag\">";
                html += "类型：" + hou_list.ElementAt(i).type + "   " + hou_list.ElementAt(i).Decoration;
                html += "</p>";
                html += "<p class=\"p_name\">";
                html += "电话："+hou_list.ElementAt(i).phoneNum;
                html += "</p>";
                html += "</dd>";
                html += "<dd class=\"dd_price\">";
                html += "<strong>";
                html += hou_list.ElementAt(i).Price + "元/平米";
                html += "</strong>";
                html += "</dd>";
                html+="<div class=\"info_bot\">";
                html+="<i class=\"b\" style=\"float:left\">"+"活动";
                html+="</i>";
                html+="<div class=\"bot_R\" style=\"float:left\">";
                html+="<a href=\"http://www.baidu.com\" target=\"_blank\">";
                html+="优质商品房大甩卖，买一送一，买二送三";
                html+="</a></br></div></div>";
                html += "</dl>";
            }
            return html;
        }

        //private 
        private List<HouseInfo> search_by_customer_condition()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
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
                {
                    photoId = Items.house_id,
                    Description = Items.salehouse.description,

                    city = Items.address1.city,
                    local_Area = Items.address1.area,
                    Street = Items.address1.street,
                    Community = Items.address1.community,
                    Level = Items.levels,

                    Room = Convert.ToInt32(Items.room),
                    Hall = Convert.ToInt32(Items.hall),
                    Toilet = Convert.ToInt32(Items.toilet),
                    Area = Items.area.ToString(),

                    type = Items.types,
                    Decoration = Items.decoration,

                    phoneNum = Items.member1.person.phone,

                    Price = Convert.ToInt32(Items.salehouse.price * 10000 / Items.area),

                    new_oldhouse = Items.salehouse.types,
                };
                list.Add(houseInfo);
            }
            return list;
        }


        private List<HouseInfo> search_by_condition()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getExpression());
            order_type = Session["order"].ToString();
            if (order_type.Equals("默认排序"))
            {
            }
            else if (order_type.Equals("总价由高到低"))
            {
                result=result.OrderByDescending(n => n.salehouse.price);
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
                {
                    photoId=Items.house_id,
                    Description = Items.salehouse.description,

                    city=Items.address1.city,
                    local_Area = Items.address1.area,
                    Street = Items.address1.street,
                    Community = Items.address1.community,
                    Level = Items.levels,

                    Room = Convert.ToInt32(Items.room),
                    Hall = Convert.ToInt32(Items.hall),
                    Toilet = Convert.ToInt32(Items.toilet),
                    Area=Items.area.ToString(),

                    type=Items.types,
                    Decoration = Items.decoration,

                    phoneNum=Items.member1.person.phone,
                    
                    Price = Convert.ToInt32( Items.salehouse.price*10000/Items.area),

                    new_oldhouse=Items.salehouse.types,
                };
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
            condition = condition.And(m => m.address1.area==customer_search_val || m.address1.city==customer_search_val
                || m.address1.community == customer_search_val || m.decoration == customer_search_val
                || m.title == customer_search_val || m.types == customer_search_val || m.salehouse.developer == customer_search_val);
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
             int[] price_range = Price_Parse(price_search);
            if (price_range[1] == -1)
            {
                condition = condition.And(m => m.salehouse.price >= price_range[0]);
            }

            if (price_range[1] != -1)
            {
                condition = condition.And(m => m.salehouse.price >= price_range[0]);
                condition = condition.And(m => m.salehouse.price < price_range[1]);
            }
             //根据房型搜索
           // int RoomKind = Convert.ToInt32(Session["house"]);
            int RoomKind = RoomKind_Parse(house_search);
            if (RoomKind!=0)
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
    


        public class HouseInfo
        {
            public int photoId
            {
                get;
                set;
            }
           
            public String Description   //房屋描述
            {
                get;
                set;
            }
            //地址
            public String city
            {
                get;
                set;
            }
            public String local_Area  //地址，，，，区域
            {
                get;
                set;
            }
            public String Street   //地址      街道
            {
                get;
                set;
            }
            public String Community  // 地址      小区
            {
                get;
                set;
            }

            public String Level  //楼层
            {
                get;
                set;
            }
            //户型
            public int Room      //室
            {
                get;
                set;
            }
            public int Hall      //厅
            {
                get;
                set;
            }
            public int Toilet      //卫
            {
                get;
                set;
            }
            public string Area
            {
                get;
                set;
            }
            //类型
            public String type
            {
                get;
                set;
            }
            public String Decoration   //装修
            {
                get;
                set;
            }

            public String phoneNum      //经纪人电话号码
            {
                get;
                set;
            }
            public int Price    //房屋价格
            {
                get;
                set;
            }
            public string new_oldhouse
            {
                get;
                set;
            }
        }

        private int[] Price_Parse(string search_condition_price)
        {
            int[] price_range = new int[2];
            if (search_condition_price.Equals("全部"))
            {
                price_range[0] = 0;
                price_range[1] = -1;
                return price_range;
            }

            if (search_condition_price.Equals("100万以下"))
            {
                price_range[0] = 0;
                price_range[1] = 100;
                return price_range;
            }

            if (search_condition_price.Equals("100-150万"))
            {
                price_range[0] = 100;
                price_range[1] = 150;
                return price_range;
            }
            if (search_condition_price.Equals("150-250万"))
            {
                price_range[0] = 150;
                price_range[1] = 250;
                return price_range;
            }
            if (search_condition_price.Equals("250-350万"))
            {
                price_range[0] = 250;
                price_range[1] = 350;
                return price_range;
            }
            if (search_condition_price.Equals("350-500万"))
            {
                price_range[0] = 350;
                price_range[1] = 500;
                return price_range;
            }
            if (search_condition_price.Equals("500万以上"))
            {
                price_range[0] = 500;
                price_range[1] = -1;
                return price_range;
            }

            String[] temp = new String[2];
            temp = search_condition_price.Split('-');

            try
            {
                price_range[0] = Int32.Parse(temp[0]);
                price_range[1] = Int32.Parse(temp[1]);
            }
            catch
            {
                price_range[0] = 0;
                price_range[1] = -1;
            }
            return price_range;

        }


        private int RoomKind_Parse(String search_condition_roomkind)
        {
            int roomKind = 0;
            if (search_condition_roomkind.Equals("全部"))
            {
                roomKind = 0;
            }
            if (search_condition_roomkind.Equals("一室"))
            {
                roomKind = 1;
            }
            if (search_condition_roomkind.Equals("二室"))
            {
                roomKind = 2;
            }
            if (search_condition_roomkind.Equals("三室"))
            {
                roomKind = 3;
            }
            if (search_condition_roomkind.Equals("四室"))
            {
                roomKind = 4;
            }
            if (search_condition_roomkind.Equals("五室及以上"))
            {
                roomKind = 5;
            }
            if (search_condition_roomkind.Equals("别墅"))
            {
                roomKind = 6;
            }
            return roomKind;
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