<%@ Page Title="" Language="VB" MasterPageFile="~/Mentor.master" AutoEventWireup="false" CodeFile="berita.aspx.vb" Inherits="View_mentor_berita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Berita Islami</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->

  <main role="main">
   <div class="container mt-5">
    <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_berita" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="judul" HeaderText="Judul" SortExpression="judul" />
            <asp:BoundField DataField="deskripsi" HeaderText="Deskripsi" SortExpression="deskripsi" />
            <asp:BoundField DataField="tanggal" HeaderText="Tanggal" SortExpression="tanggal" />
            <asp:TemplateField HeaderText="Poster">
                   <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" height="100px" Width="100" ImageUrl='<%#Eval("id_berita", "Handler2.ashx?id_berita={0}")+"&img=1"%>'/>
                    </ItemTemplate>
                    </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Assets/images/det.png" />
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
   </div>
  </main>
</asp:Content>

