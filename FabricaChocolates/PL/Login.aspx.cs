using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSesion_Click(object sender, EventArgs e)
        {
            UsuarioBL validar = new UsuarioBL();
            int i=validar.AutenticarUsuario(txtbUsuario.Text,txtbPassword.Text);
            if (i == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Usuario Correcto')", true);
                Server.Transfer("catEmpleados.aspx", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Usuario o Contraseña incorrecta ')", true);
            }
        }
    }
}