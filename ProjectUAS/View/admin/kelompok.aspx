<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="kelompok.aspx.vb" Inherits="View_admin_kelompok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
         <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Kelompok Mentoring</h4>
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
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" DataKeyNames="id_kelompok">
              <Columns>
                  <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
                  <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Kelompok] WHERE [id_kelompok] = @id_kelompok" InsertCommand="INSERT INTO [Kelompok] ([nama_kelompok], [nama]) VALUES (@nama_kelompok, @nama)" SelectCommand="SELECT * FROM [Kelompok]" UpdateCommand="UPDATE [Kelompok] SET [nama_kelompok] = @nama_kelompok, [nama] = @nama WHERE [id_kelompok] = @id_kelompok">
              <DeleteParameters>
                  <asp:Parameter Name="id_kelompok" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="nama" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nama_kelompok" Type="String" />
                  <asp:Parameter Name="nama" Type="String" />
                  <asp:Parameter Name="id_kelompok" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
        </div>
    </main>
</asp:Content>

