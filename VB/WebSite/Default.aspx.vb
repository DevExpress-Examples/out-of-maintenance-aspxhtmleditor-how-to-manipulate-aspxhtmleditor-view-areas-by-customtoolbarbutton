Imports System

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If (Not IsPostBack) AndAlso (Not IsCallback) Then
            Session("ViewVisible") = False
        End If
    If Session("ViewVisible") IsNot Nothing Then
            htmlEditor.Settings.AllowHtmlView = DirectCast(Session("ViewVisible"), Boolean)
            htmlEditor.Settings.AllowPreview = DirectCast(Session("ViewVisible"), Boolean)
    End If
    End Sub

    Protected Sub cp_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
        If e.Parameter = "opened" Then
            htmlEditor.Settings.AllowHtmlView = True
            htmlEditor.Settings.AllowPreview = True
            Session("ViewVisible") = True
        End If
        If e.Parameter = "closed" Then
            htmlEditor.Settings.AllowHtmlView = False
            htmlEditor.Settings.AllowPreview = False
            Session("ViewVisible") = False
        End If
    End Sub
End Class