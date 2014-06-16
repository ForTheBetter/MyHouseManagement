<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="SellHouse_first.aspx.cs" Inherits="HomeManagementSystem2.SellHouse_first" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="AutoCompleteExtra" Namespace="AutoCompleteExtra" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Wrapper.css" rel="stylesheet" type="text/css" />
    <link href="css/Button.css" rel="stylesheet" type="text/css" />
    <link href="css/Label.css" rel="stylesheet" type="text/css" />
     <link href="css/Textbox.css" rel="stylesheet" type="text/css" />
    <title>我要卖房</title>
    <style>
        .center {
            margin:0px auto;
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
            var XiaoquName = document.getElementById("Xiaoqu").value;
          
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

    <div class="wrapper-border-green">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            &nbsp;
        </p>
        <p>
          <div>
          
           <asp:Image ID="Image5" runat="server" Height="42px" ImageUrl="~/Resources/20130727192851_4102.png" Width="452px" CssClass="center"  />
              <br />
              </div>
        </p>
        <p>
        </p>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="No" runat="server" Text="标题:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Biaoti" runat="server" CssClass="Yuanjiao" Width="409px"></asp:TextBox>
             
                <br />
             
                <br />
             
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;
                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="Xiaoqu" CompletionSetCount="4"
                    CompletionInterval="1000" ServiceMethod="GetSearchTerms"
                    ServicePath="~/AutoCompleteService.asmx" MinimumPrefixLength="1">
                </asp:AutoCompleteExtender>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="小区名称:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Xiaoqu" ClientIDMode="Static" runat="server" onblur="CheckXiaoquName(this.value)" Width="285px" CssClass="Yuanjiao"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="XiaoquTips" ClientIDMode="Static" runat="server"></asp:Label>

                        <br />

                        <br />

                    </ContentTemplate>
              

                </asp:UpdatePanel>
       

       


            <p>
            
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label2" runat="server" Text="房型:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Shi" runat="server" CssClass="Yuanjiao"></asp:TextBox>
                &nbsp;室 
        <asp:TextBox ID="Ting" runat="server" CssClass="Yuanjiao"></asp:TextBox>
                &nbsp;厅 
        <asp:TextBox ID="Wei" runat="server" CssClass="Yuanjiao"></asp:TextBox>
                &nbsp;卫
            </p>
        <p>
                &nbsp;
                &nbsp;</p>
          
            <p>
          
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="面积:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Mianji" runat="server" CssClass="Yuanjiao"></asp:TextBox>
                &nbsp;平方米
            </p>
           
        <p>
                &nbsp;</p>
            <p>
                   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 期望售价:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Jiage" runat="server" CssClass="Yuanjiao"></asp:TextBox>
                &nbsp;万元
            </p>
        <p>
                &nbsp;</p>
            <p>
               
              
                </p>
               
              
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" CssClass="colorbutton orange" runat="server"
            Height="36px" OnClick="Button1_Click" Text="我要卖房" Width="210px" />
            <p>
        </p>
        <p>
        </p>
        <p>
                &nbsp;</p>
    </div>

</asp:Content>