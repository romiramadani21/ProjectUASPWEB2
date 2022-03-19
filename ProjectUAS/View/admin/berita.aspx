<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="berita.aspx.vb" Inherits="View_admin_berita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">  
         <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>List Berita</h4>
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
          <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_berita" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="judul" HeaderText="Judul" SortExpression="judul" />
                  <asp:BoundField DataField="deskripsi" HeaderText="Deskripsi" SortExpression="deskripsi" />
                  <asp:BoundField DataField="tanggal" HeaderText="Tanggal" SortExpression="tanggal" />
                  <asp:TemplateField HeaderText="Poster">
                   <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" height="100px" Width="100" ImageUrl='<%#Eval("id_berita", "Handler2.ashx?id_berita={0}")+"&img=1"%>'/>
                    </ItemTemplate>
                    </asp:TemplateField>
                  <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Assets/images/delete-removebg-preview.png" EditImageUrl="~/Assets/images/ed-removebg-preview.png" ShowDeleteButton="True" HeaderText="Aksi" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Berita] WHERE [id_berita] = @id_berita" InsertCommand="INSERT INTO [Berita] ([judul], [deskripsi], [tanggal], [poster]) VALUES (@judul, @deskripsi, @tanggal, @poster)" SelectCommand="SELECT * FROM [Berita]" UpdateCommand="UPDATE [Berita] SET [judul] = @judul, [deskripsi] = @deskripsi, [tanggal] = @tanggal, [poster] = @poster WHERE [id_berita] = @id_berita">
              <DeleteParameters>
                  <asp:Parameter Name="id_berita" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="judul" Type="String" />
                  <asp:Parameter Name="deskripsi" Type="String" />
                  <asp:Parameter DbType="Date" Name="tanggal" />
                  <asp:Parameter Name="poster" Type="Object" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="judul" Type="String" />
                  <asp:Parameter Name="deskripsi" Type="String" />
                  <asp:Parameter DbType="Date" Name="tanggal" />
                  <asp:Parameter Name="poster" Type="Object" />
                  <asp:Parameter Name="id_berita" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
       <!--End Form-->
       </div>
    </main>
</asp:Content>

