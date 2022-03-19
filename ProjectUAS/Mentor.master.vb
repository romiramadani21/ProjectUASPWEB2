
Partial Class Mentor
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("user") = "" Then
            MsgBox("Anda Belum Login!")
            Response.Redirect("~/Login1.aspx")
        Else
            Label1.Text = Session("user").ToString()
        End If
    End Sub

    Protected Sub BtnLogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnLogOut.Click
        Session.Remove("User")
        Response.Redirect("~/Login1.aspx")
    End Sub
End Class

