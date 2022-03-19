<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registrasi.aspx.vb" Inherits="Login1" %>

<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head runat="server">
	<title>Registrasi</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="~/Assets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="~/Assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="~/Assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="~/Assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="~/Assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="~/Assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="~/Assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="~/Assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			

				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						<h4>Registrasi</h4>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Nama Anda !">
						<asp:Textbox class="input100" type="text" ID="txtnama_mentor" placeholder="Nama Lengkap" runat="server"> </asp:Textbox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Username Anda !">
						<asp:Textbox class="input100" type="text" ID="txtusername" placeholder="Username" runat="server"> </asp:Textbox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Password Anda !">
						<asp:TextBox ID="txtpassword" class="input100" type="text" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan No HP Anda !">
						<asp:TextBox ID="txtprodi" class="input100" type="text" runat="server" placeholder="Prodi"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Masukan No HP Anda !">
						<asp:TextBox ID="txtno_hp" class="input100" type="text" runat="server" placeholder="No HP"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Email Anda !">
						<asp:TextBox ID="txtemail" class="input100" type="text" runat="server" placeholder="Email"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Kampus Anda !">
						<asp:DropDownList ID="txtid_kampus" class="input100" runat="server" 
							 DataSourceID="SqlDataSource5" DataTextField="nama_kampus" 
							 DataValueField="nama_kampus">
						 </asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama_kampus] FROM [Kampus]"></asp:SqlDataSource>
						<span class="focus-input100"></span>	
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Nama kelompok Anda !">
						<asp:DropDownList ID="txtid_kelompok" class="input100" runat="server" 
							 DataSourceID="SqlDataSource7" DataTextField="nama_kelompok" 
							 DataValueField="nama_kelompok">
						 </asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama_kelompok] FROM [Kelompok]"></asp:SqlDataSource>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Jenis Kelamin !">
						<asp:DropDownList ID="txtjenis_kelamin" class="input100" runat="server">
                                        <asp:ListItem>Jenis Kelamin</asp:ListItem>
                                        <asp:ListItem>Laki-laki</asp:ListItem>
                                        <asp:ListItem>Perempuan</asp:ListItem></asp:DropDownList>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Nama kelompok Anda !">
						<asp:DropDownList ID="txtid_admin" class="input100" runat="server" 
							 DataSourceID="SqlDataSource1" DataTextField="nama" 
							 DataValueField="nama">
						 </asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" SelectCommand="SELECT [nama] FROM [Admin] WHERE [id_admin] != 1"></asp:SqlDataSource>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-check" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">						
						<asp:Button ID="Button1" class="login100-form-btn" runat="server" Text="Simpan" />
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn2" type="reset">
							Batal</button>
					</div>

					<div class="text-center p-t-50">
						<a class="txt2" href="Login1.aspx">
							Klik disini untuk kembali ke LOGIN
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>

					 <div class="input-container">
						 <asp:Label ID="alert" runat="server" Font-Size="0.9em"></asp:Label>
					     <br />
                         <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:mentoringConnectionString %>" DeleteCommand="DELETE FROM [Mentor] WHERE [id_mentor] = @id_mentor" InsertCommand="INSERT INTO [Mentor] ([nama_mentor], [username], [password], [prodi], [no_hp], [email], [id_kampus], [id_kelompok], [jenis_kelamin], [id_admin]) VALUES (@nama_mentor, @username, @password, @prodi, @no_hp, @email, @id_kampus, @id_kelompok, @jenis_kelamin, @id_admin)" SelectCommand="SELECT * FROM [Mentor]" UpdateCommand="UPDATE [Mentor] SET [nama_mentor] = @nama_mentor, [username] = @username, [password] = @password, [prodi] = @prodi, [no_hp] = @no_hp, [email] = @email, [id_kampus] = @id_kampus, [id_kelompok] = @id_kelompok, [jenis_kelamin] = @jenis_kelamin, [id_admin] = @id_admin WHERE [id_mentor] = @id_mentor">
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
                                 <asp:Parameter Name="id_kampus" Type="Int32" />
                                 <asp:Parameter Name="id_kelompok" Type="Int32" />
                                 <asp:Parameter Name="jenis_kelamin" Type="String" />
                                 <asp:Parameter Name="id_admin" Type="Int32" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="nama_mentor" Type="String" />
                                 <asp:Parameter Name="username" Type="String" />
                                 <asp:Parameter Name="password" Type="String" />
                                 <asp:Parameter Name="prodi" Type="String" />
                                 <asp:Parameter Name="no_hp" Type="String" />
                                 <asp:Parameter Name="email" Type="String" />
                                 <asp:Parameter Name="id_kampus" Type="Int32" />
                                 <asp:Parameter Name="id_kelompok" Type="Int32" />
                                 <asp:Parameter Name="jenis_kelamin" Type="String" />
                                 <asp:Parameter Name="id_admin" Type="Int32" />
                                 <asp:Parameter Name="id_mentor" Type="Int32" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
					  </div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="~/Assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="~/Assets/vendor/bootstrap/js/popper.js"></script>
	<script src="~/Assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="~/Assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="~/Assets/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="~/Assets/js2/main.js"></script>

	

</body>
</html>

