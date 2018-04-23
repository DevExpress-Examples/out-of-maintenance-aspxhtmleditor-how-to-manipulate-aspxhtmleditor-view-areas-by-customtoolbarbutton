using System;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(!IsPostBack && !IsCallback)
            Session["ViewVisible"] = false;
	if(Session["ViewVisible"]!=null) {
        	htmlEditor.Settings.AllowHtmlView = (bool)Session["ViewVisible"];
        	htmlEditor.Settings.AllowPreview = (bool)Session["ViewVisible"];
	}
    }

    protected void cp_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        if(e.Parameter == "opened") {
            htmlEditor.Settings.AllowHtmlView = true;
            htmlEditor.Settings.AllowPreview = true;
            Session["ViewVisible"] = true;
        }
        if(e.Parameter == "closed") {
            htmlEditor.Settings.AllowHtmlView = false;
            htmlEditor.Settings.AllowPreview = false;
            Session["ViewVisible"] = false;
        }
    }
}