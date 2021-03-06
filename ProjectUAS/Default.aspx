<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Mentoring</title>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Construction Company Website Template" name="keywords">
        <meta content="Construction Company Website Template" name="description">

        <!-- Favicon -->
        <link href="~/Assets/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="~/Assets/lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="~/Assets/lib/animate/animate.min.css" rel="stylesheet">
        <link href="~/Assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="~/Assets/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="~/Assets/lib/slick/slick.css" rel="stylesheet">
        <link href="~/Assets/lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="~/Assets/css/style.css" rel="stylesheet">
        <link href="~/Assets/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="~/Assets/css/all-min.css" rel="stylesheet">
        <link href="~/Assets/css/all.min.css" rel="stylesheet">
        <link href="~/Assets/css/swap.css" rel="stylesheet">
        <link href="~/Assets/css/util.css" rel="stylesheet">
        <link href="~/Assets/css/main.css" rel="stylesheet">
           
    </head>
    <body>
    <form id="form1" runat="server">
          <div class="wrapper">
            <!-- Top Bar Start -->
            <div class="top-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="logo">
                                <a href="#">
                                    <h2>Sistem Informasi Mentoring Mahasiswa Islam se-Pekanbaru</h2>
                                    <!-- <img src="img/logo.jpg" alt="Logo"> -->
                                </a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->

            <!-- Nav Bar Start -->
            <div class="nav-bar">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                        <a href="#" class="navbar-brand">MENU</a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto">
                                <a href="beranda.aspx" class="nav-item nav-link active">Beranda</a>
                                <a href="anggota.aspx" class="nav-item nav-link">Anggota</a>
                                <a href="presensi.aspx" class="nav-item nav-link">Presensi</a>
                                <a href="jadwal.aspx" class="nav-item nav-link">Jadwal</a>
                                <a href="berita.aspx" class="nav-item nav-link">Berita</a>
                                <a href="kampus.aspx" class="nav-item nav-link">Kampus</a>
                                <a href="info.aspx" class="nav-item nav-link">Info Mentoring</a>
                              
                            </div>
                             <div class="ml-auto">
                                <div class="container">
                                  <div class="row">
                                    <div class="col-sm">
                                     <asp:Label ID="Label1" ForeColor="White" class="nav-item nav-link active" runat="server"></asp:Label>
                                     </div>
                                     <div class="col-sm">
                                   <asp:Button ID="BtnLogOut" runat="server" Text="Keluar" class="btn" />
                                    </div>
                                  </div>
                                </div>                           
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Nav Bar End -->

        
              
              
              <div class="footer wow fadeIn" data-wow-delay="0.3s">
                <div class="container copyright">
                    <div class="row">
                        <div class="col-md-8">
                            <p>&copy; <a href="#">Sistem Informasi Mentoring Mahasiswa Islam se-Pekanbaru</a>, By Romi Ramadhan.</p>
                        </div>
                        <div class="col-md-4">
                            <p> Template Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->

            <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="~/Assets/lib/easing/easing.min.js"></script>
        <script src="~/Assets/lib/wow/wow.min.js"></script>
        <script src="~/Assets/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="~/Assets/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="~/Assets/lib/lightbox/js/lightbox.min.js"></script>
        <script src="~/Assets/lib/waypoints/waypoints.min.js"></script>
        <script src="~/Assets/lib/counterup/counterup.min.js"></script>
        <script src="~/Assets/lib/slick/slick.min.js"></script>

        <!-- Template Javascript -->
        <script src="~/Assets/js/main.js"></script>
        <script src="~/Assets/js/jquery.dataTables.min.js"></script>
        <script src="~/Assets/js/jquery-3.4.1.min.js"></script>
       
        <script>
            $(document).ready( function () {
                $('#myTable').DataTable();
            } );
        </script>
     </form>
    </body>
</html>