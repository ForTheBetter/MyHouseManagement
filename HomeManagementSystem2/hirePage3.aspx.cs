using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS_DataEntity;

namespace HomeManagementSystem2
{
    public partial class hirePage3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile.FileName == "")
            {
                Uploadtips.Text = "请选择上传文件";
            }
            else
            {
                string filepath = FileUpload1.PostedFile.FileName;
                string filename = "";
                //filename += ((person)Session["person"]).person_id + DateTime.Now.ToString("u");
                filename += new Random().Next(10000).ToString();
                filename += filepath.Substring(filepath.LastIndexOf("\\") + 1);
                Uploadtips.Text = filename;
                string serverpath = Server.MapPath("~/UploadedImage/") + filename;
                Uploadtips.Text = serverpath;
                
                FileUpload1.PostedFile.SaveAs(serverpath);
                HMS_DBProcessor.Commons.addOnePhotoToPhotos(filename, ((person)(Session["Person"])).person_id);
                Uploadtips.Text = "上传成功,再接在励，再上传几张吧";

                List<string> photoList = HMS_DBProcessor.Commons.getLastHouseAllPhotosByPersonId(((person)(Session["Person"])).person_id);
                string ihtml = "";
                foreach (string s in photoList)
                {
                    ihtml += "<img width='60px' height='60px' src='UploadedImage/" + s + "'/>";
                }
                Image_Gallery.InnerHtml = ihtml;
            }

        }
    }
}