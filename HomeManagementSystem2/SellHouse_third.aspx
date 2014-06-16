<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="SellHouse_third.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_third" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  href="css/Label.css" rel="stylesheet" type="text/css" />
        <link  href="css/Button.css" rel="stylesheet" type="text/css" />
     <link  href="css/Textbox.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-webox.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery-webox.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        //内嵌弹出层调用
        $('#inside').click(function () {
            $.webox({
                height: 280,
                width: 600,
                bgvisibel: true,
                title: '内嵌弹出层调用',
                html: $("#box").html()
            });
        });

        //iframe弹出层调用
        $('#outside').click(function () {
            $.webox({
                height: 280,
                width: 600,
                bgvisibel: true,
                title: 'iframe弹出层调用',
                iframe: 'iframe.html?' + Math.random
            });
        });

    })
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文中宋" Font-Size="Larger" Text="选择好经纪人了？填写一下基本房源信息吧"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="NameOfJingjiren" runat="server" ForeColor="#0066FF" Text="Label"></asp:Label>
    <br />
    <hr />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="Red" Text="带*为必填字段，其他部分可以在沟通后由经纪人代填"></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="*装修情况:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="Zhuangxiu" runat="server" Height="32px" Width="122px" OnSelectedIndexChanged="Zhuangxiu_SelectedIndexChanged" CssClass="Yuanjiao">
        <asp:ListItem Value="毛坯">毛坯房</asp:ListItem>
        <asp:ListItem>普通装修</asp:ListItem>
        <asp:ListItem>精装修</asp:ListItem>
        <asp:ListItem>豪华装修</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;<br />
    <br />
&nbsp;&nbsp; &nbsp;<asp:Label ID="sd" runat="server" Text="*房子类型:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:DropDownList ID="Leixing" runat="server" Height="32px" Width="124px" CssClass="Yuanjiao">
        <asp:ListItem Value="普通房">普通民居</asp:ListItem>
        <asp:ListItem>公寓</asp:ListItem>
        <asp:ListItem>老公房</asp:ListItem>
        <asp:ListItem>新洋房</asp:ListItem>
        <asp:ListItem>别墅</asp:ListItem>
        <asp:ListItem>酒店</asp:ListItem>
    </asp:DropDownList>
&nbsp;
    <br />
    &nbsp;
    <br />
&nbsp;&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text="*使用情况:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:DropDownList ID="Shiyongqingkuang" runat="server" Height="32px" Width="122px" CssClass="Yuanjiao">
        <asp:ListItem>新房</asp:ListItem>
        <asp:ListItem>二手房</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />

&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label runat="server" Text="房屋朝向:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="Chaoxiang" runat="server" style="margin-left: 0px" Width="198px" CssClass="Yuanjiao"></asp:TextBox>
    <br />
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label runat="server" Text="所在楼层:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="Louceng" runat="server" Width="198px" CssClass="Yuanjiao"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="开发商:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="Kaifashang" runat="server" Width="199px" CssClass="Yuanjiao"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="建造年代:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Jianzaoniandai" runat="server" Width="201px" CssClass="Yuanjiao" ></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label runat="server" Text="物业费(元/平米/年):"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Wuyefei" runat="server" Width="201px" CssClass="Yuanjiao"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="*为自己的房源上传一张头像:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" CssClass="Yuanjiao" />
    <br />
    <br />
    <br />
&nbsp;&nbsp; <asp:Label ID="asdfa" runat="server" Text="*简要描述(1000字以内):"></asp:Label>
    
    <br />
    <br />
&nbsp;&nbsp;
    <asp:TextBox ID="Description" runat="server" Height="104px" MaxLength="1000" TextMode="MultiLine" Width="583px" CssClass="Yuanjiao"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;<asp:Button  ID="Submit" runat="server" OnClick="Submit_Click"  Text="确认提交"  CssClass="colorbutton orange"></asp:Button>
    <br />
    &nbsp;<%--    <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="申请上架" Width="143px"/>--%>
 
     
    
    
      
   
	</div>
            
</div>

</asp:Content>


