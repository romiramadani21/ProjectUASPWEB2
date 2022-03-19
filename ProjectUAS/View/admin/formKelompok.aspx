<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="formKelompok.aspx.vb" Inherits="View_admin_formKelompok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Form Kelompok</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
       <!--form-->
        <br/> 
        <div class="container col-md-4">
            <div class="card mt-2">
                <div class="card-header">
                    <h4>Form Tambah Kelompok</h4>
                </div>
                <div class="card-body">
               
                      <div class="form-group">
                        <label for="exampleInputEmail1">Nama Kelompok</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtKelompok" runat="server"> </asp:Textbox>
                      </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Pementor</label>
                          	<asp:DropDownList ID="txtNama" class="form-control" runat="server" 
							 DataSourceID="SqlDataSource2" DataTextField="nama" 
							 DataValueField="nama">
						 </asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama] FROM [Admin] where id_admin !=1"></asp:SqlDataSource>
                      </div>                                   
                     </div>
                     <div class="card-footer text-muted">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Tambah" />
                   <button type="reset" class="btn btn-danger">Reset</button>
                </div>
            </div>
            
        </div>

       <!--End Form-->
</asp:Content>

