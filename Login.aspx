<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MusteriMailSistemi.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="css/owl.carousel.min.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css"/>
</head>

<body>
    <form id="form1" runat="server">
        

         

     <div class="d-lg-flex half">
    <div class="bg order-1 order-md-1" style="background-image: url('images/bg_1.png');"></div>
    <div class="contents order-2 order-md-1">


         <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3 style="text-align: center;">Musteri Mail Sistemi</h3><br/><br/>

   

                <form action="#" method="post">


                <div class="form-group first">
                <label for="username">Kullanidi Adi</label>
                <asp:TextBox ID="user" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div class="form-group last mb-3">
                <label for="password">Sifre</label>
                <asp:TextBox ID="pasword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
              </div>
              
              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Beni Hatirla</span>
                    <asp:CheckBox ID="CheckBox1" runat="server"/>
                  <div class="control__indicator"></div>
                </label>
                <span class="ml-auto"><a href="sifre_degistir.aspx" class="forgot-pass">Şifremi Unuttum</a></span> 
              </div>
                    <asp:Button ID="Button1" runat="server" BackColor="DodgerBlue" CssClass="btn btn-block btn-primary" Text="Giris" OnClick="Button1_Click" />
            
                    <div style="text-align:center"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>





                    </form>




                </div>
      </div>








    </form>









</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</html>
