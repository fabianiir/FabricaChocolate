using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class catProductosBL
    {
        public catProductosBL()
        {
        }


        public void Insertar(string nombre, string descripcion, int precio)
        {
            Datos datos = new Datos();
            datos.IngresarProducto(nombre, descripcion, precio);


        }
    }
}