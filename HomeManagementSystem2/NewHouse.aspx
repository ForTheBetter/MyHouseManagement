<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="NewHouse.aspx.cs" Inherits="HomeManagementSystem2.NewHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .search_result
        {
            height: 59px;
        }

        .quicktags
        {
            width: 205px;
        }
    </style>
    <title>新房</title>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../css/house.css" rel="stylesheet" />
    <div class="search_text">
        <div class="search_text_box">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="search_input_text" autocomplete="off" placeholder="请输入房源特征,地点或小区名..." Width="322px"></asp:TextBox>
        </div>

        <asp:Button ID="Button4" CssClass="search_text_button" runat="server" Text="搜索"  OnClick="custom_earch" />
    </div>
    <div class="topFilter">
        <div class="topHeader">
            <span class="topHeaderBut">
                全部上海楼盘
            </span>
            <a href="http://www.google.com" class="findH" target="_blank">
                上海楼盘大全 »
            </a>
        </div>
        <div class="topContent">
            <div class="pos">
                <span class="topContentSpan">
                    区域:
                </span>
                <span class="topContentSpans">
                    <strong class="show_strong" id="area_show" runat="server">全部</strong>
                    <asp:LinkButton ID="area1" runat="server" OnClick="search_by_area">松江</asp:LinkButton>
                    <asp:LinkButton ID="area2" runat="server" OnClick="search_by_area">金山</asp:LinkButton>
                    <asp:LinkButton ID="area3" runat="server" OnClick="search_by_area">嘉定</asp:LinkButton>
                    <asp:LinkButton ID="area4" runat="server" OnClick="search_by_area">青浦</asp:LinkButton>
                    <asp:LinkButton ID="area5" runat="server" OnClick="search_by_area">浦东</asp:LinkButton>
                    <asp:LinkButton ID="area6" runat="server" OnClick="search_by_area">奉贤</asp:LinkButton>
                    <asp:LinkButton ID="area7" runat="server" OnClick="search_by_area">闵行</asp:LinkButton>
                    <asp:LinkButton ID="area8" runat="server" OnClick="search_by_area">宝山</asp:LinkButton>
                    <asp:LinkButton ID="area9" runat="server" OnClick="search_by_area">南汇</asp:LinkButton>
                    <asp:LinkButton ID="area10" runat="server" OnClick="search_by_area">徐汇</asp:LinkButton>
                    <asp:LinkButton ID="area11" runat="server" OnClick="search_by_area">普陀</asp:LinkButton>
                    <asp:LinkButton ID="area12" runat="server" OnClick="search_by_area">长宁</asp:LinkButton>
                    <asp:LinkButton ID="area13" runat="server" OnClick="search_by_area">闸北</asp:LinkButton>
                    <asp:LinkButton ID="area14" runat="server" OnClick="search_by_area">杨浦</asp:LinkButton>
				    <asp:LinkButton ID="area15" runat="server" OnClick="search_by_area">静安</asp:LinkButton>
                    <asp:LinkButton ID="area16" runat="server" OnClick="search_by_area">黄浦</asp:LinkButton>
                    <asp:LinkButton ID="area17" runat="server" OnClick="search_by_area">卢湾</asp:LinkButton>
                    <asp:LinkButton ID="area19" runat="server" OnClick="search_by_area">崇明</asp:LinkButton>
                    <asp:LinkButton ID="area20" runat="server" OnClick="search_by_area">全部</asp:LinkButton>
                </span>
            </div>
            <div class="price">
                <span class="topContentSpan">
                    价格:
                </span>
                <span class="topContentSpans">
                    <strong id="price_show" runat="server">全部</strong>
                    <asp:LinkButton ID="money1" runat="server" OnClick="search_by_money" >100万以下</asp:LinkButton>
                    <asp:LinkButton ID="money2" runat="server" OnClick="search_by_money" >100-150万</asp:LinkButton>
                    <asp:LinkButton ID="money3" runat="server" OnClick="search_by_money">150-250万</asp:LinkButton>
                    <asp:LinkButton ID="money4" runat="server" OnClick="search_by_money">250-350万</asp:LinkButton>
                    <asp:LinkButton ID="money5" runat="server" OnClick="search_by_money">350-500万</asp:LinkButton>
                    <asp:LinkButton ID="money6" runat="server" OnClick="search_by_money">500万以上</asp:LinkButton>   
                    <asp:LinkButton ID="money7" runat="server" OnClick="search_by_money">全部</asp:LinkButton>                                                 
                </span>
            </div>
            <div class="attr">
                <span class="topContentSpan">
                    房型:
                </span>
                <span class="topContentSpans">
                    <strong class="room_show" id="room_show" runat="server">全部</strong>
                    <asp:LinkButton ID="house1" runat="server" OnClick="search_by_house">一室</asp:LinkButton>
                    <asp:LinkButton ID="house2" runat="server" OnClick="search_by_house">二室</asp:LinkButton>
			        <asp:LinkButton ID="house3" runat="server" OnClick="search_by_house">三室</asp:LinkButton>
                    <asp:LinkButton ID="house4" runat="server" OnClick="search_by_house">四室</asp:LinkButton>
                    <asp:LinkButton ID="house6" runat="server" OnClick="search_by_house">五室及以上</asp:LinkButton>
                    <asp:LinkButton ID="house8" runat="server" OnClick="search_by_house">全部</asp:LinkButton>
                </span>
            </div>
            <div class="house_type">
                <span class="topContentSpan">
                    类型:
                </span>
                <span class="topContentSpans">
                    <strong id="type_show" runat="server">全部</strong>
                    <asp:LinkButton ID="type1" runat="server" OnClick="search_by_type">普通房</asp:LinkButton>
                    <asp:LinkButton ID="type2" runat="server" OnClick="search_by_type">新洋房</asp:LinkButton>
                    <asp:LinkButton ID="type5" runat="server" OnClick="search_by_type">公寓</asp:LinkButton>
			        <asp:LinkButton ID="type3" runat="server" OnClick="search_by_type">别墅</asp:LinkButton>
                    <asp:LinkButton ID="type4" runat="server" OnClick="search_by_type">老公房</asp:LinkButton>
                    <asp:LinkButton ID="type6" runat="server" OnClick="search_by_type">酒店</asp:LinkButton>
                    <asp:LinkButton ID="type7" runat="server" OnClick="search_by_type">全部</asp:LinkButton>
                </span>
            </div>
            <div class="decorataing">
                <span class="topContentSpan">
                    装修:
                </span>
                <span class="topContentSpans">
                    <strong id="decorate_show" runat="server">全部</strong>
                    <asp:LinkButton ID="decorate1" runat="server" OnClick="search_by_decorate">毛坯</asp:LinkButton>
                    <asp:LinkButton ID="decorate2" runat="server" OnClick="search_by_decorate">普通装修</asp:LinkButton>
			        <asp:LinkButton ID="decorate3" runat="server" OnClick="search_by_decorate">精装修</asp:LinkButton>
                    <asp:LinkButton ID="decorate4" runat="server" OnClick="search_by_decorate">豪华装修</asp:LinkButton>
                    <asp:LinkButton ID="decorate5" runat="server" OnClick="search_by_decorate">全部</asp:LinkButton>
                </span>
            </div>
        </div>
    </div>
