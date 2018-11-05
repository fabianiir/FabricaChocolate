using FabricaChocolates.DL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FabricaChocolates.BL
{
    public class catProveedorBL
    {
        public catProveedorBL()
        {
        }

    public void InsertarProveedor(string nombre, string giro, string RFC, string Homoclave)
        {
            Datos datos = new Datos();
            datos.InsertarProveedor(nombre, giro, RFC, Homoclave);
        }
    }
}