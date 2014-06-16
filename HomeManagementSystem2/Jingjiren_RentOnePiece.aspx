<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_RentOnePiece.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_RentOnePiece" %>
<!DOCTYPE html>
<html>
<head>
   
    <%--<link href="css/bootstrap.css" rel="stylesheet">--%>
  <style>
      .rightFloat {
      float:right;
      }
      .centerAlign {
          margin:0px auto;
      }
  </style>
    <link rel="stylesheet" href='css/hoverbox.css' type="text/css" media="screen, projection" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/js-login.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>缘溪行经纪人</title>
<link href="css/personenter.css" type="text/css" rel="stylesheet"/>
    <link href="css/Table.css" type="text/css" rel="stylesheet"/>
    <link href="css/Label.css" type="text/css" rel="stylesheet"/>
       <link href="css/Button.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="wp">

<link href="css/head_8020.css" type="text/css" rel="stylesheet"/>
<div id="header">
	<div class="toplink">
		<ul>
			
			<li class="meunHd"><a target="_blank" href="http://sh.house.sina.com.cn/">您好</a></li>
			<!--<li class="meunHd"><a target="_blank" href="http://news.fangyou.sina.com.cn/center.html">新闻中心</a></li>-->
		        ，亲爱的缘溪行经纪人</li>
			<!--<li class="meunHd"><a target="_blank" href="http://news.fangyou.sina.com.cn/center.html">新闻中心</a></li>-->
		</ul>
	</div>
	<!--toplink end-->
	<div class="bg_wrapper">
		<div id="newlogo">
			<a href="http://bj.esf.sina.com.cn/" target="_blank"><img alt="" src="Resources/index_1375256728_562.png" class="logo"></a>
			<div class="cityShow">
				<div class="toggleBox">			
					<div id="current-city">北京</div>
					<div class="toggleBox">			
						<a href="javascript:void(0)" id="citySwitchLink">切换城市</a>
						<div id="pop_cities" style="display:none;"><script src="http://esf.sina.com.cn/cityswitch.php" type="text/javascript"></script></div>
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
					&nbsp;<%--<table>
                        <tr>
                            <td>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           <asp:Label ID="Label3" runat="server" Text="详细参数：" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
                                           &nbsp;<table style=" height: 490px; width: 379px; margin:20px auto">
                     <tr>
                         <td>城市:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_city" runat="server" Text="Label"></asp:Label>
                         
                         </td>
                     </tr>
                      <tr>
                         <td>区:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_area" runat="server" Text="Label"></asp:Label>
                         </td>
                           </tr>
                     <tr>
                         <td>街道:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_street" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>小区名:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_community" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>所在楼层:</td>
                         <td class="auto-style1">
                             <asp:Label ID="levels" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                          <tr>
                         <td>面积:</td>
                         <td class="auto-style1">
                             <asp:Label ID="area" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>朝向:</td>
                         <td class="auto-style1">
                             <asp:Label ID="orientation" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>房屋类型:</td>
                         <td class="auto-style1">
                             <asp:Label ID="types" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                             <tr>
                         <td>装修:</td>
                         <td class="auto-style1">
                             <asp:Label ID="decoration" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>室:</td>
                         <td class="auto-style1">
                             <asp:Label ID="room" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>厅:</td>
                         <td class="auto-style1">
                             <asp:Label ID="hall" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>卫:</td>
                         <td class="auto-style1">
                             <asp:Label ID="toilet" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>房主姓名:</td>
                         <td class="auto-style1">
                             <asp:Label ID="p_names" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>联系电话:</td>
                         <td class="auto-style1">
                             <asp:Label ID="p_phone" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>请求时间:</td>
                         <td class="auto-style1">
                             <asp:Label ID="de_date" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                      
                               <tr>
                         <td>类型:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_types" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                 
                             <tr>
                         <td>租金（元/月）:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_price" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                 
                                                  <tr>
                         <td class="auto-style2">房主对房源介绍:</td>
                         <td class="auto-style3">
                             <asp:Label ID="s_description" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                                            <tr>
                         <td>房主给你留言：</td>
                         <td class="auto-style1">
                             &nbsp;</td>
                     </tr>
                 </table>
                             <asp:Label ID="de_messages" runat="server" Text="Label" CssClass="centerAlign"></asp:Label>
                    <br />
                    <br />
                    <%-- </td>--%>
                            <td class="auto-style2">
                               
                                
                     </td>
                            <table>
                                <tr>
                                    <td>
                                           <table>
                                   <tr>
                                       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                           <asp:Label ID="Label1" runat="server" Text="房源头像：" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
                                           <br />
&nbsp;&nbsp; </td>
                                   </tr>
                                   <tr>
                                       <td>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Image ID="Image1" runat="server" Height="256px" Width="293px" />
                                           <br />
                                           <br />
                                           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Large" ForeColor="Blue" Text="内部细节:"></asp:Label>
                                           <br />
                                           </td>
                                       </tr>
                               </table>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                          <ul id="ImageGallery" class="hoverbox" runat="server" style="top:10%;  float:left;">
<li>
<a href="#"><img src="img/photo01.jpg" alt="description" /><img src="img/photo01.jpg" alt="description" class="preview" /></a>
</li>

</ul>
                                    </td>
                                </tr>
                                </table>
                           
                            
                             
                            </tr>
                        </table>
                    <br />
                    <%--<div class="fyuser-panel">
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
				
					</div>--%>
					<!-- fyuser-panel -->
					
					<!-- box-picked end -->


					<!-- help-guide end -->
				    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Accept" runat="server" OnClick="Accept_Click" Text="接受该委托" CssClass="colorbutton orange" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Reject" runat="server" OnClick="Reject_Click" Text="拒绝该委托"  CssClass="colorbutton orange" />
                    <br />
                    <br />
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
			</script>		
            <br />
        </div>
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
        .auto-style1 {
            width: 31px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 31px;
            height: 24px;
        }
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