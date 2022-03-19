Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class Login1
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")


        Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO Mentor(nama_mentor,username,password,prodi, no_hp,email,nama_kampus,nama_kelompok, jenis_kelamin,nama_admin) VALUES ('" + txtnama_mentor.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtprodi.Text + "','" + txtno_hp.Text + "','" + txtemail.Text + "','" + txtid_kampus.SelectedValue + "','" + txtid_kelompok.SelectedValue + "','" + txtjenis_kelamin.SelectedValue + "','" + txtid_admin.SelectedValue + "')"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("~/Login1.aspx")
    End Sub
End Class
