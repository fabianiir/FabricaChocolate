using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class catClientesBL
    {
        public catClientesBL()
        {
        }
       
        public void Insertarcliente(string nombre, string apellido, string RFC)
        {
            Datos datos = new Datos();
            datos.IngresarCliente(nombre, apellido, RFC);




        }
    }
}