Imports System.Data
Imports System.Data.SqlClient
Partial Class View_admin_formBerita
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strjudul As String = txtJudul.Text.ToString()
        Dim strIsi As String = txtDes.Text.ToString()
        Dim strTanggal As String = txtTanggal.Text.ToString()


        If FileUpload1.PostedFile IsNot Nothing AndAlso
            FileUpload1.PostedFile.FileName <> " " Then

            Dim imageSize As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}
            Dim uploadImage_1 As HttpPostedFile = FileUpload1.PostedFile()

            uploadImage_1.InputStream.Read(imageSize, 0, CInt(FileUpload1.PostedFile.ContentLength))

            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand

            con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")

            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO berita(judul, deskripsi, tanggal, poster) VALUES (@judul, @deskripsi, @tanggal, @poster)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con


            Dim judul As New SqlParameter("@judul", SqlDbType.VarChar)
            judul.Value = strjudul.ToString()
            cmd.Parameters.Add(judul)

            Dim isi As New SqlParameter("@deskripsi", SqlDbType.VarChar)
            isi.Value = strIsi.ToString()
            cmd.Parameters.Add(isi)

            Dim tanggal As New SqlParameter("@tanggal", SqlDbType.VarChar)
            tanggal.Value = strTanggal.ToString()
            cmd.Parameters.Add(tanggal)


            Dim UploadedImage As New SqlParameter("@poster", SqlDbType.Image, imageSize.Length)
            UploadedImage.Value = imageSize
            cmd.Parameters.Add(UploadedImage)
            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
            If result > 0 Then
                Label2.Text = "File Uploaded"
            End If
            GridView1.DataBind()
        End If

    End Sub
End Class
