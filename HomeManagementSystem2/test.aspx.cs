using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices;

namespace HomeManagementSystem2
{
    public partial class test : System.Web.UI.Page
    {

        //[DllImport("E:\\VS2012\\VS_workspace\\HMS_SpecialFunc\\Debug\\HMS_SpecialFunc.dll" , EntryPoint="HelloWorld")]
        //unsafe public static extern int HelloWorld([MarshalAs(UnmanagedType.LPStr)]string s);
        
        protected void Page_Load(object sender, EventArgs e)
        {
           //tb1.Text = HelloWorld("a").ToString();
        }
    }
}