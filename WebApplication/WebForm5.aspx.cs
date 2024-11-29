using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["myinfo"];
                if (cookie != null)
                {
                    Label3.Text = cookie["Name"];
                    Label4.Text = cookie["Mobile"];
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("myinfo");
            cookie["Name"] = TextBox1.Text;
            cookie["Mobile"] = TextBox1.Text;
            cookie.Expires = DateTime.Now.AddSeconds(30);
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm2.aspx");
        }
    }
}