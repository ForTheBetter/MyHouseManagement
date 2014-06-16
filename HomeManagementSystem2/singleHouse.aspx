<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleHouse.aspx.cs" Inherits="HomeManagementSystem2.singleHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  href="../css/MuBanStyle.css" rel="stylesheet" type="text/css" />
    <link href ="css/singleHouse.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="header">
        <div class="banner">
            <div class="tabbar">
                <div class="tabs">
                    <div class="float_icon">新</div>
                    <a href="index3.aspx" title="首页"  class = "actived" style="margin-left:0;padding-left:0;">首 页</a> 
	                <a href="#" title="二手房信息">二手房</a> 
	                <a href="NewHouse.aspx" title="新房信息">新房</a> 
                    <a href="search_result_rent.aspx" title="我要求租">求租</a>
	                <a href="../SellHouse_first.aspx" title="我要卖房">我要卖房</a> 
	                <a href="../hirePage.aspx"" title="我要出租">我要出租</a> 
	             </div>
            </div>
        </div>
    </div>
    <div class="bar"></div>
    <div id ="content">
        <div id ="propNav">
            <a href="Index3.aspx">首页</a>
            >
            <a href="search_result_rent.aspx">租房</a>
            >
            <a href="#"><asp:Label runat ="server" ID="Label2" OnLoad="Txt_Load"/></a>
            >
            <a href="#"><asp:Label runat ="server" ID="Label3" OnLoad="Txt_Load"/></a>
            >
            <a href="#"><asp:Label runat ="server" ID="Label4" OnLoad="Txt_Load"/></a>
        </div>
        <div id="content-propview">
            <div class="propertyV2">
                <div class="propInfoBigBox">
                    <h1 class="propInfoTitle"><asp:Label runat ="server" ID="titleTxt" OnLoad="Txt_Load"/></h1>
                    <div class="propimg_switch">
                        <p id="current_img_apf_id_1" class="current_img">
                            <a href="#roompic"><span></span>
                                <asp:Image id="thumbnail" runat="server" height="250px" width="300px"/>
                            </a>
                        </p>
                    </div>
                    <div class="propinfo">
                        <ul class="prop_basic">
                            <li class="prop_basic_left">
                                报价：<em><asp:Label runat ="server" ID="priceTxt" OnLoad="Txt_Load"></asp:Label></em><span>元</span>
                                <a id="tax_icon" href="#" title="该价格为税费自理价" target="_blank">&nbsp;</a>
                            </li>
                            <li class="prop_basic_left leftstyle">房型：
                                <asp:Label runat ="server" ID="roomTxt" OnLoad="Txt_Load"/>室
                                <asp:Label runat ="server" ID="WCTxt" OnLoad="Txt_Load"/>厅
                                <asp:Label runat ="server" ID="hallTxt" OnLoad="Txt_Load"/>卫
                            </li>
                            <li class="prop_basic_left leftstyle">面积：
                                <asp:Label runat ="server" ID="areaTxt" OnLoad="Txt_Load"/>平米
                            </li>
                            <li class="prop_basic_left leftstyle">楼层：
                                <asp:Label runat ="server" ID="floorTxt" OnLoad="Txt_Load"/>
                            </li>
                            <li class="prop_basic_left leftstyle addressStyle">
                                小区：<a id="text_for_school_1" href="#" target="_blank" title="汇翠花园" _soj="saleup"><asp:Label runat ="server" ID="communityTxt" OnLoad="Txt_Load"/></a>
                                &nbsp;&nbsp;
                            </li>
                            <li class="prop_basic_left leftstyle addressStyle">
                                地址：<span id="text_for_school_2" title="漕溪北路737弄"><asp:Label runat ="server" ID="addressTxt" OnLoad="Txt_Load"/></span>&nbsp;&nbsp;&nbsp;
                            </li>
                            <li class="prop_basic_right">
                                <div class="list_spstyle">出租方式：
                                    <asp:Label runat ="server" ID="hiretypeTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">朝向：
                                    <asp:Label runat ="server" ID="dirTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">装修：
                                    <asp:Label runat ="server" ID="decoTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">建造年代：2003年</div>
                            </li>
                        </ul>
                    
                        <div class="new_report_sh" id="falseHouseNew">
                            <div class="report-box"><div class="inner">
                                <div class="tel"><b id="broker_phone_number"><asp:Label id="phoneTxt" runat="server"></asp:Label></b></div>
                                <div id="falseHouseBoxOn" style="display: block;">
                                    <div class="report" onmouseover="this.className='report hover'" onmouseout="this.className='report'" title="反馈此房源价格虚假" id="falseHose">
                                        <span>联系或看房后，反馈此房源价格虚假</span>
                                        <a href="javascript:void(0)" title="反馈此房源价格虚假" class="btn">请告诉我们</a>
                                    </div>
                                </div>
                            </div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="navigation-propview">
            <div class="brokerV2">
                <div class="propBrokerBox">
                    <div class="propBrokerPhoto" onmouseover="document.getElementById('ms').style.display='block';" onmouseout="document.getElementById('ms').style.display='none';">
                        <asp:Image  width="100" height="133" runat="server" ID="agentIcon"/>
                        <div>
                        </div>
                    </div>
                    <div class="prop_new_line">
                        <a href="#" target="_blank" id="broker_true_name"><asp:label id="agentName" runat="server"/></a>
                    </div>

                    <div class="mycompany shop2c">
                        <p>职业 :  &nbsp;&nbsp;<asp:label id="profession" runat="server"/></p>
                        <p class="shopp">交易成功数目 :  &nbsp;&nbsp;<asp:label id="tradeCnt" runat="server"/>次</p>
                        <p>注册日期： &nbsp;&nbsp;<asp:label id="regDate" runat="server"/></p>
                    </div>
                </div>
            </div>
        </div>
        <div id ="extra-propview">
            <p class="tag">房源描述</p>    
            <div class="descriBox"><asp:Label runat ="server" ID="descrTxt" OnLoad="Txt_Load"/></div>
            <p class="tag">房源配置</p>
            <div class="descriBox"><asp:Label runat ="server" ID="settingTxt" OnLoad="Txt_Load"/></div>
            <p class="tag">房源组图</p>
            <div class="Image_Gallery" runat="server" id="Image_Gallery"></div>
        </div>

    </div>
</body>
</html>
