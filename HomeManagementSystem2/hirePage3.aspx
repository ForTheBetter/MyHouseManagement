<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="hirePage3.aspx.cs" Inherits="HomeManagementSystem2.hirePage3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Label.css"  rel="stylesheet" type="text/css" />
     <link href="css/Wrapper.css"  rel="stylesheet" type="text/css" />
      <link href="css/Button.css"  rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Label ID="Label1" runat="server" CssClass="NotificationLabel" Text="恭喜，您的房源已经成功申请上架"></asp:Label>
    <br />
    <br />

    <div style="margin:0px auto" class="wrapper-border-orange">
       
                     &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="上传几张图片介绍一下您的爱居吧" CssClass="DescriptionLabel-orange"></asp:Label>
        &nbsp;<br />
&nbsp;<div class="Image_Gallery"  runat="server" id="Image_Gallery">
        </div>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server"  Width="600px" CssClass=""/>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="UploadButton" runat="server" Text="上传" CssClass="colorbutton orange" Height="32px" OnClick="UploadButton_Click" Width="97px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                     <br />
&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Uploadtips" runat="server"></asp:Label>
        <br />
   
   
    </div>
&nbsp;
</asp:Content>

