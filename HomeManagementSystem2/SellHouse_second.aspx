<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="SellHouse_second.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_second" %>
<%@ Reference Page = "SellHouse_first.aspx" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  href="css/Wrapper.css" rel="stylesheet" type="text/css" />
      <link  href="css/Button.css" rel="stylesheet" type="text/css" />
    <style>
        .center {
   margin:0px auto;
               }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper-background-green-border-grey">

       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;

       
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文细黑" Text="我的房子:"></asp:Label>
&nbsp;<asp:Label ID="Jianjie" runat="server" Text="Jianjie"></asp:Label>

       
        <br />

       
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div>
        <asp:Image ID="Image5" runat="server" Height="37px" ImageUrl="~/Resources/20130722170040_1788.png" Width="327px"  CssClass="center"/>
        <br />
        </div>
       <asp:GridView ID="GridView1" runat="server" BorderColor="#CCCCCC" GridLines="Horizontal" Height="274px" Width="689px" AutoGenerateColumns="False" PageSize="3" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
           <Columns>
               <asp:BoundField DataField="name" HeaderText="经纪人" />
               <asp:BoundField DataField="profession" HeaderText="职位" />
               <asp:BoundField DataField="register_date" HeaderText="注册时间" />
               <asp:BoundField DataField="trade_number" HeaderText="完成交易数" />
               <asp:BoundField DataField="person_id" HeaderText="person_id" Visible="False" />
               <asp:CommandField ShowSelectButton="True"/>
           </Columns>
           <HeaderStyle Font-Bold="True" Font-Names="华文中宋" HorizontalAlign="Center" BackColor="White" Font-Size="Larger" />
           <PagerSettings Mode="NumericFirstLast" />
           <PagerStyle BorderColor="#CCCCCC" BorderStyle="Groove" Font-Names="Impact" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
           <RowStyle Height="100px" HorizontalAlign="Center" />
    </asp:GridView>

       <div class="wrapper-border-grey">


       </div>

</asp:Content>
