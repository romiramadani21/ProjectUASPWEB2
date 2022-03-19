<%@ Page Title="" Language="VB" MasterPageFile="~/Pementor.master" AutoEventWireup="false" CodeFile="kampus.aspx.vb" Inherits="View_pementor_kampus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h4>List Kampus</h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
     <div class="container-fluid mt-5">
        </div>
    

     <main role="main">
       <div class="container-fluid mt-5">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-hover table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id_kampus" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="5px" AllowPaging="True">
           <AlternatingRowStyle BackColor="#CCCCCC" />
           <Columns>
               <asp:BoundField DataField="nama_kampus" HeaderText="Nama Kampus" SortExpression="nama_kampus" >
               <HeaderStyle HorizontalAlign="Center" />
               </asp:BoundField>
               <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" >
               <HeaderStyle HorizontalAlign="Center" />
               </asp:BoundField>
               <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
               <HeaderStyle HorizontalAlign="Center" />
               </asp:BoundField>
               <asp:BoundField DataField="no_telp" HeaderText="No.Telp" SortExpression="no_telp" >
               <HeaderStyle HorizontalAlign="Center" />
               </asp:BoundField>
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
    
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Kampus] WHERE [id_kampus] = @id_kampus" InsertCommand="INSERT INTO [Kampus] ([nama_kampus], [alamat], [email], [no_telp]) VALUES (@nama_kampus, @alamat, @email, @no_telp)" SelectCommand="SELECT * FROM [Kampus]" UpdateCommand="UPDATE [Kampus] SET [nama_kampus] = @nama_kampus, [alamat] = @alamat, [email] = @email, [no_telp] = @no_telp WHERE [id_kampus] = @id_kampus">
           <DeleteParameters>
               <asp:Parameter Name="id_kampus" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="nama_kampus" Type="String" />
               <asp:Parameter Name="alamat" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="no_telp" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="nama_kampus" Type="String" />
               <asp:Parameter Name="alamat" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="no_telp" Type="String" />
               <asp:Parameter Name="id_kampus" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       </div>
    </main>
</asp:Content>

