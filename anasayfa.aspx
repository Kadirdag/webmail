<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="MusteriMailSistemi.anasayfa" %>

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


        
<div class="row" style="height:100px">
    <div class="col-sm-7" style="background-image: url('images/bg_2.png'); background-repeat:no-repeat;"></div>
    <div class="col-sm-1">
        <br /><asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" BackColor="#0000cc" ForeColor="White" Height="50px" Text="+Kayıt Ekle/Kaldır" />
    </div>
    <div class="col-sm-3">
         <br />
        <div class="col-sm-7" style="background-image: url('images/bg_3.png'); background-repeat:no-repeat;"></div>            
       <asp:Label ID="Label2" runat="server" Text="Kullanici"  BorderStyle="Solid" BorderColor="#0000cc" Height="50px" Width="350px"></asp:Label>
        <span class="glyphicon glyphicon-search"></span>

    </div>
    <div class="col-sm-1" >
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="red" CssClass="btn btn-block btn-primary" Height="50px" Text="Çıkış Yap" />

    </div>
    
  </div>


   <div class="row" style="height:auto">
    <div class="col-sm-8" style="height:850px; background-color:aqua"></div>
    <div class="col-sm-4" style="background-color:lavenderblush;">.col-sm-8</div>
  </div>

    </form>
      <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
