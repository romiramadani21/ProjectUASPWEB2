
Partial Class View_mentor_kampus
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim kampusadapter As New KampusTableAdapters.KampusTableAdapter
        Dim kampus As Kampus.KampusDataTable

        kampus = kampusadapter.GetKampus()

        For Each kampus2 As Kampus.KampusRow In kampus



        Next

    End Sub

End Class
