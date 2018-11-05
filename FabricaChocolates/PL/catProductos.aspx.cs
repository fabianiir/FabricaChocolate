using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates.PL
{
    public partial class catProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            catProductosBL catProductos = new catProductosBL();
            catProductos.Insertar(txtNombre.Text, txtDescripcion.Text, Convert.ToInt32(txtPrecio.Text));
            ASPxGridView1.DataBind();
           

        }
    }
}