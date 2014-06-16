<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="hirePage_2.aspx.cs" Inherits="HomeManagementSystem2.hirePage_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/button1.css" rel="stylesheet"/>
    <p style="font-size:x-large;font-family:\5FAE\8F6F\96C5\9ED1,Microsoft YaHei; height: 31px; margin-bottom: 0px;margin-top: 5px">
        &nbsp;&nbsp;
        完善房源信息
        <hr style="height: -12px"/>
    <p>
        <strong>房源标题</strong>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="449px"></asp:TextBox>
    </p>
    <p>
        <strong>房源描述</strong>
        &nbsp;
    </p>
    <p>
        <asp:TextBox ID="TextBox2" rows="5" TextMode="multiline" runat="server" Height="138px" Width="548px" style="margin-top: 0px"></asp:TextBox>
    </p>

    <p>
        <strong>房源缩略图</strong>
        &nbsp;
    </p>
    <p style="margin-bottom: 8px">
        <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="227px" />
    </p>
    <hr style="height: -12px"/>
    <p style="font-size: 12px;color: GrayText;">
        <asp:CheckBox ID="CheckBox1" runat="server" Height="20px" Width="20px" Font-Size="Small" />
        我已经阅读并同意<a href="postRequirement.htm" style="color: orange">《房源发布规则》</a>
    </p>
    <p>
        <asp:Button ID="Button_post" class ="button blue" runat="server" Text="下一步" Height="35px" onclick="Button_post_Click"/>
    </p>
</asp:Content>
