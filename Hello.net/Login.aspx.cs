using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hello.net
{
    public partial class Login : System.Web.UI.Page
    {
        int time;
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            Application["test"] = "Everyone can see this.";
            Application.UnLock();
            string test = Convert.ToString(Application["test"]);
            Label4.Text = test;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (UserName.Text.Equals("joe") && Password.Text.Equals("123"))
                Response.Redirect("/Check");
            else
                Response.Write("false");
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int time = DateTime.Now.Second;
                Label3.Text = time.ToString() + " XX";
            }
            Label3.Text = DateTime.Now.Second.ToString()+"  "+time.ToString();
        }
    }
}