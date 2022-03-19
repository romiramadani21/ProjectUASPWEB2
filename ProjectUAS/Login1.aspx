<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login1.aspx.vb" Inherits="Login1" %>

<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head runat="server">
	<title>Login</title>
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
						<h1>Login</h1>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Username Anda !">
						<asp:Textbox class="input100" type="text" ID="username" name="username" placeholder="username" runat="server"> </asp:Textbox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">							
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
						
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Masukan Username Anda !">
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator" Display="Dynamic" runat="server" ControlToValidate="username" ErrorMessage="*Silahkan Isi Username Anda" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Password Anda !">
						<asp:TextBox ID="password" class="input100" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">						
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Masukan Password Anda !">
					 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="*Silahkan Isi Password Anda" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Masuk
						</button>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn2" type="reset">
							Batal
						</button>
					</div>

					<div class="text-center p-t-50">
						<a class="txt2" href="Registrasi.aspx">
							Klik disini untuk Registrasi
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>

					 <div class="input-container">
						 <asp:Label ID="alert" runat="server" Font-Size="0.9em"></asp:Label>
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
