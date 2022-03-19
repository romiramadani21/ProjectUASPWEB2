Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class View_admin_absensi
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("~/View/admin/formAbsensi.aspx")
    End Sub
End Class
