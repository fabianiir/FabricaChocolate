using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates
{
    public partial class AltaUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            UsuarioBL usuarioBL = new UsuarioBL();
            if (txtContraseña.Text == txtRepetir.Text)
            {
                usuarioBL.InsertarUsuario(txtUsuario.Text, txtContraseña.Text);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registro completado')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Las contraseñas no coinciden')", true);
            }
            
        }
    }
}