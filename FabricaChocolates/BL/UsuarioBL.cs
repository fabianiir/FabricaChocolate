using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FabricaChocolates.DL;

namespace FabricaChocolates.BL
{
    public class UsuarioBL
    {
        Datos dtUsuario = new Datos();
        public UsuarioBL()
        {
        }

        public int AutenticarUsuario(string usuario, string pass)
        {
           
            int i=dtUsuario.LoginUsuario(usuario, pass);
            
                       
            return i;
        }
        public void InsertarUsuario(string nombre, string pass)
        {
            dtUsuario.IngresarUsuario(nombre, pass);
         
        
        }
    }
}