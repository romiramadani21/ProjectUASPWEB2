Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class View_admin_formJadwal
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")


        Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO Jadwal(nama_kelompok,pertemuan,tanggal,waktu_mulai, waktu_selesai,tempat,materi,nama,status) VALUES ('" + txtKelompok.SelectedValue + "','" + txtPertemuan.SelectedValue + "','" + txtTanggal.Text + "','" + txtMulai.Text + "','" + txtSelesai.Text + "','" + txtTempat.Text + "','" + txtMateri.Text + "','" + txtName.SelectedValue + "','" + txtStatus.Text + "')"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("~/View/admin/jadwal.aspx")
    End Sub
End Class
