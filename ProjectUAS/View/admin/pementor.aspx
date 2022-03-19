<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="pementor.aspx.vb" Inherits="View_admin_pementor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
         <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Pementor</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <div class="container mt-5">
		  <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Tambah" ></asp:Button>
        </div>
      <p>
      <main role="main">
       <div class="container mt-5">
          <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_admin" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
                  <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" />
                  <asp:BoundField DataField="no_hp" HeaderText="No HP" SortExpression="no_hp" />
                  <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                  <asp:BoundField DataField="jk" HeaderText="Jenis Kelamin" SortExpression="jk" />
                  <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                  <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                  <asp:BoundField DataField="level" HeaderText="Level" SortExpression="level" />
                  <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Assets/images/delete-removebg-preview.png" EditImageUrl="~/Assets/images/ed-removebg-preview.png" ShowDeleteButton="True" ShowEditButton="True" HeaderText="Aksi" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [id_admin] = @id_admin" InsertCommand="INSERT INTO [Admin] ([nama], [alamat], [no_hp], [email], [jk], [username], [password], [level]) VALUES (@nama, @alamat, @no_hp, @email, @jk, @username, @password, @level)" SelectCommand="SELECT id_admin, nama, alamat, no_hp, email, jk, username, password, level FROM Admin WHERE (id_admin &lt;&gt; 1)" UpdateCommand="UPDATE [Admin] SET [nama] = @nama, [alamat] = @alamat, [no_hp] = @no_hp, [email] = @email, [jk] = @jk, [username] = @username, [password] = @password, [level] = @level WHERE [id_admin] = @id_admin">
              <DeleteParameters>
                  <asp:Parameter Name="id_admin" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="nama" Type="String" />
                  <asp:Parameter Name="alamat" Type="String" />
                  <asp:Parameter Name="no_hp" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="jk" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="level" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nama" Type="String" />
                  <asp:Parameter Name="alamat" Type="String" />
                  <asp:Parameter Name="no_hp" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="jk" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="level" Type="String" />
                  <asp:Parameter Name="id_admin" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
        </div>
    </main>
      </p>
</asp:Content>

