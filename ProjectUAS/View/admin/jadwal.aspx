<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="jadwal.aspx.vb" Inherits="View_admin_jadwal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
          <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Jadwal Mentoring</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End --> 
     <div class="container mt-5">
		  <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Tambah" ></asp:Button>
        </div>
      <main role="main">
        <div class="container mt-5">
          <asp:GridView ID="GridView1" runat="server"  class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_jadwal" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
                  <asp:BoundField DataField="pertemuan" HeaderText="Pertemuan" SortExpression="pertemuan" />
                  <asp:BoundField DataField="tanggal" HeaderText="Tanggal" SortExpression="tanggal" />
                  <asp:BoundField DataField="waktu_mulai" HeaderText="Waktu Mulai" SortExpression="waktu_mulai" />
                  <asp:BoundField DataField="waktu_selesai" HeaderText="Waktu Selesai" SortExpression="waktu_selesai" />
                  <asp:BoundField DataField="tempat" HeaderText="Tempat" SortExpression="tempat" />
                  <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
                  <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Jadwal] WHERE [id_jadwal] = @id_jadwal" InsertCommand="INSERT INTO [Jadwal] ([nama_kelompok], [pertemuan], [tanggal], [waktu_mulai], [waktu_selesai], [tempat], [materi], [nama], [status]) VALUES (@nama_kelompok, @pertemuan, @tanggal, @waktu_mulai, @waktu_selesai, @tempat, @materi, @nama, @status)" SelectCommand="SELECT * FROM [Jadwal]" UpdateCommand="UPDATE [Jadwal] SET [nama_kelompok] = @nama_kelompok, [pertemuan] = @pertemuan, [tanggal] = @tanggal, [waktu_mulai] = @waktu_mulai, [waktu_selesai] = @waktu_selesai, [tempat] = @tempat, [materi] = @materi, [nama] = @nama, [status] = @status WHERE [id_jadwal] = @id_jadwal">
              <DeleteParameters>
                  <asp:Parameter Name="id_jadwal" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="pertemuan" Type="String" />
                  <asp:Parameter DbType="Date" Name="tanggal" />
                  <asp:Parameter DbType="Time" Name="waktu_mulai" />
                  <asp:Parameter DbType="Time" Name="waktu_selesai" />
                  <asp:Parameter Name="tempat" Type="String" />
                  <asp:Parameter Name="materi" Type="String" />
                  <asp:Parameter Name="nama" Type="String" />
                  <asp:Parameter Name="status" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="pertemuan" Type="String" />
                  <asp:Parameter DbType="Date" Name="tanggal" />
                  <asp:Parameter DbType="Time" Name="waktu_mulai" />
                  <asp:Parameter DbType="Time" Name="waktu_selesai" />
                  <asp:Parameter Name="tempat" Type="String" />
                  <asp:Parameter Name="materi" Type="String" />
                  <asp:Parameter Name="nama" Type="String" />
                  <asp:Parameter Name="status" Type="String" />
                  <asp:Parameter Name="id_jadwal" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>
   </main>
</asp:Content>

