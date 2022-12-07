<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function OnCustomCommand(s, e) {
            if(e.commandName == "close") {
                cp.PerformCallback("closed");
            }
            if(e.commandName == "open" || e.commandName == "new")
                if(confirm("Are you sure?"))
                cp.PerformCallback("opened");
        }    
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxCallbackPanel ID="cp" runat="server" ClientInstanceName="cp" OnCallback="cp_Callback">
        <PanelCollection>
            <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxHtmlEditor ID="htmlEditor" runat="server">
                    <ClientSideEvents CustomCommand="OnCustomCommand" />
                    <Toolbars>
                        <dx:HtmlEditorToolbar>
                            <Items>
                                <dx:CustomToolbarButton CommandName="new" Text="New">
                                </dx:CustomToolbarButton>
                                <dx:CustomToolbarButton CommandName="open" Text="Open">
                                </dx:CustomToolbarButton>
                                <dx:CustomToolbarButton CommandName="save" Text="Save">
                                </dx:CustomToolbarButton>
                                <dx:CustomToolbarButton CommandName="close" Text="Close">
                                </dx:CustomToolbarButton>
                            </Items>
                        </dx:HtmlEditorToolbar>
                    </Toolbars>
                </dx:ASPxHtmlEditor>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxCallbackPanel>
    </form>
</body>
</html>
