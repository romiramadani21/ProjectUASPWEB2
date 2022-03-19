Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class View_admin_formKampus
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")


        Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO Kampus(nama_kampus,alamat,email,no_telp) VALUES ('" + txtNama.Text + "','" + txtAlamat.Text + "','" + txtEmail.Text + "','" + txtNohp.Text + "')"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("~/View/admin/kampus.aspx")
    End Sub
End Class
