<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="index3.aspx.cs" Inherits="HomeManagementSystem2.index3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>主页</title>
    <style type="text/css">
        
        .new-information ul li em span
        {
            display: block;
            height: auto;
            overflow: hidden;
            color: #3B5997;
        }

        .new-information ul li a:hover em span
        {
            color: #f60;
            text-decoration: underline;
        }
        .mod
        {
            border-radius: 8px;
            box-shadow: 1px 1px 5px #888888;
        }

        .searchBar
        {
            border-radius: 5px;
            box-shadow: 1px 1px 5px #888888;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fcglConnectionString %>" SelectCommand="select address, room, hall, toilet, area, price from house, salehouse where house.house_id = salehouse.house_id"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fcglConnectionString %>" SelectCommand="SELECT house.address, house.room, house.hall, house.toilet, house.area, renthouse.payment FROM house INNER JOIN renthouse ON house.house_id = renthouse.house_id"></asp:SqlDataSource>
    
    <div class="searchBar" id="searchBar">
            <div class="search-area" action="#" method="GET">
                <form action="search_result_rent.aspx">
                    <div class="searchinput" id="home_kw_div">
                        <input type="text" maxlength="100" autocomplete="off" name="k" id="home_kw" value="请输入房源特征、户型、地址…" x-webkit-speech="" lang="zh-CN">
                    </div>
                    <input type="hidden" value="1" name="t" id="home_kw_t textbox" autocomplete="off">
                    <input type="submit" value="找租房" id="home_kw_sale" class="find-button">
                    <input type="submit" value="找新房" id="home_kw_xinfang" class="find-button">
                </form>
                <input type="hidden" value="1" name="rd">
            </div>
            <div class="filter-search">
            <div class="filter-sec">
            <h4>二手房</h4>
            <dl class="area-filter">
                <dt>区域：</dt>
                <dd>
                    <a href="#" _soj="SearchBar">浦东</a>
                    <a href="#" _soj="SearchBar">闵行</a>
                    <a href="#" _soj="SearchBar">徐汇</a>
                    <a href="#" _soj="SearchBar">上海周边</a>
                 </dd>
              </dl>
              <dl class="price-filter">
                 <dt>价格：</dt>
                 <dd>
                                        <a href="#" _soj="SearchBar">80-100万</a>
                                        <a href="#" _soj="SearchBar">100-120万</a>
                                        <a href="#" _soj="SearchBar">120-150万</a>
                                        <a href="#" _soj="SearchBar">150-200万</a>
                                        <a href="#" _soj="SearchBar">200-250万</a>
                                        <a href="#" _soj="SearchBar">250-300万</a>
                                        <a href="#" _soj="SearchBar">300-500万</a>
                                        <a href="#" _soj="SearchBar">500-1000万</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="filter-new">
                                <h4>新房</h4>
                                <dl class="area-filter">
                                    <dt>区域：</dt>
                                    <dd>
                                        <a href="#" _soj="SearchBar">静安</a>
                                        <a href="#" _soj="SearchBar">嘉定</a>
                                        <a href="#" _soj="SearchBar">松江</a>
                                        <a href="#" _soj="SearchBar">南汇</a>
                                        <a href="#" _soj="SearchBar">奉贤</a>
                                        <a href="#" _soj="SearchBar">金山</a>
                                        <a href="#" _soj="SearchBar">青浦</a>
                                        <a href="#" _soj="SearchBar">崇明</a>
                                        <a href="#" _soj="SearchBar">上海周边</a>
                                        <a href="#" _soj="SearchBar">宝山</a>
                                        <a href="#" _soj="SearchBar">闸北</a>
                                        <a href="#" _soj="SearchBar">闵行</a>
                                        <a href="#" _soj="SearchBar">卢湾</a>
                                        <a href="#" _soj="SearchBar">黄浦</a>
                                        <a href="#" _soj="SearchBar">徐汇</a>
                                        <a href="#" _soj="SearchBar">长宁</a>
                                        <a href="#" _soj="SearchBar">浦东</a>
                                        <a href="#" _soj="SearchBar">虹口</a>
                                        <a href="#" _soj="SearchBar">杨浦</a>
                                    </dd>
                                </dl>
                                <dl class="recomm">
                                    <dt>推荐：</dt>
                                    <dd>

                                        <a href="#" target="_blank" _soj="SearchBar">莱茵北郡洋房热销</a>

                                        <a href="#" target="_blank" _soj="SearchBar">银亿徐汇酩悦特惠</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
    <div class="mod switch-poster" onmouseover="this.className=&#39;mod switch-poster switch-hover&#39;" onmouseout="this.className=&#39;mod switch-poster&#39;">
                        <ul class="ad-scroll-ul" id="IFX_p934" style="left: 0px;">
                            <li id="1" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;"> 
                                <a target="_blank" href="img/ad0.jpg">
                                    <img style="width:700px;height:224px;border:none;" src="./Resources/1121.jpg"> </a>
                            </li>
                            <li id="2" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;">
                                    <a target="_blank" href="img/ad1.jpg"> 
                                        <img style="width:700px;height:224px;border:none;" src="./Resources/1122.jpg"> </a>
                                    </li>
                            <li id="3" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;">
                                <a target="_blank" href="img/ad2.jpg"> 
                                <img style="width:700px;height:224px;border:none;" src="./Resources/1123.jpg"></a>
                            </li>
                        </ul>
                        <a id="ad-next" class="show-next" href="javascript:void(0)"><i></i></a>
                        <a id="ad-prev" class="show-pre" href="javascript:void(0)"><i></i></a>
              </div>


    <div class="mod high-quality">
                            <h3>精品新房</h3>
                            <ul class="list">
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=1" alt="金山-枫桥紫郡">
                                        <em><asp:Label ID="address1" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description1" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price1" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=2" alt="徐汇-银亿徐汇酩悦">
                                        <em><asp:Label ID="address2" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description2" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price2" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=3" alt="青浦-南山雨果">
                                        <em><asp:Label ID="address3" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description3" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price3" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=4" alt="嘉定-保利天鹅语">
                                        <em><asp:Label ID="address4" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description4" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price4" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                            </ul>         
                            <a href="#" target="_blank" class="corner">更多新房 »</a>
                        </div>

    <div class="mod high-quality">
                            <h3>推荐二手房</h3>
                            <ul class="list">
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=1" alt="金山-枫桥紫郡">
                                        <em><asp:Label ID="address11" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description11" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price11" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=2" alt="徐汇-银亿徐汇酩悦">
                                        <em><asp:Label ID="address12" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description12" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price12" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=3" alt="青浦-南山雨果">
                                        <em><asp:Label ID="address13" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description13" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price13" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./showimg.aspx?HouseId=4" alt="青浦-南山雨果">
                                        <em><asp:Label ID="address14" runat="server" Text=""></asp:Label></em>
                                        <em><asp:Label ID="description14" runat="server" Text=""></asp:Label></em>
                                        <em class="price"><asp:Label ID="price14" runat="server" Text=""></asp:Label></em>
                                    </a>
                                </li>
                            </ul>         
                            <a href="#" target="_blank" class="corner">更多二手房 »</a>
                        </div>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script src="./js/zzshowad.js"></script>
</asp:Content>
