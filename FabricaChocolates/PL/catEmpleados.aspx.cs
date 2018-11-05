using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates
{
    public partial class catEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            catEmpleadoBL obtener = new catEmpleadoBL();
            obtener.Insertaregistro(txtNombre.Text, txtApellido.Text, Convert.ToInt32(txtEdad.Text), txtDireccion.Text, lstDepto.SelectedIndex, lstSexo.SelectedIndex);
            GridView1.DataBind();

        }

        protected void ASPxComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lstDepto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}