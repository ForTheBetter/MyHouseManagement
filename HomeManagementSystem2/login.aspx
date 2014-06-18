<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HomeManagementSystem2.login" %>

<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/signin-css.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/js-login.js"></script>

  </head>
  <body>
     <form id="form1" runat="server">
    <div class="span12">
      <div class="row sign-card">
          <img src="Resources/index_1375273875_857.png" style="margin-bottom:20px; margin-left:30px;"/><br />
          <div class="span4">
              <div class="form-signin">
              <asp:TextBox ID="TB_Log_UserAccount" runat="server" CssClass="span3" Width="221px" placeholder="用户名"></asp:TextBox>
              <asp:TextBox ID="TB_Log_UserPassword" TextMode="Password" runat="server" CssClass="span3" placeholder="密码" Width="221px"></asp:TextBox>
            <label class="checkbox">
              <input type="checkbox"> 记住我 </input>
              <span>-</span>
              <a href=""> 忘记密码 </a>
            </label>
              <asp:Button ID="BTN_Login" runat="server" Text="登录" CssClass="btn btn-primary btn-large" OnClick="BTN_Login_Click" />
            <a href="#register-card" id="to-reg-card"> 免费注册 </a>
        &nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
        </div>
              </div> 
        <div class="span4 hide" id="register-card">
         
            <p class="field-name">用户名(邮箱):</p>
              <asp:TextBox ID="TB_Reg_UserEmail" runat="server" CssClass="span3"></asp:TextBox>
           
            <p class="field-name">密码:</p>
              <asp:TextBox ID="TB_Reg_UserPassword" TextMode="Password" runat="server" CssClass="span3"></asp:TextBox>
        
            <p class="field-name">密码确认:</p>
           <asp:TextBox ID="TB_Reg_UserPasswordConfirm" TextMode="Password" runat="server" CssClass="span3"></asp:TextBox>
         
            <p class="field-name">姓名:</p>
              <asp:TextBox ID="TB_Reg_UserName" runat="server" CssClass="span3"></asp:TextBox>
              
               <p class="field-name">手机:</p>
              <asp:TextBox ID="TB_Reg_UserPhone" runat="server" CssClass="span3"></asp:TextBox>
              
                 <p class="field-name">身份证号:</p>
              <asp:TextBox ID="TB_Reg_UserIdentityNumber" runat="server" CssClass="span3"></asp:TextBox>
              <asp:Button ID="BTN_Register" runat="server" Text="注册"  CssClass="btn btn-warning btn-large" OnClick="BTN_Register_Click"/>
          </div>
             </form>
  </body>

</html>