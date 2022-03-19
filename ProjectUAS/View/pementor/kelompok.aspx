<%@ Page Title="" Language="VB" MasterPageFile="~/Pementor.master" AutoEventWireup="false" CodeFile="kelompok.aspx.vb" Inherits="View_pementor_kelompok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>Daftar Kelompok</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
     <div class="container mt-5">
        </div>

     
      <main role="main">
       <div class="container mt-5">
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="table table-hover table-bordered" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="id_kelompok">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
                  <asp:BoundField DataField="nama_kelompok" HeaderText="Kelompok" SortExpression="nama_kelompok" />
                  <asp:BoundField DataField="nama" HeaderText="Pementor" SortExpression="nama" />
              </Columns>
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
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

