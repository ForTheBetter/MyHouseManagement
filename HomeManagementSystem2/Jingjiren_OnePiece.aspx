<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_OnePiece.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_OnePiece" %>
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
<title>ԵϪ�о�����</title>
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
			
			<li class="meunHd"><a target="_blank" href="http://sh.house.sina.com.cn/">����</a></li>
			<!--<li class="meunHd"><a target="_blank" href="http://news.fangyou.sina.com.cn/center.html">��������</a></li>-->
		        ���װ���ԵϪ�о�����</ul>
	</div>
	<!--toplink end-->
	<div class="bg_wrapper">
		<div id="newlogo">
			<a href="http://bj.esf.sina.com.cn/" target="_blank"><img alt="" src="Resources/index_1375256728_562.png" class="logo"></a>
			<div class="cityShow">
				<div class="toggleBox">			
					<div id="current-city">����</div>
					<div class="toggleBox">			
						<a href="javascript:void(0)" id="citySwitchLink">�л�����</a>
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
					<div class="crumbs"><p><b>����λ�ã�</b> ԵϪ�з����н� > ������</p></div>
					<div class="announcement msg"><p class="notice">�װ�ԵϪ�о����ˣ�ף��һ�칤��˳����</p></div>
					&nbsp;<%--<table>
                        <tr>
                            <td>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           <asp:Label ID="Label3" runat="server" Text="��ϸ������" Font-Bold="True" Font-Names="΢���ź�" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
                                           &nbsp;<table style=" height: 490px; width: 379px; margin:20px auto">
                     <tr>
                         <td>����:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_city" runat="server" Text="Label"></asp:Label>
                         
                         </td>
                     </tr>
                      <tr>
                         <td>��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_area" runat="server" Text="Label"></asp:Label>
                         </td>
                           </tr>
                     <tr>
                         <td>�ֵ�:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_street" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>С����:</td>
                         <td class="auto-style1">
                             <asp:Label ID="a_community" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>����¥��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="levels" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                          <tr>
                         <td>���:</td>
                         <td class="auto-style1">
                             <asp:Label ID="area" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>����:</td>
                         <td class="auto-style1">
                             <asp:Label ID="orientation" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                           <tr>
                         <td>��������:</td>
                         <td class="auto-style1">
                             <asp:Label ID="types" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                             <tr>
                         <td>װ��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="decoration" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="room" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="hall" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="toilet" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>��������:</td>
                         <td class="auto-style1">
                             <asp:Label ID="p_names" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>��ϵ�绰:</td>
                         <td class="auto-style1">
                             <asp:Label ID="p_phone" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                               <tr>
                         <td>����ʱ��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="de_date" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                      
                               <tr>
                         <td>����:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_types" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>������:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_developer" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                             <tr>
                         <td>�۸���Ԫ��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_price" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                                                  <tr>
                         <td>��ҵ��:</td>
                         <td class="auto-style1">
                             <asp:Label ID="s_property_costs" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                                                  <tr>
                         <td class="auto-style2">�����Է�Դ����:</td>
                         <td class="auto-style3">
                             <asp:Label ID="s_description" runat="server" Text="Label"></asp:Label>
                         </td>
                     </tr>
                                            <tr>
                         <td>�����������ԣ�</td>
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
                                           <asp:Label ID="Label1" runat="server" Text="��Դͷ��" Font-Bold="True" Font-Names="΢���ź�" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
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
                                           <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="΢���ź�" Font-Size="Large" ForeColor="Blue" Text="�ڲ�ϸ��:"></asp:Label>
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
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �û�����&nbsp;
							<asp:Label ID="Yonghuming" runat="server" Text="Label" CssClass="Label-VerticalAlign"></asp:Label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������
							<asp:Label ID="Xingming" runat="server" Text="Label" CssClass="Label-VerticalAlign"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ɽ�����:</div>
						    &nbsp;&nbsp;&nbsp;
						    <asp:Label ID="Jiaoyishu" runat="server" CssClass="Label-VerticalAlign" ForeColor="#FF3300" Text="Label"></asp:Label>
                            &nbsp;&nbsp;
                            ��</div>
				
					</div>--%>
					<!-- fyuser-panel -->
					
					<!-- box-picked end -->


					<!-- help-guide end -->
				    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Accept" runat="server" OnClick="Accept_Click" Text="���ܸ�ί��" CssClass="colorbutton orange" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Reject" runat="server" OnClick="Reject_Click" Text="�ܾ���ί��"  CssClass="colorbutton orange" />
                    <br />
                    <br />
				</div>
			</div>
						<!-- col-main end -->
			<div class="col-sub">
				<div class="go_homePage"><a href="uc_v1.php?id=0">������ҳ</a></div>
				<div id="myfy-menu" class="myfyMenu">
					<div class="menu-box">
						<h3 class="myfy-bar"><span>�ҵ�ҵ��</span><button class="menu-open menu-close">-</button></h3>
						<ul class="group">
							<li><a href="Jingjiren_main.aspx">��Դ����</a></li>
							
						</ul>
					</div>
				
					<div class="menu-box">
						<h3 class="myfy-bar"><span>�ҵĸ�����Ϣ</span><button class="menu-open menu-close">-</button></h3>
						<ul class="group">
				
							<li><a href="Jingjiren_ChangePassword.aspx">�޸�����</a></li>
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
        Desgined By ԵϪ����Ŀ��<br/>
        �ͷ����ߣ�
		&nbsp;<b>18817598801</b>
				���䣺
		<a href="mailto:letianshidai@sina.com">573978301@qq.com</a> �˽�����<a href="http://bj.esf.sina.com.cn/help.php?id=42" target="_blank">>></a>
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