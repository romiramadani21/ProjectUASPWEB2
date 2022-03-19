Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class View_admin_kampus
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/View/admin/formKampus.aspx")
    End Sub


End Class
