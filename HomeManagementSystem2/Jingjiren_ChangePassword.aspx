<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_ChangePassword.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_ChangePassword" %>
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
    <script>
        function CheckMatch() {

            if (document.getElementById("NewPass").value != document.getElementById("NewPassConfirm").value) {
                document.getElementById("Tips").innerHTML = "前后密码输入不一致！";
            }
            else {
                document.getElementById("Tips").innerHTML = "";
            }
            
        }
    </script>
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
<link href="/favicon.ico" rel="icon" type="image/x-icon" />
<div id="header">
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
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 原密码:<asp:TextBox ID="Old" ClientIDMode="Static" TextMode="Password" runat="server" BorderStyle="Solid"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码:<asp:TextBox ID="NewPass" ClientIDMode="Static" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 确认新密码:<asp:TextBox ID="NewPassConfirm" ClientIDMode="Static" TextMode="Password" runat="server" onblur="CheckMatch()"></asp:TextBox>
                    <asp:Label ID="Tips" runat="server" ClientIDMode="Static"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="更改密码" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
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