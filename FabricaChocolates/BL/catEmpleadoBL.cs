using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class catEmpleadoBL
    {
        public catEmpleadoBL()
        {
        }

        public int Insertaregistro(string Nombre, string Apellido, int Edad, string Direccion, int idDepto, int idSexo)
        {
            Datos insertar = new Datos();
            insertar.InsertaCatEmpleado(Nombre, Apellido, Edad, Direccion, idDepto, idSexo);
            return 1;
        }
    }
}