using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MusteriMailSistemi
{
    public partial class sifre_degistir : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-KLA55VO; Initial Catalog=optmail;Integrated Security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {


                string sorgu = "SELECT * FROM Kullanicilar where kadi=@kadi and parola=@pass";

                cmd = new SqlCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@pass", pasword.Text);
                cmd.Parameters.AddWithValue("@kadi", user.Text);


                con.Open();
                dr = cmd.ExecuteReader();



                if (dr.Read())
                {

                    if (new_sifre.Text == new_sifre_onay.Text)
                    {
                        con.Close();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("UPDATE Kullanicilar SET parola = '" + new_sifre_onay.Text + "' where parola = '" + pasword.Text + "'", con);



                        cmd.ExecuteNonQuery();
                        con.Close();

                        Label1.Text=("Başarıyla güncellendi");
                    }
                    else
                    {
                        Label1.Text = ("yeni şifrenizi doğru bir şekilde tekrar yazın");
                    }

                }
                else
                {

                    Label1.Text = ("Kayıt Bulunamadı");

                }
            }
            catch (Exception f)
            {
                Label1.Text=(f.Message);
            }

        }
    }
}