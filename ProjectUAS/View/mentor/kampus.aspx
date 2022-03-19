<%@ Page Title="" Language="VB" MasterPageFile="~/Mentor.master" AutoEventWireup="false" CodeFile="kampus.aspx.vb" Inherits="View_mentor_kampus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Daftar Kampus</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
    <main role="main">
        <div class="container mt-5">
    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-hover table-bordered" AllowPaging="True" AllowSorting="True" 
        CellPadding="4" ForeColor="Black" Height="5px" 
        HorizontalAlign="Center"
        DataKeyNames="id_kampus" DataSourceID="ObjectDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                  <FooterStyle BackColor="#CCCCCC" />

                <HeaderStyle backcolor="Black"
                  forecolor="White" Font-Bold="True" />

        <Columns>

            <asp:BoundField DataField="nama_kampus" HeaderText="Nama kampus" SortExpression="nama_kampus" />
            <asp:BoundField DataField="alamat" HeaderText="Alamat" 
                SortExpression="alamat" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="no_telp" HeaderText="No.Telp" SortExpression="no_telp" />
        </Columns>
                  <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" />
                  <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#808080" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetKampus" 
        TypeName="KampusTableAdapters.KampusTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_id_kampus" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nama_kampus" Type="String" />
            <asp:Parameter Name="alamat" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="no_telp" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nama_kampus" Type="String" />
            <asp:Parameter Name="alamat" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="no_telp" Type="String" />
            <asp:Parameter Name="Original_id_kampus" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
           </div>
        </main>

       <!-- Service Start -->
            <div class="service">
                <div class="container">
                    <div class="section-header text-center">
                        <p>Instansi</p>
                        <h2>Profil Kampus</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image1" runat="server" alt="Image" ImageUrl="~/Assets/img/pcr.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                            Politeknik Caltex Riau (PCR) adalah perguruan tinggi di Rumbai, Pekanbaru, Riau yang didirikan atas kerja sama antara Pemerintah Provinsi Riau dengan PT. Caltex Pacific Indonesia (sekarang PT. Chevron Pacific Indonesia). Kampus PCR berdiri pada tahun 2001. Program Studi yang terdapat di PCR yaitu Teknik D3 Elektronika, D3 Teknik Komputer, D3 Teknik Telekomunikasi, D3 Teknik Mekatronika dan D3 Akuntansi serta Sistem Informasi, Teknik Informatika dan Teknik Elektronika Telekomunikasi, Teknik Mesin dan Teknik Listrik (Diploma 4).
                                            <a href="https://id.wikipedia.org/wiki/Politeknik_Caltex_Riau#:~:text=Politeknik%20Caltex%20Riau%20(PCR)%20adalah,PT.%20Chevron%20Pacific%20Indonesia).">Selanjutnya ...</a></p>
                                        </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>Politeknik Caltex Riau</h3>      
                                </div>
                            </div>
                        </div>
                          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image2" runat="server" alt="Image" ImageUrl="~/Assets/img/unilak.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                           Berdirinya Unilak diprakarsai oleh Pemerintah Provinsi Riau dan tokoh-tokoh masayarakat Riau, dengan tujuan utamanya adalah untuk membantu siswa-siswa yang saat itu tidak mampu ditampung oleh perguruan tinggi negeri yang ada di Riau serta tidak mempunyai biaya yang cukup untuk melanjutkan studi ke perguruan di luar Provinsi Riau                                        
                                    <a href="https://id.wikipedia.org/wiki/Universitas_Lancang_Kuning">Selanjutnya...</a></p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>Universitas Lancang Kuning</h3>      
                                </div>
                            </div>
                        </div>
                     <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image3" runat="server" alt="Image" ImageUrl="~/Assets/img/unri.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                           Universitas Riau, disingkat UR, adalah perguruan tinggi negeri di Pekanbaru, Indonesia, yang berdiri pada 25 September 1962. Rektor pada tahun 2014 hingga saat ini adalah Prof. Dr. Ir. Aras Mulyadi, DEA.


                                        Bermula dari keinginan masyarakat dan pemerintah daerah Riau untuk memiliki Perguruan Tinggi Negeri. Keinginan ini diwujudkan dengan membentuk Panitia Persiapan Perguruan Tinggi Riau (P3TR) di Tanjungpinang. 
                                         <a href="https://id.wikipedia.org/wiki/Universitas_Riau">Selanjutnya...</a>
                                            </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>Universitas Riau</h3>      
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image4" runat="server" alt="Image" ImageUrl="~/Assets/img/uin.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                           Universitas Islam Negeri Sultan Syarif Kasim Riau adalah hasil pengembangan atau peningkatan status pendidikan dari Institut Agama Islam Negeri (IAIN) Sulthan Syarif Qasim Pekanbaru yang secara resmi dikukuhkan berdasarkan Peraturan Presiden RI Nomor 2 Tahun 2005 tanggal 4 Januari 2005 tentang Perubahan IAIN Sulthan Syarif Qasim Pekanbaru menjadi UIN Sultan Syarif Kasim Riau dan diresmikan pada 9 Februari 2005 
                                          <a href="https://en.wikipedia.org/wiki/Sultan_Syarif_Kasim_II_State_Islamic_University">Selanjutnya...</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>UIN SUSKA Riau</h3>      
                                </div>
                            </div>
                        </div>
                          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image5" runat="server" alt="Image" ImageUrl="~/Assets/img/uir.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                           Universitas Islam Riau (UIR) (Bahasa Inggris: Islamic University of Riau, Bahasa Arab: الجامعة الاسلامية في رياو) adalah salah satu perguruan tinggi tertua Riau yang berkedudukan di Pekanbaru, Riau, Indonesia, berdiri pada 4 September 1962
                                              <a href="https://id.wikipedia.org/wiki/Universitas_Islam_Riau">Selanjutnya...</a>
                                         </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>Universitas Islam Riau</h3>      
                                </div>
                            </div>
                        </div>
                     <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item">
                                <div class="service-img">
                                     <asp:Image ID="Image6" runat="server" alt="Image" ImageUrl="~/Assets/img/abdurrab.jpg"  />
                                    
                                    <div class="service-overlay">
                                        <p>
                                          Universitas Abdurrab, yang sering disingkat dengan nama UNIVRAB adalah sebuah perguruan tinggi swasta di Indonesia. Kampus utamanya terletak di di jalan Riau Ujung NO.73 Tampan, Kota Pekanbaru. Universitas Abdurrab adalah kampus agamais, islami, terbuka, komprehensif, multi budaya dan modern. Secara umum dianggap sebagai salah satu dari banyak nya perguruan tinggi di Pekanbaru yang menitik beratkan ke nilai-nilai Islam
                                         <a href="https://id.wikipedia.org/wiki/Universitas_Abdurrab">Selanjutnya...</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3>Universitas Abdurrab</h3>      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service End -->

   
</asp:Content>

