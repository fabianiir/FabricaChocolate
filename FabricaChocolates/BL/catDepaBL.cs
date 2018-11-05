using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class catDepaBL
    {
        public catDepaBL()
        {
        }

        public int InsertaRegistro(string sDepto, string Gerente,int Fabrica)
        {
            int iResult = 0;
            Datos AccesoDatos = new Datos();
            AccesoDatos.InsertaCatDepto(sDepto,Gerente, Fabrica);

            return iResult;
        }
    }
}