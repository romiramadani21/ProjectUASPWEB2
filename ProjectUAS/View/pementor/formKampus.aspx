<%@ Page Title="" Language="VB" MasterPageFile="~/Pementor.master" AutoEventWireup="false" CodeFile="formKampus.aspx.vb" Inherits="View_pementor_formKampus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Form Kampus</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
     <!--form-->
        <br/> 
        <div class="container-fluid">
            <div class="card mt-2">
                <div class="card-header">
                    <h4>Form Tambah Kampus</h4>
                </div>
                <div class="card-body">
               
                      <div class="form-group">
                        <label for="exampleInputEmail1">Nama Kampus</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtNama" runat="server"> </asp:Textbox>
                      </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Alamat</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtAlamat" runat="server"> </asp:Textbox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtEmail" runat="server"> </asp:Textbox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">No.Telp</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtNohp" runat="server"> </asp:Textbox>
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

