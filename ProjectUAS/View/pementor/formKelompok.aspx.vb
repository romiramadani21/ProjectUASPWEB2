Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Partial Class View_pementor_formKelompok
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")


        Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO Kelompok(nama_kelompok,nama) VALUES ('" + txtKelompok.Text + "','" + txtNama.SelectedValue + "')"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("~/View/pementor/kelompok.aspx")
    End Sub
End Class
