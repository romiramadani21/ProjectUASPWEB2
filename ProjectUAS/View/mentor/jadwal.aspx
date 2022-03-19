<%@ Page Title="" Language="VB" MasterPageFile="~/Mentor.master" AutoEventWireup="false" CodeFile="jadwal.aspx.vb" Inherits="View_mentor_jadwal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
   
  <main role="main">
   <div class="container mt-5">
       <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_jadwal" DataSourceID="SqlDataSource1" ForeColor="Black">
           <Columns>
               <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
               <asp:BoundField DataField="pertemuan" HeaderText="Pertemuan" SortExpression="pertemuan" />
               <asp:BoundField DataField="tanggal" HeaderText="Tanggal" SortExpression="tanggal" />
               <asp:BoundField DataField="waktu_mulai" HeaderText="Waktu Mulai" SortExpression="waktu_mulai" />
               <asp:BoundField DataField="waktu_selesai" HeaderText="Waktu Selesai" SortExpression="waktu_selesai" />
               <asp:BoundField DataField="tempat" HeaderText="Tempat" SortExpression="tempat" />
               <asp:BoundField DataField="materi" HeaderText="Materi" SortExpression="materi" />
               <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
               <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
           </Columns>
           <FooterStyle BackColor="#CCCCCC" />
           <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
           <RowStyle BackColor="White" />
           <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#808080" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#383838" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Jadwal] WHERE [id_jadwal] = @id_jadwal" InsertCommand="INSERT INTO [Jadwal] ([nama_kelompok], [pertemuan], [tanggal], [waktu_mulai], [waktu_selesai], [tempat], [materi], [nama], [status]) VALUES (@nama_kelompok, @pertemuan, @tanggal, @waktu_mulai, @waktu_selesai, @tempat, @materi, @nama, @status)" SelectCommand="SELECT * FROM [Jadwal]" UpdateCommand="UPDATE [Jadwal] SET [nama_kelompok] = @nama_kelompok, [pertemuan] = @pertemuan, [tanggal] = @tanggal, [waktu_mulai] = @waktu_mulai, [waktu_selesai] = @waktu_selesai, [tempat] = @tempat, [materi] = @materi, [nama] = @nama, [status] = @status WHERE [id_jadwal] = @id_jadwal">
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

