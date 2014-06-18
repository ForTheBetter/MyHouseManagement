using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2.rent
{
    public partial class search_result_rent : System.Web.UI.Page
    {

        private String Search_Condition_Area = "不限";
        private String Search_Condition_Price = "不限";
        private String Search_Condition_RoomKind = "不限";
        private String Search_Condition_Type = "不限";
        private String Search_Result_Decoration = "不限";
        private String Search_Result_RentType = "全部房源";
        private String Order_Type = "默认排序";
        private int MaxNumber = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
          //  PagingHtml(MaxNumber);
            if (!IsPostBack)
            {
                Session["Search_Condition_Area"] = Search_Condition_Area;
                Session["Search_Condition_Price"] = Search_Condition_Price;
                Session["Search_Condition_RoomKind"] = Search_Condition_RoomKind;
                Session["Search_Condition_Tye"] = Search_Condition_Type;
                Session["Search_Result_Decoration"] = Search_Result_Decoration;
                Session["Search_Result_RentType"] = Search_Result_RentType;
                Session["Order_Type"] = Order_Type;
                String Search_text = Request.QueryString.Get("search");
                if (Search_text == null)
                {
                    
                    show(search_by_condition(), Order_Type);
                }
                else
                {
                    show(search_by_condition(Search_text), Order_Type);
                }
            }

            if (IsPostBack)
            {
                Search_Condition_Area = Session["Search_Condition_Area"].ToString();
                Search_Condition_Price = Session["Search_Condition_Price"].ToString();
                Search_Condition_RoomKind = Session["Search_Condition_RoomKind"].ToString();
                Search_Condition_Type = Session["Search_Condition_Tye"].ToString();
                Search_Result_Decoration = Session["Search_Result_Decoration"].ToString();
                Search_Result_RentType = Session["Search_Result_RentType"].ToString();
                Order_Type = Session["Order_Type"].ToString();
            }
        }



        protected void Search_Area_Click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            if (!link_button1.Text.Equals("不限"))
            {
                Search_Condition_Area = link_button1.Text + "区";
            }
            else
            {
                Search_Condition_Area = link_button1.Text ;
            }
            Session["Search_Condition_Area"] = Search_Condition_Area;
            show(search_by_condition(), Order_Type);

        }

        protected void search_price_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            Search_Condition_Price = link_button1.Text;
            Session["Search_Condition_Price"] = Search_Condition_Price;
            show(search_by_condition(), Order_Type);

        }

        protected void search_roomkind_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            Search_Condition_RoomKind = link_button1.Text;
            Session["Search_Condition_RoomKind"] = Search_Condition_RoomKind;
            show(search_by_condition(), Order_Type);

        }

        protected void search_type_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            Search_Condition_Type = link_button1.Text;
            Session["Search_Condition_Tye"] = Search_Condition_Type;
            show(search_by_condition(), Order_Type);

        }



        protected void PriceButton_Click(object sender, EventArgs e)
        {
            ErrorMessage.Text = "";
            String Min_Price = MinPrice.Text;
            String Max_Price = MaxPrice.Text;

            int[] price_range = new int[2];

            try
            {
                price_range[0] = int.Parse(Min_Price);
                price_range[1] = int.Parse(Max_Price);
            }
            catch(Exception)
            {
                ErrorMessage.Text = "  输入有误";
                return;
            }
            Search_Condition_Price = price_range[0] + "-" + price_range[1];
            Session["Search_Condition_Price"] = Search_Condition_Price;
            show(search_by_condition(), Order_Type);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String input = InputText.Text;
            if (input == null || input.Equals(""))
            {
                return;
            }
            show(search_by_condition(input), Order_Type);

        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            Search_Condition_Area = "不限";
            Search_Condition_Price = "不限";
            Search_Condition_RoomKind = "不限";
            Search_Condition_Type = "不限";
            Search_Result_Decoration = "不限";
            Search_Result_RentType = "全部房源";
            Order_Type = "默认排序";
            Session["Search_Condition_Area"] = Search_Condition_Area;
            Session["Search_Condition_Price"] = Search_Condition_Price;
            Session["Search_Condition_RoomKind"] = Search_Condition_RoomKind;
            Session["Search_Condition_Tye"] = Search_Condition_Type;
            Session["Search_Result_Decoration"] = Search_Result_Decoration;
            Session["Search_Result_RentType"] = Search_Result_RentType;
            Session["Order_Type"] = Order_Type;
            show(search_by_condition(), Order_Type);


        }


        protected void reqult_rentTypr_Click(object sender, EventArgs e)
        {
            LinkButton link_button = (LinkButton)sender;
            Search_Result_RentType = link_button.Text;
            Session["Search_Result_RentType"] = Search_Result_RentType;
            show(search_by_condition(), Order_Type);

        }

        protected void OrderType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            Order_Type = dropDownList.SelectedValue;
            Session["Order_Type"] = Order_Type;
            show(search_by_condition(), Order_Type);


        }

        protected void Decoration_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            Search_Result_Decoration = dropDownList.SelectedValue;
            Session["Search_Result_Decoration"] = Search_Result_Decoration;
            show(search_by_condition(), Order_Type);

        }

        private int[] Price_Parse(string search_condition_price)
        {
            int[] price_range = new int[2];
            if (search_condition_price.Equals("不限"))
            {
                price_range[0] = 0;
                price_range[1] = -1;
                return price_range;
            }

            if (search_condition_price.Equals("500以下"))
            {
                price_range[0] = 0;
                price_range[1] = 500;
                return price_range;
            }

            if (search_condition_price.Equals("8000以上"))
            {
                price_range[0] = 8000;
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
            if (search_condition_roomkind.Equals("不限"))
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
            return roomKind;
        }


        private String ConvToHtml(HouseInfo houseInfo)
        {
            String Html = "";
            Html += "<dl class=\"dd_list_house\">";
            Html += "<dt class=\"dt_photo\"><a href=\"singleHouse.aspx?id=";
            Html += houseInfo.House_id;
            Html += "\">";
            Html += "<img width=\"100px\"  height=\"75px\" src=\"showimg.aspx?id=";
            Html += houseInfo.House_id;
            Html += "\" /></a>";
            Html += "</dt> ";
            Html += "<dd class=\"dd_houseInfo\">";
            Html += " <a href=\"singleHouse.aspx?id=";
            Html += houseInfo.House_id;
            Html += "&type=1\" class=\"house_description\">";
            Html += houseInfo.RentDescription;
            Html += "</a>";
            Html += "<p></p>";
            Html += "<p class=\"p_tag\">";
            Html += houseInfo.Community + "&nbsp;&nbsp;" + houseInfo.Area + houseInfo.Street;
            Html += "</p>";
            Html += " <p class=\"p_tag\">";
            Html += houseInfo.Room + "室" + houseInfo.Hall + "厅," + houseInfo.RentType + "," + houseInfo.Decoration + ",楼层" + houseInfo.Level;
            Html += "</p>";
            Html += "<p class=\"p_name\">";
            Html += "经纪人:" + houseInfo.AgentName;
            Html += "</p>";
            Html += "</dd>";
            Html += "<dd class=\"dd_price\">";
            Html += "<strong>";
            Html += houseInfo.RentPrice;
            Html += "</strong> 元/月";
            Html += "</dd>";
            Html += "</dl>";

            return Html;
        }

        private List<HouseInfo> search_by_condition()
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getSearchExpression());
            foreach (var Items in result)
            {
                manage temp = dc.manage.FirstOrDefault(n => n.house == Items.house_id);
                if (temp != null)
                {
                    person result1 = dc.person.FirstOrDefault(m => m.person_id == temp.agent);
                    HouseInfo houseInfo = new HouseInfo
                    {
                        House_id = Items.house_id,
                        RentType = Items.renthouse.types,
                        RentPrice = (int)Items.renthouse.payment,
                        RentDescription = Items.title,
                        Area = Items.address1.area,
                        Street = Items.address1.street,
                        Community = Items.address1.community,
                        Level = Items.levels,
                        Decoration = Items.decoration,
                        PhotoCount = Items.photo.Count,
                        AgentName = result1.names,
                        Room = (int)Items.room,
                        Hall = (int)Items.hall,
                    };

                    list.Add(houseInfo);
                }               
            }
            return list;
        }

        private List<HouseInfo> search_by_condition(String input)
        {
            HMS_DBDataContext dc = new HMS_DBDataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getSearchExpression(input));
            foreach (var Items in result)
            {
                // @delegate result1=dc.@delegate.FirstOrDefault(n=>n.house==Items.house_id);

                manage temp = dc.manage.FirstOrDefault(n => n.house == Items.house_id);
                if (temp != null)
                {
                    person result1 = dc.person.FirstOrDefault(m => m.person_id == temp.agent);
                    HouseInfo houseInfo = new HouseInfo
                    {
                        House_id = Items.house_id,
                        RentType = Items.renthouse.types,
                        RentPrice = (int)Items.renthouse.payment,
                        RentDescription = Items.title,
                        Area = Items.address1.area,
                        Street = Items.address1.street,
                        Community = Items.address1.community,
                        Level = Items.levels,
                        Decoration = Items.title,
                        PhotoCount = Items.photo.Count,
                        AgentName = result1.names,
                        Room = (int)Items.room,
                        Hall = (int)Items.hall,
                    };

                    list.Add(houseInfo);
                }
            
            }
            return list;
        }


        public Expression<Func<house, bool>> getSearchExpression()
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.True<house>();
            //search_area
            if (!Search_Condition_Area.Equals("不限"))
            {
                condition = condition.And(m => m.address1.area == Search_Condition_Area);
            }

            int[] price_range = Price_Parse(Search_Condition_Price);
            if (price_range[1] == -1)
            {
                condition = condition.And(m => m.renthouse.payment >= price_range[0]);
            }

            if (price_range[1] != -1)
            {
                condition = condition.And(m => m.renthouse.payment >= price_range[0]);
                condition = condition.And(m => m.renthouse.payment < price_range[1]);
            }

            int RoomKind = RoomKind_Parse(Search_Condition_RoomKind);
            if (RoomKind != 0)
            {
                condition = condition.And(m => m.room == RoomKind);
            }

            if (!Search_Condition_Type.Equals("不限"))
            {
                condition = condition.And(m => m.types == Search_Condition_Type);
            }

            if (!Search_Result_RentType.Equals("全部房源"))
            {
                condition = condition.And(n => n.renthouse.types == Search_Result_RentType);
            }

            if (!Search_Result_Decoration.Equals("不限"))
            {
                condition = condition.And(n => n.decoration == Search_Result_Decoration);
            }
            return condition;
        }

        public Expression<Func<house, bool>> getSearchExpression(String Str)
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.False<house>();
            condition = condition.Or(n => n.address1.area.Contains(Str));
            condition = condition.Or(n => n.hall.ToString().Contains(Str));
            condition = condition.Or(n => n.address1.community.Contains(Str));
            condition = condition.Or(n => n.address1.street.Contains(Str));
            condition = condition.Or(n => n.decoration.Contains(Str));
            condition = condition.Or(n => n.renthouse.description.Contains(Str));
            condition = condition.Or(n => n.renthouse.types.Contains(Str));
            condition = condition.Or(n => (n.address1.city + n.address1.area + n.address1.street + n.address1.community).Contains(Str));
            condition = condition.Or(n => (n.decoration + n.types + n.renthouse.types).Contains(Str));
            condition = condition.And(n => n.renthouse.payment > 0);
        
            return condition;
        }

        public void show(List<HouseInfo> list, String orderType)
        {
            //PagingHtml(8);
            HouseCount.Text = list.Count.ToString();
            content_result.InnerHtml = "";
            showAllCondition();
            if (orderType.Equals("默认排序"))
            {

                if (list.Count <= MaxNumber)
                {
                    paging.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    PageShow.Visible = false;
                    foreach (HouseInfo Items in list)
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }

                }

                else
                {
                    int list_count = list.Count;
                    int count;
                    if (list_count % MaxNumber == 0)
                    {
                        count = list_count / MaxNumber;
                    }
                    else
                    {
                        count = list_count / MaxNumber + 1;
                    }
                    Session["PageCount"] = count;
                    Session["CurrentPage"] = 1;
                    PageShow.Text = Session["CurrentPage"].ToString() + "/" + Session["PageCount"].ToString();
                    paging.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = true;
                    PageShow.Visible = true;
                    foreach (HouseInfo Items in list.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                   // String PageHtml = PagingHtml(count);
                    //content_result.InnerHtml += PageHtml;
                }

            }
            else if (orderType.Equals("租金从高到低"))
            {
                var result = list.OrderByDescending(n => n.RentPrice);
                if (result.Count() <= MaxNumber)
                {
                    paging.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    PageShow.Visible = false;
                    foreach (HouseInfo Items in result)
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    paging.Visible = true;
                    int list_count = list.Count;
                    int count;
                    if (list_count % MaxNumber == 0)
                    {
                        count = list_count / MaxNumber;
                    }
                    else
                    {
                        count = list_count / MaxNumber + 1;
                    }
                    Session["PageCount"] = count;
                    Session["CurrentPage"] = 1;
                    PageShow.Text = Session["CurrentPage"].ToString() + "/" + Session["PageCount"].ToString();
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = true;
                    PageShow.Visible = true;
                    foreach (HouseInfo Items in result.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }         
            }
            else if (orderType.Equals("租金从低到高"))
            {
                var result = list.OrderBy(n => n.RentPrice);
                if (result.Count() <= MaxNumber)
                {
                    paging.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    PageShow.Visible = false;
                    foreach (HouseInfo Items in result)
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    paging.Visible = true;
                    int list_count = list.Count;
                    int count;
                    if (list_count % MaxNumber == 0)
                    {
                        count = list_count / MaxNumber;
                    }
                    else
                    {
                        count = list_count / MaxNumber + 1;
                    }
                    Session["PageCount"] = count;
                    Session["CurrentPage"] = 1;
                    PageShow.Text = Session["CurrentPage"].ToString() + "/" + Session["PageCount"].ToString();
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = true;
                    PageShow.Visible = true;
                    foreach (HouseInfo Items in result.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
            else
            {
                if (list.Count() <= MaxNumber)
                {
                    paging.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    PageShow.Visible = false;
                    foreach (HouseInfo Items in list)
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    paging.Visible = true;
                    int list_count = list.Count;
                    int count;
                    if (list_count % MaxNumber == 0)
                    {
                        count = list_count / MaxNumber;
                    }
                    else
                    {
                        count = list_count / MaxNumber + 1;
                    }
                    Session["PageCount"] = count;
                    Session["CurrentPage"] = 1;
                    PageShow.Text = Session["CurrentPage"].ToString() + "/" + Session["PageCount"].ToString();
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = true;
                    PageShow.Visible = true;
                    foreach (HouseInfo Items in list.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
        }

        public void show(List<HouseInfo> list, String orderType,int page)
        {
            //PagingHtml(MaxNumber);
            HouseCount.Text = list.Count.ToString();
            PageShow.Text = Session["CurrentPage"].ToString() + "/" + Session["PageCount"].ToString();
            all_condition.InnerHtml = "";
            content_result.InnerHtml = "";
            showAllCondition();
            if (orderType.Equals("默认排序"))
            {
                if (page == 1)
                {
                    foreach (HouseInfo Items in list.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    int skip = MaxNumber * (page - 1);
                    foreach (HouseInfo Items in list.Skip(skip).Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
            else if (orderType.Equals("租金从高到低"))
            {
                var result = list.OrderByDescending(n => n.RentPrice);
                if (page == 1)
                {
                    foreach (HouseInfo Items in result.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    int skip = MaxNumber * (page - 1);
                    foreach (HouseInfo Items in result.Skip(skip).Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
            else if (orderType.Equals("租金从低到高"))
            {
                var result = list.OrderBy(n => n.RentPrice);
                if (page == 1)
                {
                    foreach (HouseInfo Items in result.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    int skip = MaxNumber * (page - 1);
                    foreach (HouseInfo Items in result.Skip(skip).Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
            else
            {
                if (page == 1)
                {
                    foreach (HouseInfo Items in list.Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
                else
                {
                    int skip = MaxNumber * (page - 1);
                    foreach (HouseInfo Items in list.Skip(skip).Take(MaxNumber))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                }
            }
        }

        protected void TransferPage(object sender, CommandEventArgs e)
        {
           // Response.Write("<script type='text/javascript'>alert('" + ((LinkButton)sender).ClientID + "');</script>");
            String Action = e.CommandArgument.ToString();
            int PageNumber=(int)Session["PageCount"];
            int CurrentPage=(int)Session["CurrentPage"];
            if (Action.Equals("FirstPage"))
            {
                if (CurrentPage == 1)
                {
                    return;
                }
                else
                {
                    Session["CurrentPage"] = 1;
                    show(search_by_condition(), Order_Type, 1);                 
                }
            }
            if (Action.Equals("PrePage"))
            {
                if (CurrentPage == 1)
                {
                    return;
                }
                else
                {
                    Session["CurrentPage"] = (int)Session["CurrentPage"] - 1;
                    show(search_by_condition(), Order_Type, CurrentPage-1);                   
                }
            }
            if (Action.Equals("NextPage"))
            {
                if (CurrentPage == PageNumber)
                {
                    return;
                }
                else
                {
                    Session["CurrentPage"] = (int)Session["CurrentPage"] + 1;
                    show(search_by_condition(), Order_Type, CurrentPage + 1);                   
                }
            }
            if (Action.Equals("LastPage"))
            {
                if (CurrentPage == PageNumber)
                {
                    return;
                }
                else
                {
                    Session["CurrentPage"] = PageNumber;
                    show(search_by_condition(), Order_Type, PageNumber);                   
                }
            }
        }

        public void showAllCondition()
        {
            String Html = "<span>搜索标签:</span>";
            if (!Search_Condition_Area.Equals("不限"))
            {
                Html += "<span class=\"strong\">" + Search_Condition_Area + "</span>";
            }

            if (!Search_Condition_Price.Equals("不限"))
            {
                Html += "<span class=\"strong\">" + Search_Condition_Price + "</span>";
            }

            if (!Search_Condition_RoomKind.Equals("不限"))
            {
                Html += "<span class=\"strong\">" + Search_Condition_RoomKind + "</span>";
            }

            if (!Search_Condition_Type.Equals("不限"))
            {
                Html += "<span class=\"strong\">" + Search_Condition_Type + "</span>";
            }

            if (!Search_Result_Decoration.Equals("不限"))
            {
                Html += "<span class=\"strong\">" + Search_Result_Decoration + "</span>";
            }

            if (!Search_Result_RentType.Equals("全部房源"))
            {
                Html += "<span class=\"strong\">" + Search_Result_RentType + "</span>";
            }

            if (!Order_Type.Equals("默认排序"))
            {
                Html += "<span class=\"strong\">" + Order_Type + "</span>";
            }

            all_condition.InnerHtml = "";
            all_condition.InnerHtml += Html;
        }
    }


    public class HouseInfo
    {

        public int House_id
        {
            set;
            get;
        }
        public String RentType    //出租类型
        {
            get;
            set;
        }
        public int RentPrice    //出租价格
        {
            get;
            set;
        }
        public String RentDescription   //房屋描述
        {
            get;
            set;
        }

        public String Area  //地址，，，，区域
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

        public String Decoration   //装修
        {
            get;
            set;
        }

        public int PhotoCount    //房屋图片个数
        {
            get;
            set;
        }
        public String AgentName    //经纪人名字
        {
            get;
            set;
        }

        public int Room
        {
            set;
            get;
        }

        public int Hall
        {
            set;
            get;
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