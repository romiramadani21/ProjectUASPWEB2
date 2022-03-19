<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="formPementor.aspx.vb" Inherits="View_admin_formPementor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Form Pementor</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
     <!--form-->
        <br/> 
        <div class="container">
            <div class="card mt-2">
                <div class="card-header">
                    <h4>Form Add Pementor</h4>
                </div>
                <div class="card-body">
               
                      <div class="form-group">
                        <label for="exampleInputEmail1">Nama</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtNama" runat="server"> </asp:Textbox>
                      </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Alamat</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtAlamat" runat="server"> </asp:Textbox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">No. HP</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtNohp" runat="server"> </asp:Textbox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtEmail" runat="server"> </asp:Textbox>
                      </div>                     
             
                    <div class="form-group">
                        <label for="exampleInputEmail1">Jenis Kelamin</label>
                          <asp:DropDownList ID="txtJk" class="form-control" runat="server">
                                        <asp:ListItem>-----</asp:ListItem>
                                        <asp:ListItem>Laki-laki</asp:ListItem>
                                        <asp:ListItem>Perempuan</asp:ListItem></asp:DropDownList>
                     </div>  
                     <div class="form-group">
                        <label for="exampleInputEmail1">Username</label>
                          	<asp:Textbox  class="form-control" type="text" ID="txtUsername" runat="server"> </asp:Textbox>
                      </div> 
                     <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                          	<asp:TextBox ID="txtpassword" class="form-control" type="text" runat="server" TextMode="Password"></asp:TextBox>
                      </div> 

                    <div class="form-group">
                        <label for="exampleInputEmail1">Level</label>
                          <asp:DropDownList ID="txtLevel" class="form-control" runat="server">
                                        <asp:ListItem>-----</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Pementor</asp:ListItem></asp:DropDownList>
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

