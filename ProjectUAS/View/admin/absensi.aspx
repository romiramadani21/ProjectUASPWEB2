<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="absensi.aspx.vb" Inherits="View_admin_absensi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
      <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Presensi Mentor</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
       <div class="container-fluid">
		  <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Tambah" ></asp:Button>
        </div>
		<br/> 
    
   <main role="main">
    <div class="container-fluid col-md-12">
     <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_presensi" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
         <Columns>
             <asp:BoundField DataField="nama_mentor" HeaderText="Mentor" SortExpression="nama_mentor" />
             <asp:BoundField DataField="pertemuan" HeaderText="Pertemuan" SortExpression="pertemuan" />
             <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
             <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
             <asp:BoundField DataField="keterangan" HeaderText="Keterangan" SortExpression="keterangan" />
             <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
             <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Assets/images/delete-removebg-preview.png" EditImageUrl="~/Assets/images/ed-removebg-preview.png" HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
         </Columns>
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
         <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#242121" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Presensi] WHERE [id_presensi] = @id_presensi" InsertCommand="INSERT INTO [Presensi] ([nama_mentor], [pertemuan], [status], [nama], [keterangan], [nama_kelompok]) VALUES (@nama_mentor, @pertemuan, @status, @nama, @keterangan, @nama_kelompok)" SelectCommand="SELECT * FROM [Presensi]" UpdateCommand="UPDATE [Presensi] SET [nama_mentor] = @nama_mentor, [pertemuan] = @pertemuan, [status] = @status, [nama] = @nama, [keterangan] = @keterangan, [nama_kelompok] = @nama_kelompok WHERE [id_presensi] = @id_presensi">
         <DeleteParameters>
             <asp:Parameter Name="id_presensi" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="nama_mentor" Type="String" />
             <asp:Parameter Name="pertemuan" Type="String" />
             <asp:Parameter Name="status" Type="String" />
             <asp:Parameter Name="nama" Type="String" />
             <asp:Parameter Name="keterangan" Type="String" />
             <asp:Parameter Name="nama_kelompok" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="nama_mentor" Type="String" />
             <asp:Parameter Name="pertemuan" Type="String" />
             <asp:Parameter Name="status" Type="String" />
             <asp:Parameter Name="nama" Type="String" />
             <asp:Parameter Name="keterangan" Type="String" />
             <asp:Parameter Name="nama_kelompok" Type="String" />
             <asp:Parameter Name="id_presensi" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
    </div>
   </main>
</asp:Content>

