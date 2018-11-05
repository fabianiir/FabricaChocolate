using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;


namespace FabricaChocolates.BL
{
    public class catFabricaBL
    {
        public catFabricaBL()
        {
        }

        public void insertarRegistro(string Nombre, string Direccion)
        {
            Datos AccesoDatos = new Datos();
            AccesoDatos.InsertaCatFabrica(Nombre, Direccion);
        }
    }
}