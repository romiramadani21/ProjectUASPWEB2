<%@ Page Language="VB" MasterPageFile="~/Mentor.master" AutoEventWireup="false" CodeFile="beranda.aspx.vb" Inherits="View_mentor_beranda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Beranda</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->

    <!-- Carousel Start -->
    <div class="container mt-5">
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <asp:Image ID="Image2" ImageUrl="~/Assets/images/bg1.png" runat="server" alt="Carousel Image" />
                        <div class="carousel-caption">
                            <h1 class="animated fadeInRight">Tujuan Mentoring</h1>
                            <p class="animated fadeInLeft">Kita sebagai Muslim memperoleh pemahaman tentang Islam dan bersemangat untuk beribadah kepada Allah dengan benar</p>                            
                        </div>
                    </div>

                    <div class="carousel-item">
                     <asp:Image ID="Image3" ImageUrl="~/Assets/images/bg2.jpg" runat="server" alt="Carousel Image" />
                        <div class="carousel-caption">
                            <h1 class="animated fadeInRight">Sasaran Mentoring</h1>
                            <p class="animated fadeInLeft">Mahasiswa/i Muslim dan dibimbing oleh para mentor yang terlatih dan terkontrol perkembangannya</p>                          
                        </div>
                    </div>

                    <div class="carousel-item">
                       <asp:Image ID="Image4" ImageUrl="~/Assets/images/bg3.jpg" runat="server" alt="Carousel Image" />
                        <div class="carousel-caption">
                            <h1 class="animated fadeInRight">Pelaksanaan</h1>
                            <p class="animated fadeInLeft">Dilaksanakan satu pekan sekali selama 1-2 jam.</p>                 
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
            <!-- Carousel End -->

          <!-- Beranda Start -->
            <div class="about wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="about-img">
                                
                                <asp:Image ID="Image1" ImageUrl="~/Assets/images/mentor.jpg" runat="server" />
                                
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="section-header text-left">
                                <p>Selamat datang</p>
                                <h2>Yuk Join Mentoring</h2>
                            </div>
                            <div class="about-text">
                                <p align="justify">
                                    Mentoring merupakan salah satu sarana tarbiyah islamiyah (pembinaan islami) yang di dalamnya ada proses belajar dan orientasinya adalah pembentukan karakter dan kepribadian islami peserta mentoring. (Ruswandi & Adesyasa, 2007, p. 1)
                                </p>
                                <p align="justify">
                                   Jika kita memperhatikan dan membandingkan antara definisi mentoring, dapat diketahui persamaan dari tiap mentoring adalah sama-sama berkehendak untuk membentuk, mengarahkan dan membimbing sesuatu atau seseorang untuk menjadi pribadi yang lebih baik. Maka ini yang menjadi acuan dan penyamangat bagi para mentee untuk tetap melanjutkan mentoring hingga lulus sekolah , kuliah bahkan hingga menikah dan berada di liang lahat. Karena  bagi orang yang tidak punya mentor, maka tidaka ada forum lingkaran yang akan terus memantau dan menasihati jika kita melakukan kesalahan.
                                </p>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          <!-- Beranda End -->
  </asp:Content>