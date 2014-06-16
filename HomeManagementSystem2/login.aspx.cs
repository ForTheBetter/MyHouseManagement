using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Register_Click(object sender, EventArgs e)
        {
            
            DataClasses1DataContext dc = new DataClasses1DataContext();
          
            string email = TB_Reg_UserEmail.Text;
            person p = new person()
                {
                    email = TB_Reg_UserEmail.Text,
                    password = TB_Reg_UserPassword.Text,
                    names = TB_Reg_UserName.Text,
                    phone = TB_Reg_UserPhone.Text
                    
                   
                };
          
           
            dc.person.InsertOnSubmit(p);
            
                dc.SubmitChanges();
        
            member m = new member()
            {
               person_id = (dc.person.FirstOrDefault(a => a.email == email).person_id),
                identity_number = TB_Reg_UserIdentityNumber.Text
            };
            dc.member.InsertOnSubmit(m);
            dc.SubmitChanges();
                
            

        }

        protected void BTN_Login_Click(object sender, EventArgs e)
        {
            
            if (!Commons.doLogin(TB_Log_UserAccount.Text, TB_Log_UserPassword.Text))  //Login
            {
                Label6.Text = "用户名或密码错误！";
            }
            else
            {
                person p = Commons.findPersonByEmail(TB_Log_UserAccount.Text);
                Session["Person"] = p;
                Response.Redirect("index3.aspx");
            }
        }
    }
}