using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeManagementSystem2
{
    /// <summary>
    /// Validator 的摘要说明
    /// </summary>
    public class Validator : IHttpHandler
    {
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        
        public void ProcessRequest(HttpContext context)
        {
    
            string flag = "3";
            context.Response.ContentType = "text/plain";
            string xiaoquname = context.Request.QueryString["Xiaoquming"];
            if (isXiaoquExist(xiaoquname))
            {
                flag = "1";
            }
            else
            {
                flag = "0";
            }

            context.Response.Write(flag);
                
        }

        public bool isXiaoquExist(string name)
        {
            return HMS_DBProcessor.Commons.judgeIfXiaoqumingExsit(name);
        }
      
    }
}