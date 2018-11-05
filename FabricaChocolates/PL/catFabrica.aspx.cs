using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates
{
    public partial class Fabrica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            catFabricaBL catFabrica = new catFabricaBL();
            catFabrica.insertarRegistro(txtbNombre.Text, txtDireccion.Text);
            GridView1.DataBind();
        }
    }
}