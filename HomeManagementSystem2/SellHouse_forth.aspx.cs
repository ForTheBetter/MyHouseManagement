﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class SellHouse_forth : System.Web.UI.Page
    {
        Object thislock = new Object();

        protected void Page_Load(object sender, EventArgs e)
        {
            Title1.Text = "[" + (string)Session["Biaoti"] + "]";
            Jiben.Text =
                (string)Session["Xiaoqu"] + "小区 " + (string)Session["Shi"] + "室" +
                (string)Session["Ting"] + "厅" + (string)Session["Wei"] + "卫  " + (string)Session["Zhuangxiu"] + "  ";
            Jiben.Text += (string)Session["Mianji"] + "平方米  售价" + (string)Session["Jiage"] + "万元";
            Peizhi.Text = "朝向:" + (string)Session["Chaoxiang"] + "  楼层:" + (string)Session["Louceng"] + "  开发商:" + 
                (string)Session["Kaifashang"] + "  建造年代:" + (string)Session["Jianzaoniandai"] + "  使用情况:"+(string)Session["Shiyongqingkuang"] + "\n";
            Detail1.Text = "物业费: " + (string)Session["Wuyefei"] + "(元/平方米/年)";
            
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile.FileName == "")
            {
                Uploadtips.Text = "请选择上传文件";
            }
            else
            {
                WaitCallback myCallback = new WaitCallback(UploadThread);
                ThreadPool.QueueUserWorkItem(myCallback);
            }
      
        }

        protected void CompleteBtn_Click(object sender, EventArgs e)
        {
            Uploadtips.Text = "上传成功,再接在励，再上传几张吧";
            List<string> photoList = new List<string>();
            lock (thislock)
            {
                photoList = HMS_DBProcessor.Commons.getLastHouseAllPhotosByPersonId(((person)(Session["Person"])).person_id);
            }
            string ihtml = "";
            foreach (string s in photoList)
            {
                ihtml += "<img width='60px' height='60px' src='UploadedImage/" + s + "'/>";
            }
            Image_Gallery.InnerHtml = ihtml;
        }

        void UploadThread(Object state)
        {
            string filepath = FileUpload1.PostedFile.FileName;
            string filename = "";
            ////filename += ((person)Session["person"]).person_id + DateTime.Now.ToString("u");
            filename += new Random().Next(10000).ToString();
            filename += new Random().Next(10000).ToString();
            filename += ((person)Session["Person"]).person_id;
            filename += filepath.Substring(filepath.LastIndexOf("\\") + 1);
            Uploadtips.Text = filename;
            string serverpath = Server.MapPath("~/UploadedImage/") + filename;
            //Uploadtips.Text = serverpath;

            FileUpload1.PostedFile.SaveAs(serverpath);
            lock (thislock)
            {
                HMS_DBProcessor.Commons.addOnePhotoToPhotos(filename, ((person)(Session["Person"])).person_id);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string message = LeaveMessage.Text;
           HMS_DBProcessor.Commons.setDelegateMessages(message, HMS_DBProcessor.Commons.getLastDelegateByPersonId(((person)(Session["Person"])).person_id));
           System.Web.UI.Page page = (System.Web.UI.Page)System.Web.HttpContext.Current.Handler;
           if (!page.ClientScript.IsClientScriptBlockRegistered(page.GetType(), "clientScript"))
               page.ClientScript.RegisterClientScriptBlock(page.GetType(),
                   "clientScript", "<script language=javascript>alert(\"留言成功，我们的经纪人将在第一时间看到您的信息！\"); </script>");
                         
        }

    
    }
}