<div class="listing">
    <div class="top_bar glb_xp_topBar">
        <div class="text fl" >共有<span class="show_total" id="show_total" runat="server"> 2 </span>个符合要求的上海新房楼盘
            <span class="price"></span>
        </div>
        <div class="sort_select_box fl">
            <div class="newSort">
                <asp:DropDownList class="sortbar" ID="OrderType" runat="server" Style="margin-left: 450px" AutoPostBack="true" OnSelectedIndexChanged="OrderType_SelectedIndexChanged">
                    <asp:ListItem>默认排序</asp:ListItem>
                    <asp:ListItem>总价由高到低</asp:ListItem>
                    <asp:ListItem>总价由低到高</asp:ListItem>
                    <asp:ListItem>单价由高到低</asp:ListItem>
                    <asp:ListItem>单价由低到高</asp:ListItem>
                    <asp:ListItem>面积由大到小</asp:ListItem>
                    <asp:ListItem>面积由小到大</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        
    </div>
</div>
    <div class="list" id="list" runat="server">
        <dl class="dd_list_house">
            <dt class="dt_photo">
               <img width="100px" height="50px" src="showimg.aspx?id=1" />
            </dt>
            <dd class="dd_houseInfo">
                <a href="#" class="house_description">
                    最佳商品房
                </a>
                <p></p>
                <p class="p_tag">
                    嘉定区曹安公路 567弄
                </p>
                <p class="p_tag">
                    1室1厅1卫 面积：100平方米           
                </p>
                <p class="p_name">
                    电话：18817365917           
                </p>
            </dd>
            <dd class="dd_price">
                <strong>80万</strong>
            </dd>
            <div class="info_bot">
                <i class="b" style="float:left">活动</i>
                <div class="bot_R" style="float:left">
                     <a href="http://www.baidu.com" target="_blank">巧虎来到安亭新镇了,赶快过来参加吧!前一百名抢购者送~~一套</a><br/>
                 </div>
            </div>
        </dl>
    </div>
     <div class="p_thread thread_theme_4" id="thread_theme_4" runat="server">
	    <div class="l_thread_info">
		    <ul class="l_posts_num">
                <li class="l_pager pager_theme_3">
                    <asp:LinkButton ID="first" runat="server" OnClick="changepage">首页</asp:LinkButton>
                    <asp:LinkButton ID="before" runat="server" OnClick="changepage">上一页</asp:LinkButton>
                    <span class="current_page" id="current_page" runat="server">1</span>
                    <asp:LinkButton ID="next" runat="server" OnClick="changepage">下一页</asp:LinkButton>
                    <asp:LinkButton ID="last" runat="server" OnClick="changepage">尾页</asp:LinkButton>
                </li>
	            <li class="l_reply_num" style="margin-left:2px; margin-right:10px">共有<span class="total_page" id="total_page" runat="server">1</span>页</li>
            </ul>
         </div>
	  </div>
     
</asp:Content>
