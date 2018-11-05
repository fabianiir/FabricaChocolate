using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FabricaChocolates.BL;

namespace FabricaChocolates
{
    public partial class catSexo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            catSexoBL catSex = new catSexoBL();
            catSex.InsertaRegistro(txtSexo.Text);
            GridView1.DataBind();

        }

        protected void DatosFuente_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}