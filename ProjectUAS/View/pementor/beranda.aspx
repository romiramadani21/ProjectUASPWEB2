<%@ Page Title="" Language="VB" MasterPageFile="~/Pementor.master" AutoEventWireup="false" CodeFile="beranda.aspx.vb" Inherits="View_pementor_beranda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

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

