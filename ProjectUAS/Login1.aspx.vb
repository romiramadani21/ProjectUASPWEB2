Imports System.Web.Configuration
Imports System.Data.SqlClient
Imports System.Data
Imports System.Data.SqlClient.SqlDataReader
Partial Class Login1
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As String = username.Text
        Dim pass As String = password.Text

        Dim cmd As SqlCommand
        Dim rdr As SqlDataReader
        Dim sqlUserName As String

        If username.Text <> "" And password.Text <> "" Then
            Dim con As New SqlConnection
            con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")


            Dim Conn As New SqlConnection(con.ConnectionString)
            Conn.Open()

            sqlUserName = "SELECT * FROM [Mentor] WHERE [username] = '" + username.Text + "' AND [password] = '" + password.Text + "'"
            cmd = New SqlCommand(sqlUserName, Conn)

            rdr = cmd.ExecuteReader()

            If rdr.HasRows = True Then
                Session("user") = user
                Response.Redirect("~/View/mentor/beranda.aspx")
            Else
                alert.Text = "<i>Username atau Password Anda salah !</i>"
                Session("user") = ""
            End If
            rdr.Close()
            cmd.Dispose()
        Else
            alert.Text = "<i>Silahkan Isi Username atau Password Anda !</i>"
        End If
    End Sub
End Class
