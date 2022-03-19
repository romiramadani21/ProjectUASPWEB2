<%@ WebHandler Language="VB" Class="Handler2" %>

Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class Handler2 : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand()

        con.ConnectionString = ("Data source=DESKTOP-846EVEK\SQLEXPRESS; Initial Catalog=mentoring; Trusted_connection=yes")

        con.Open()

        cmd.CommandText = "Select poster from Berita where id_berita = @id_berita"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con

        Dim ImageID As New SqlParameter("@id_berita", System.Data.SqlDbType.Int)
        ImageID.Value = context.Request.QueryString("id_berita")
        cmd.Parameters.Add(ImageID)
        Dim dReader As SqlDataReader = cmd.ExecuteReader()
        dReader.Read()
        context.Response.BinaryWrite(DirectCast(dReader("poster"), Byte()))
        dReader.Close()
        con.Close()


    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class