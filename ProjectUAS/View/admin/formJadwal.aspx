<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="formJadwal.aspx.vb" Inherits="View_admin_formJadwal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Form Mentoring</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->

        <div class="container col-6">
                <div class="card mt-2">
                    <div class="card-header">
                        <h4>Form Add Jadwal</h4>
                    </div>
                    <div class="card-body">
               
                          <div class="form-group">
                            <label for="exampleInputEmail1">Kelompok</label>
                          	   <asp:DropDownList ID="txtKelompok" class="form-control" runat="server" 
							 DataSourceID="SqlDataSource7" DataTextField="nama_kelompok" 
							 DataValueField="nama_kelompok">
						 </asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama_kelompok] FROM [Kelompok]"></asp:SqlDataSource>
                          </div>
                         <div class="form-group">
                           <label for="exampleInputEmail1">Pertemuan</label>
                          	<asp:DropDownList ID="txtPertemuan"  class="form-control" runat="server" >
                                        <asp:ListItem>Pertemuan 1</asp:ListItem>
                                        <asp:ListItem>Pertemuan 2</asp:ListItem>
                                        <asp:ListItem>Pertemuan 3</asp:ListItem>
                                        <asp:ListItem>Pertemuan 4</asp:ListItem>
                                        <asp:ListItem>Pertemuan 5</asp:ListItem>
                                        <asp:ListItem>Pertemuan 6</asp:ListItem>
                                        <asp:ListItem>Pertemuan 7</asp:ListItem>
                                        <asp:ListItem>Pertemuan 8</asp:ListItem>
                                        <asp:ListItem>Pertemuan 9</asp:ListItem>
                                        <asp:ListItem>Pertemuan 10</asp:ListItem>
                                        <asp:ListItem>Pertemuan 11</asp:ListItem>
                                        <asp:ListItem>Pertemuan 12</asp:ListItem>
                                        <asp:ListItem>Pertemuan 13</asp:ListItem>
                                        <asp:ListItem>Pertemuan 14</asp:ListItem>
                                        <asp:ListItem>Pertemuan 15</asp:ListItem>
                                        <asp:ListItem>Pertemuan 16</asp:ListItem>
                                    </asp:DropDownList>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Tanggal</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtTanggal" TextMode="Date" runat="server"> </asp:Textbox>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Waktu Mulai</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtMulai" TextMode="Time" format="HH:mm" runat="server"> </asp:Textbox>
                          </div>
                           <div class="form-group">
                            <label for="exampleInputEmail1">Waktu Selesai</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtSelesai" TextMode="Time" format="HH:mm" runat="server"> </asp:Textbox>
                          </div>   
                         <div class="form-group">
                            <label for="exampleInputEmail1">Tempat</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtTempat" runat="server"> </asp:Textbox>
                          </div>
                         <div class="form-group">
                            <label for="exampleInputEmail1">Materi</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtMateri" runat="server"> </asp:Textbox>
                          </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Pementor</label>
                          	<asp:DropDownList ID="txtName" class="form-control" runat="server" 
							 DataSourceID="SqlDataSource1" DataTextField="nama" 
							 DataValueField="nama">
						 </asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama] FROM [Admin] WHERE [id_admin] != 1"></asp:SqlDataSource>
                      </div> 

                         <div class="form-group">
                            <label for="exampleInputEmail1">Status</label>
                          	    <asp:Textbox  class="form-control" type="text" ID="txtStatus" runat="server"> </asp:Textbox>
                          </div>
                            <div class="form-group">
                                 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </div>

                         </div>
                         <div class="card-footer text-muted">
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Tambah" />
                       <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </div>  
            </div>
</asp:Content>

