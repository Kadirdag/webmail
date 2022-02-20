using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MusteriMailSistemi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sorgu = "SELECT * FROM kullanicilar where kadi=@user AND parola=@pass";
            con = new SqlConnection("server=DESKTOP-KLA55VO;Initial Catalog=optmail;Integrated Security=true");
            cmd = new SqlCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@user", user.Text);
            cmd.Parameters.AddWithValue("@pass", pasword.Text);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                
                Response.Redirect("anasayfa.aspx");
                
            }
            else
            {
                Label1.Text = "Giriş yapılamadı";
            }
            con.Close();
        }

     
            
       

    }
}