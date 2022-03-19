<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="mentor.aspx.vb" Inherits="View_admin_mentor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     
         <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Daftar Mentor</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
      <main role="main">
       <div class="container-fluid col-md-12">
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White"  class="table table-hover table-bordered" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_mentor" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="nama_mentor" HeaderText="Nama Mentor" SortExpression="nama_mentor" />
                  <asp:BoundField DataField="prodi" HeaderText="Prodi" SortExpression="prodi" />
                  <asp:BoundField DataField="no_hp" HeaderText="No HP" SortExpression="no_hp" />
                  <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                  <asp:BoundField DataField="nama_kampus" HeaderText="Kampus" SortExpression="nama_kampus" />
                  <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
                  <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" />
                  <asp:BoundField DataField="nama_admin" HeaderText="Pementor" SortExpression="nama_admin" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Mentor] WHERE [id_mentor] = @id_mentor" InsertCommand="INSERT INTO [Mentor] ([nama_mentor], [username], [password], [prodi], [no_hp], [email], [nama_kampus], [nama_kelompok], [jenis_kelamin], [nama_admin]) VALUES (@nama_mentor, @username, @password, @prodi, @no_hp, @email, @nama_kampus, @nama_kelompok, @jenis_kelamin, @nama_admin)" SelectCommand="SELECT * FROM [Mentor]" UpdateCommand="UPDATE [Mentor] SET [nama_mentor] = @nama_mentor, [username] = @username, [password] = @password, [prodi] = @prodi, [no_hp] = @no_hp, [email] = @email, [nama_kampus] = @nama_kampus, [nama_kelompok] = @nama_kelompok, [jenis_kelamin] = @jenis_kelamin, [nama_admin] = @nama_admin WHERE [id_mentor] = @id_mentor">
              <DeleteParameters>
                  <asp:Parameter Name="id_mentor" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="nama_mentor" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="prodi" Type="String" />
                  <asp:Parameter Name="no_hp" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="nama_kampus" Type="String" />
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="jenis_kelamin" Type="String" />
                  <asp:Parameter Name="nama_admin" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nama_mentor" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="prodi" Type="String" />
                  <asp:Parameter Name="no_hp" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="nama_kampus" Type="String" />
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="jenis_kelamin" Type="String" />
                  <asp:Parameter Name="nama_admin" Type="String" />
                  <asp:Parameter Name="id_mentor" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
   
    </div>
   </main>
</asp:Content>

