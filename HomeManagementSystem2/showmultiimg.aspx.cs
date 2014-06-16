using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class showmultiimg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            if (Request.QueryString.Get("house_id") != null)
            {
                int house_id = int.Parse(Request.QueryString.Get("house_id"));
                house House = dc.house.FirstOrDefault(a => a.house_id == house_id);
                Response.Write("<html>");
                Response.Write("<body>");
                foreach (var p in House.photo)
                {
                    Response.Write("<img src=\"" + p.picture +"\"/>");
                }
                Response.Write("</body>");
                Response.Write("</html>");
                Response.End();
            }
        }
    }
}