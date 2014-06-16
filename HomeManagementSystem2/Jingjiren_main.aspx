<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_main.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_main" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>首页 - 房友之家 - 新浪二手房</title>

<link href="css/personenter.css" type="text/css" rel="stylesheet"/>
    <link href="css/Table.css" type="text/css" rel="stylesheet"/>
    <link href="css/Label.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="wp">

<link href="css/head_8020.css" type="text/css" rel="stylesheet"/>

	<div class="toplink">
		<ul>
			
			<li class="meunHd"><a target="_blank" href="http://sh.house.sina.com.cn/">您好</a></li>
			<!--<li class="meunHd"><a target="_blank" href="http://news.fangyou.sina.com.cn/center.html">新闻中心</a></li>-->
		        ，亲爱的缘溪行经纪人</ul>
	</div>
	<!--toplink end-->
	<div class="bg_wrapper">
		<div id="newlogo">
			<a href="http://bj.esf.sina.com.cn/" target="_blank"><img alt="" src="Resources/index_1375256728_562.png" class="logo"></a>
			<div class="cityShow">
				<div class="toggleBox">			
					<div id="current-city">上海</div>
					<div class="toggleBox">			
						&nbsp;<div id="pop_cities" style="display:none;"><script src="http://esf.sina.com.cn/cityswitch.php" type="text/javascript"></script></div>
					</div>
				</div>
			</div>			
		</div>
		<!--newlogo end-->
	
		<!--mainNav end-->
	</div>
	<!--bg_wrapper end-->
<div class="fybar fybar-h5">	
						<!-- fybar-panel end-->
		<s class="shading-l"></s>
		<s class="shading-r"></s>
	</div>
</div>	<div id="content">
		<div id="myfy-center" class="grid-c2">
			<div class="col-main">
				<div class="main-wrap">
					<div class="crumbs"><p><b>您的位置：</b> 缘溪行房产中介 > 经纪人</p></div>
					<div class="announcement msg"><p class="notice">亲爱缘溪行经纪人，祝您一天工作顺利！</p></div>
					<div class="fyuser-panel">
						<div class="fyuser-account">
							
                            <asp:Image ID="Image1" runat="server" Height="58px" Width="58px" CssClass="inlineStyle" />
                            &nbsp;&nbsp;
                            <div class="inlineStyle">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：&nbsp;
							<asp:Label ID="Yonghuming" runat="server" Text="Label" CssClass="Label-VerticalAlign"></asp:Label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：
							<asp:Label ID="Xingming" runat="server" Text="Label" CssClass="Label-VerticalAlign"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 已完成交易数:</div>
						    &nbsp;&nbsp;&nbsp;
						    <asp:Label ID="Jiaoyishu" runat="server" CssClass="Label-VerticalAlign" ForeColor="#FF3300" Text="Label"></asp:Label>
                            &nbsp;&nbsp;
                            笔</div>
				
					</div>
					<!-- fyuser-panel -->
					<div class="box-picked">
						<div class="hd">&nbsp;
                          <h2 style="display:inline">出售委托</h2> 
                            <h2 style="display:inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 出租委托</h2>
                                </div>
						<div  style="width:750px">
                         
                        
                            <div style="width:350px; height:auto; display:inline; float:left;">
                                <br />
                                <asp:DataList ID="DataList1" runat="server" CssClass="inlineStyle" >
                                    <ItemTemplate>
                                        <table class="mytable">
                                            <tr>
                                                <td><%#Eval("Community_Name") %></td>
                                                <td><%#Eval("Mianji")%>平方米</td>
                                                <td><%#Eval("Price")%>万元</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("HouseId") %>'  OnClick="LinkButton1_Click"
                                                 >
                                                查看详情</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                                </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div style="width:350px; height:auto; display:inline; float:right">
                             <asp:DataList ID="DataList2" runat="server" CssClass="inlineStyle" >
                                    <ItemTemplate>
                                        <table class="mytable">
                                            <tr>
                                                <td><%#Eval("Community_Name") %></td>
                                                <td><%#Eval("Mianji")%>平方米</td>
                                                <td><%#Eval("Price")%>元/月</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("HouseId") %>'  OnClick="LinkButton2_Click"
                                                 >
                                                查看详情</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                           </div>   
                            <span style="clear:both"></span>
						</div>
					</div>
					<!-- box-picked end -->
					<div class="help-guide">
                        <div class="box-picked">
                        	<div class="hd">&nbsp;<h2 style="display:inline">当前共接受<asp:Label ID="DelegateCount" runat="server" ForeColor="Red"></asp:Label>
                                个出售委托&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 当前共接受<asp:Label ID="DelegateCount0" runat="server" ForeColor="Red"></asp:Label>
                                个出租委托</h2>
                                </div>
                            </div>
						<br />
                        <br />
                        <div style="width:350px; height:auto; display:inline; float:left">
                                <asp:DataList ID="DataList3" runat="server" CssClass="inlineStyle" Width="266px" >
                                    <ItemTemplate>
                                        <table class="mytable">
                                            <tr>
                                                <td><%#Eval("CommunityName") %></td>
                                                <td><%#Eval("OwnerName")%></td>
                                                <td><%#Eval("Price")%></td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("HouseId") %>'  OnClick="LinkButton3_Click"
                                                 >
                                                查看详情</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div style="width:350px; height:auto; display:inline; float:right">       
                         <asp:DataList ID="DataList4" runat="server" CssClass="inlineStyle" Width="271px" >
                                    <ItemTemplate>
                                        <table class="mytable">
                                        
                                            <tr>
                                                <td><%#Eval("CommunityName") %></td>
                                                <td><%#Eval("OwnerName")%></td>
                                                <td><%#Eval("Payment")%></td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%#Eval("HouseId") %>'  OnClick="LinkButton4_Click"
                                                 >
                                                查看详情</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                                <br />
                        <br />
                        <br />
                        <br />
                        <br />
						<div class="hpgde-box">
							<dl>
								<dt>卖房入门</dt>
								<dd><a href="uc_v1.php?id=hp#sa01" target="_blank">我可以免费发布多少房源？</a></dd>
								<dd><a href="uc_v1.php?id=hp#sa01" target="_blank">怎么委托我发布的房源？</a></dd>
								<dd><a href="uc_v1.php?id=hp#sa04" target="_blank">我发布的房源在哪里可以看到？</a></dd>
								<dd class="go-hpcenter"><a href="uc_v1.php?id=hp#sale" target="_blank">进入帮助中心>></a></dd>
							</dl>
						</div>
					</div>
					<!-- help-guide end -->
				</div>
			</div>
						<!-- col-main end -->
			<div class="col-sub">
				<div class="go_homePage"><a href="uc_v1.php?id=0">返回首页</a></div>
				<div id="myfy-menu" class="myfyMenu">
					<div class="menu-box">
						<h3 class="myfy-bar"><span>我的业务</span><button class="menu-open menu-close">-</button></h3>
						<ul class="group">
							<li><a href="Jingjiren_main.aspx">房源中心</a></li>
							
						</ul>
					</div>
				
					<div class="menu-box">
						<h3 class="myfy-bar"><span>我的个人信息</span><button class="menu-open menu-close">-</button></h3>
						<ul class="group">
							
							<li><a href="Jingjiren_ChangePassword.aspx">修改密码</a></li>
						</ul>
					</div>
				</div>
			<!--	<div class="myfy-adv"><a href="http://info.fangyou.com/yzs/index.html" target="_blank"><img src="http://ss2.esf.leju.com/bj/images/personenter/adv-one-stop.png"/></a></div>-->
			</div>
			<!-- col-sub end -->
			<script type="text/javascript">
			    window.onload = function () {
			        $(".myfy-bar").toggle(function () {
			            $(this).find("button").removeClass("menu-close")
                        .end().siblings(".group").hide();
			        }, function () {
			            $(this).find("button").addClass("menu-close")
                        .end().siblings(".group").show();
			        })
			    }
			</script>		</div>
	</div>
