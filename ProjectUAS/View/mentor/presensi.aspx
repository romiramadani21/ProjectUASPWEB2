<%@ Page Title="" Language="VB" MasterPageFile="~/Mentor.master" AutoEventWireup="false" CodeFile="presensi.aspx.vb" Inherits="View_mentor_presensi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
     
  <main role="main">
   <div class="container mt-5">
    <asp:GridView ID="GridView1" runat="server"  class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_presensi" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="nama_mentor" HeaderText="Nama Mentor" SortExpression="nama_mentor" />
            <asp:BoundField DataField="pertemuan" HeaderText="Pertemuan" SortExpression="pertemuan" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
            <asp:BoundField DataField="keterangan" HeaderText="Keterangan" SortExpression="keterangan" />
            <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Presensi] WHERE [id_presensi] = @id_presensi" InsertCommand="INSERT INTO [Presensi] ([nama_mentor], [pertemuan], [status], [nama], [keterangan], [nama_kelompok]) VALUES (@nama_mentor, @pertemuan, @status, @nama, @keterangan, @nama_kelompok)" SelectCommand="SELECT * FROM [Presensi]" UpdateCommand="UPDATE [Presensi] SET [nama_mentor] = @nama_mentor, [pertemuan] = @pertemuan, [status] = @status, [nama] = @nama, [keterangan] = @keterangan, [nama_kelompok] = @nama_kelompok WHERE [id_presensi] = @id_presensi">
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

