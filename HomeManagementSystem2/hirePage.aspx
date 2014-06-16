<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="hirePage.aspx.cs" Inherits="HomeManagementSystem2.hirePage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>我要出租</title>
    <style type="text/css">
        .auto-style2 {
            width: 184px;
        }
    </style>
    <script>
        var xmlHttp;
        function createXMLHttpRequest() {
            if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                xmlHttp = new XMLHttpRequest();
            }
        }
        function CheckXiaoquName() {

            createXMLHttpRequest();
            var XiaoquName = document.getElementById("TextBox1").value;

            var url = "Validator.ashx?Xiaoquming=" + XiaoquName;
            xmlHttp.open("GET", url, true);
            //alert("The readyState is" + xmlHttp.readyState + " Status is" +  xmlHttp.status);
            xmlHttp.onreadystatechange = ShowResult;
            xmlHttp.send(null);
        }

        function ShowResult() {

            if (xmlHttp.readyState == 4) {
                if (xmlHttp.status == 200) {
                    var ret = xmlHttp.responseText;
                    if (ret == "1") {
                        document.getElementById("XiaoquTips").innerHTML = "该小区名可用";
                        document.getElementById("XiaoquTips").style.color = 'green';
                    }
                    else if (ret == "0") {
                        document.getElementById("XiaoquTips").innerHTML = "该小区名无效！";
                        document.getElementById("XiaoquTips").style.color = 'red';
                    }
                    else if (ret == "3") {
                        alert("shabi");
                    }
                }
            }

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/button1.css" rel="stylesheet"/>
    <p style="font-size:x-large;font-family:\5FAE\8F6F\96C5\9ED1,Microsoft YaHei; height: 31px; margin-bottom: 0px;margin-top: 5px">
        &nbsp;&nbsp;
        填写出租信息 (以下均为必填)
        <hr style="height: -12px"/>
    </p>
    <table border="0" style="width: 586px; height: 389px;">
    <tr style="height: 20px; width: 720px;">
        <td><strong>小区名称</strong></td> 
        <td class="auto-style2">          
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox1" CompletionSetCount="4"
                    CompletionInterval="1000" ServiceMethod="GetSearchTerms"
                    ServicePath="~/AutoCompleteService.asmx" MinimumPrefixLength="1">
                </asp:AutoCompleteExtender>
                        <asp:TextBox ID="TextBox1" ClientIDMode="Static" runat="server" onblur="CheckXiaoquName(this.value)" ></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="XiaoquTips" ClientIDMode="Static" runat="server"></asp:Label>

                    </ContentTemplate>
              

                </asp:UpdatePanel>

</td>
    </tr>
    <tr style="height: 10px; width: 717px;">
        <td><strong>出租方式</strong></td>
        <td class="auto-style2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="2">
                <asp:ListItem Text="整租"></asp:ListItem>
                <asp:ListItem Text="合租"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr style="height: 11px; width: 718px;">
        <td><strong>整套户型</strong></td> 
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" Width="24px"></asp:TextBox>
            室
            <asp:TextBox ID="TextBox3" runat="server" Width="24px"></asp:TextBox>
            卫
            <asp:TextBox ID="TextBox4" runat="server" Width="24px"></asp:TextBox>
            厅
        </td>
    </tr>
    <tr style="height: 18px; width: 725px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; 面积</strong>&nbsp;</td> 
        <td class="auto-style2"><asp:TextBox ID="TextBox5" runat="server" Width="39px"></asp:TextBox>&nbsp;平米</td>
    </tr>
    <tr style="height: 18px; width: 728px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; 楼层</strong>&nbsp;</td>
        <td class="auto-style2">第&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="24px"></asp:TextBox>&nbsp;层</td>
    </tr>
    <tr style="height: 18px; width: 727px;">
        <td><strong>房屋情况</strong></td>
        <td class="auto-style2">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="公寓"></asp:ListItem>
            <asp:ListItem Text="老公房"></asp:ListItem>
            <asp:ListItem Text="新里洋房"></asp:ListItem>
            <asp:ListItem Text="别墅"></asp:ListItem>
            <asp:ListItem Text="酒店公寓"></asp:ListItem>
            <asp:ListItem Text="其他"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Text="毛坯"></asp:ListItem>
            <asp:ListItem Text="普通装修"></asp:ListItem>
            <asp:ListItem Text="精装修"></asp:ListItem>
            <asp:ListItem Text="豪华装修"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Text="东"></asp:ListItem>
            <asp:ListItem Text="南"></asp:ListItem>
            <asp:ListItem Text="西"></asp:ListItem>
            <asp:ListItem Text="北"></asp:ListItem>
            <asp:ListItem Text="东南"></asp:ListItem>
            <asp:ListItem Text="东北"></asp:ListItem>
            <asp:ListItem Text="西南"></asp:ListItem>
            <asp:ListItem Text="西北"></asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr style="height: 18px; width: 728px;">
        <td>&nbsp;&nbsp;<strong>&nbsp; 租金</strong>&nbsp; </td>
        <td class="auto-style2"><asp:TextBox ID="TextBox7" runat="server" Width="42px"></asp:TextBox>&nbsp;元/月</td>
    </tr>
    <tr style="height: 10px; width: 736px;">
        <td><strong>房屋配置&nbsp;</strong></td>
        <td class="auto-style2">
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatColumns="6" RepeatRows = "2" RepeatDirection="Horizontal" RepeatLayout="Table" Width="437px" Height="36px">
            <asp:ListItem Text="床"></asp:ListItem>
            <asp:ListItem Text="电视"></asp:ListItem>
            <asp:ListItem Text="空调"></asp:ListItem>
            <asp:ListItem Text="冰箱"></asp:ListItem>
            <asp:ListItem Text="洗衣机"></asp:ListItem>
            <asp:ListItem Text="热水器"></asp:ListItem>
            <asp:ListItem Text="宽带"></asp:ListItem>
            <asp:ListItem Text="可做饭"></asp:ListItem>
            <asp:ListItem Text="独立卫生间"></asp:ListItem>
            <asp:ListItem Text="阳台"></asp:ListItem>
        </asp:CheckBoxList>
        </td>
    </tr>
    </table>
    <p>
        <asp:Button ID="Button_Next" class ="button blue" runat="server" Text="下一步" Height="35px"  OnClick="Button_Next_Click"/>
    </p>
</asp:Content>