<div align=center>
	<style type="text/css">
	/**  #footer  ***/
		#footer{width:960px;margin:20px auto 0; text-align:left;}
		#footer hr{display:none;}
		#footer .descript{display:block;border-bottom:1px solid #FEEBEA; height:60px;padding:10px 0 0 60px;background:url(http://ss2.esf.leju.com/comm/images/s-index/medal.png) no-repeat 0 10px;color:#808080;line-height:18px;}/*font-style:italic;*/
		#footer a{color:#666;}
		#footer a:hover{color:#155F98;}

		#footer .end{margin:16px 0 20px;text-align:center;color:#808080;line-height:22px; border-top:1px solid #eee;}
		#footer .end a{padding:0 5px}
		#footer .end b{color:#c00;font-family:"Tahoma";font-size:16px;}
</style>

<div id="footer">
	<hr/>
    <div class="end">
        Desgined By 缘溪行项目组<br/>
        客服热线：
		&nbsp;<b>18817598801</b>
				邮箱：
		<a href="mailto:letianshidai@sina.com">573978301@qq.com</a> 了解我们<a href="http://bj.esf.sina.com.cn/help.php?id=42" target="_blank">>></a>
        <br/>
        Powered BY SqlServer2005</div>
</div>
</div>
</div>
<script type="text/javascript" src="http://ss2.esf.leju.com/comm/js/jquery.js"></script>
<script type="text/javascript" src="http://ss2.esf.leju.com/comm/js/header.js"></script>
<script type="text/javascript" src="http://ss2.esf.leju.com/comm/js/jquery.cookie.js"></script>
<script type="text/javascript" src="http://ss2.esf.leju.com/comm/js/esf-fun-factory.js"></script>
<script type="text/javascript" src="http://udcenter.fangyou.com/www/js/frontsso.js"></script>
    </form>
</body>
</html>