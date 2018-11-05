using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class catSexoBL
    {
        //Constructor
        public catSexoBL()
        {

        }

        public int InsertaRegistro(string sDescri)
        {
            int iResult = 0;
            Datos AccesoDatos = new Datos();
            AccesoDatos.InsertaCatSexo(sDescri);            

            return iResult;
        }


       


    }
}