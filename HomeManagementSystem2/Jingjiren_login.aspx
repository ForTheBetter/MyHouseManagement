<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jingjiren_login.aspx.cs" Inherits="HomeManagementSystem2.Jingjiren_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <style type="text/css">
        body {
            background-image:url("img/jingjiren.jpg");
            background-repeat:no-repeat
        }
        #back {
            position: absolute;
            left: 63em;
            top: 20px;
            background-color:White
        }
        .form-signin {
            position:relative;
            top:-59px;
            height: 357px;
            background-color:white;
            left: -29px;
            width: 470px;
        }
        .span4 {
            position:relative;
            top:52px;
            bottom:-52px;
            left: -13px;
        }
        .span4 strong{
            font-size:25px;
            font-family:\5FAE\8F6F\96C5\9ED1,Microsoft YaHei;
        }
        .sign-footer {

        }
    </style>
</head>
<body>
    <div id ="back">
    <form id="form1" runat="server">
    <div class="span4">
        &nbsp;<div class="form-signin">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登录中国经纪人网络平台</strong><br />
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TB_Log_AgentAccount" runat="server" CssClass="span3" Width="236px" placeholder="用户名" Height="16px"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TB_Log_AgentPassword" runat="server" CssClass="span3" placeholder="密码" Width="237px" Height="16px"></asp:TextBox>
              <br />
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <label class="checkbox"><input type="checkbox"> 记住我
              <asp:Button ID="BTN_Login" runat="server" Text="登录" CssClass="btn btn-primary btn-large" Height="31px" Width="129px" OnClick="BTN_Login_Click"/>
              <br />
              <br />
              <br />
            </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label6" runat="server"></asp:Label>
              <br />
              <br />
              <br />
              <br />
              <br />
        </div>
        <div id="sign-footer">
        该平台由        该平台由<a href="Index.aspx" style="color: orange">安居客</a>代理
        </div>
    </div> 
    </form>
    </div>
</body>
</html>