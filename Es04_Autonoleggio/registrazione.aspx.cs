using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Es04_Autonoleggio
{
    public partial class registrazione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustValTextValidation_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 2)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
        protected void btnRegistrati_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //try
                //{
                //    string pwdCrip = db.sha256(txtPassword.Text);
                //    db.InserisciUtente(txtCognome.Text, txtNome.Text, txtDataNascita.Text, cmbComuni.SelectedValue, txtEmail.Text, pwdCrip, 'U');
                //    azzera();
                //    lblMessaggio.Text = "Utente inserito";
                //    lblErrore.Text = "";
                //}
                //catch (Exception ex)
                //{
                //    Session["errore"] = ex.Message;
                //    Response.Redirect("pagErrore.aspx");
                //}

            }
        }
    }
}