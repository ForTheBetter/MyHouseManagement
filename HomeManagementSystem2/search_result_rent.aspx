<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="search_result_rent.aspx.cs" Inherits="HomeManagementSystem2.rent.search_result_rent" %>

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

        #all_condition
        {
            height: 25px;
        }
    </style>
    <title>租房</title>
    <script type="text/ecmascript" src="js/jquery.js"></script>
    <script type="text/ecmascript" src="js/rent.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/css/rent.css" rel="stylesheet" />
    <div class="search_text">
        <div class="search_text_box">
            <asp:TextBox ID="InputText" runat="server" CssClass="search_input_text" autocomplete="off" value="请输入房源特征,地点或小区名..." Width="322px"></asp:TextBox>
        </div>

        <asp:Button ID="SearchButton" CssClass="search_text_button" runat="server" Text="搜索" BorderStyle="Solid" BorderWidth="1px" Height="30px" OnClick="Button4_Click" />
    </div>
    <hr />

    <div class="search_condition">
        <dl class="search_condition_area">
            <dt>区域：</dt>
            <dd>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Search_Area_Click">不限</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="浦东" OnClick="Search_Area_Click">浦东</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="长宁" OnClick="Search_Area_Click">长宁</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="闵行" OnClick="Search_Area_Click">闵行</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="徐汇" OnClick="Search_Area_Click">徐汇</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="普陀" OnClick="Search_Area_Click">普陀</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="杨浦" OnClick="Search_Area_Click">杨浦</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="宝山" OnClick="Search_Area_Click">宝山</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="虹口" OnClick="Search_Area_Click">虹口</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="闸北" OnClick="Search_Area_Click">闸北</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="松江" OnClick="Search_Area_Click">松江</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="静安" OnClick="Search_Area_Click">静安</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="黄浦" OnClick="Search_Area_Click">黄浦</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="嘉定" OnClick="Search_Area_Click">嘉定</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="卢湾" OnClick="Search_Area_Click">卢湾</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="南汇" OnClick="Search_Area_Click">南汇</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="青浦" OnClick="Search_Area_Click">青浦</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="奉贤" OnClick="Search_Area_Click">奉贤</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="金山" OnClick="Search_Area_Click">金山</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="崇明" OnClick="Search_Area_Click">崇明</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="上海周边" OnClick="Search_Area_Click">上海周边</asp:LinkButton></dd>
        </dl>
        <dl class="search_condition_price">
            <dt>租金：</dt>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="不限" OnClick="search_price_click">不限</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="500以下" OnClick="search_price_click">500以下</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="500-1000" OnClick="search_price_click">500-1000</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="1000-1500" OnClick="search_price_click">1000-1500</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="1500-2000" OnClick="search_price_click">1500-2000</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="2000-2500" OnClick="search_price_click">2000-2500</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="2500-3000" OnClick="search_price_click">2500-3000</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="3000-4000" OnClick="search_price_click">3000-4000</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="4000-8000" OnClick="search_price_click">4000-8000</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="8000以上" OnClick="search_price_click">8000以上</asp:LinkButton></dd>
            <dd>

                <asp:TextBox ID="MinPrice" runat="server" Width="38px"></asp:TextBox>&nbsp;-
            <asp:TextBox ID="MaxPrice" runat="server" Width="36px"></asp:TextBox>
                元
            <asp:Button ID="PriceButton" CssClass="button" runat="server" Text="筛选" BorderStyle="Solid" BorderWidth="1px" Height="21px" Width="62px" OnClick="PriceButton_Click" />
            </dd>
            <asp:Label ID="ErrorMessage" runat="server" ForeColor="#CC0000"></asp:Label>
        </dl>
        <dl class="search_condition_roomKind">
            <dt>房型：</dt>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="不限" OnClick="search_roomkind_click">不限</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="一室" OnClick="search_roomkind_click">一室</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="二室" OnClick="search_roomkind_click">二室</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="三室" OnClick="search_roomkind_click">三室</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="四室" OnClick="search_roomkind_click">四室</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" rel="nofollow" title="五室及以上" OnClick="search_roomkind_click">五室及以上</asp:LinkButton></dd>
        </dl>
        <dl class="search_condition_type">
            <dt>类别：</dt>
            <dd>
                <asp:LinkButton runat="server" title="不限" OnClick="search_type_click">不限</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton ID="LinkButton2" runat="server" title="不限" OnClick="search_type_click">普通房</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="公寓" OnClick="search_type_click">公寓</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="老公房" OnClick="search_type_click">老公房</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="新里洋房" OnClick="search_type_click">新洋房</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="别墅" OnClick="search_type_click">别墅</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="酒店公寓" OnClick="search_type_click">酒店</asp:LinkButton></dd>
            <dd>
                <asp:LinkButton runat="server" title="其他" OnClick="search_type_click">其他</asp:LinkButton></dd>
        </dl>
    </div>
    <div runat="server" class="allcondition">
        <div class="allcondition_left" runat="server" id="all_condition">
            
       </div>
       <div class="allcondition_right">

       <asp:Button ID="ClearButton" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="22px" Text="清除标签" Width="78px" OnClick="ClearButton_Click" />

        </div>

    </div>


    <div class="main-content" runat="server">      
        <div class="search_result">
            <div class="quicktags">
                <ul>
                    <li class="all search_result_tag">
                        <asp:LinkButton runat="server" OnClick="reqult_rentTypr_Click">全部房源</asp:LinkButton>
                    </li>
                    <li class="con-all search_result_tag">
                        <asp:LinkButton runat="server" OnClick="reqult_rentTypr_Click">整租</asp:LinkButton>
                    </li>
                    <li class="con-all search_result_tag">
                        <asp:LinkButton runat="server" OnClick="reqult_rentTypr_Click">合租</asp:LinkButton>
                    </li>
                </ul>
                <div style="width: 484px; height: 27px; line-height:24px; font-size:12px; float:left;">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总共为你搜索到&nbsp;<asp:Label ID="HouseCount" runat="server" ForeColor="#FF3300"></asp:Label>&nbsp;套房子&nbsp;&nbsp;&nbsp;&nbsp; 
                   
                    
                    <asp:LinkButton ID="LinkButton7" runat="server" OnCommand="TransferPage" CommandArgument="PrePage" BorderStyle="Solid" BorderWidth="1px" style="height:20px;line-height:20px;margin-left:70px;"><span class="prepage" style="height:20px;"><i class="prepage_icon">&nbsp;</i></span></asp:LinkButton>
        
                     <asp:Label ID="PageShow" runat="server" style="padding:0 8px;height:20px;line-height:20px" BorderStyle="Solid" BorderWidth="1"></asp:Label>
                <asp:LinkButton ID="LinkButton8" runat="server" OnCommand="TransferPage" CommandArgument="NextPage" BorderStyle="Solid" BorderWidth="1px" style="height:20px;line-height:20px"><span class="nextpage" style="height:20px;"><i class="nextpage_icon">&nbsp;</i></span></asp:LinkButton>
                </div>
            </div>
            <div class="list_search_result_condition" runat="server">
                &nbsp;<asp:DropDownList ID="Decoration" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Decoration_SelectedIndexChanged">

                    <asp:ListItem>不限</asp:ListItem>
                    <asp:ListItem>毛坯</asp:ListItem>
                    <asp:ListItem>普通装修</asp:ListItem>
                    <asp:ListItem>精装修</asp:ListItem>
                    <asp:ListItem>豪华装修</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="OrderType" runat="server" Style="margin-left: 450px" AutoPostBack="true" OnSelectedIndexChanged="OrderType_SelectedIndexChanged">
                    <asp:ListItem>默认排序</asp:ListItem>
                    <asp:ListItem>租金从高到低</asp:ListItem>
                    <asp:ListItem>租金从低到高</asp:ListItem>
                    <asp:ListItem>发布时间从新到旧</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="content" runat="server" id="content_result">

    </div>
    <div id="paging" class="multipage" runat="server">
        <asp:LinkButton ID="LinkButton4" runat="server" OnCommand="TransferPage" CommandArgument="FirstPage"><span>第一页</span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnCommand="TransferPage" CommandArgument="PrePage"><span class="prepage" ><i class="prepage_icon">&nbsp;</i>&nbsp;上一页</span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" OnCommand="TransferPage" CommandArgument="NextPage"><span class="nextpage">下一页<i class="nextpage_icon">&nbsp;</i></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" OnCommand="TransferPage" CommandArgument="LastPage"><span >最后一页</span></asp:LinkButton>
    </div>
</asp:Content>
