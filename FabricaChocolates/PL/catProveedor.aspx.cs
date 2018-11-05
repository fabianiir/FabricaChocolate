using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates.PL
{
    public partial class catProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            catProveedorBL proveedorBL = new catProveedorBL();
            proveedorBL.InsertarProveedor(txtNombre.Text,txtGiro.Text,txtRFC.Text,txtHomoclave.Text);
            ASPxGridView1.DataBind();

        }
    }
}