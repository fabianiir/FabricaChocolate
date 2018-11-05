using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace FabricaChocolates.DL
{
    public class Datos
    {
        //Constructor
        public Datos()
        { }

        //Conn

        SqlConnection cnxn = new SqlConnection("Data Source=.;Initial Catalog=FabricaDB;Integrated Security=True");

        //


        public int InsertaCatSexo(string sDescri)
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            int iResult = 0;
            string insert = "INSERT INTO catSexo(Descripcion) VALUES('" + sDescri + "')";

            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();


            return iResult;

        }



        public void InsertaCatDepto(string Nombre, string Gerente, int idFabrica)
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            idFabrica = idFabrica + 2;
           
            string insert = "INSERT INTO tbDepartamento(Nombre, Gerente, idFabrica) VALUES('" + Nombre + "','" + Gerente + "','" + idFabrica + "')";

            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();


          

        }

        public int InsertaCatEmpleado(string Nombre, string Apellido, int Edad, string Direccion, int idDepto, int idSexo)
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            idDepto = idDepto + 1;
            idSexo = idSexo + 1;
            int iResult = 0;
            string insert = "INSERT INTO tbEmpleado( Nombre, Apellido, Edad, Direccion, idDepartamento, Sexo) VALUES('" + Nombre + "','" + Apellido + "','" + Edad + "','" + Direccion + "','" + idDepto + "','" + idSexo + "')";
            Console.WriteLine(idDepto);
            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();


            return iResult;

        }

        public void InsertaCatFabrica(string Nombre, string Direccion)
        {
            try
            {
                cnxn.Open();

            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            string insert = "INSERT INTO tbFabrica(Nombre, Direccion ) VALUES ('"+Nombre+"', '"+Direccion+"')";
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();
        }

        public int LoginUsuario(string usuario, string pass)
        {
            int i = 0;
            try
            {
                cnxn.Open(); 

            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            SqlCommand cmd = new SqlCommand("LoginUsuario",cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name",usuario);
            cmd.Parameters.AddWithValue("@Pass", pass);
            cmd.Parameters.Add("@Result", SqlDbType.Bit).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            i = Convert.ToInt32(cmd.Parameters["@Result"].Value);


            return i;
        }
        
        public void IngresarUsuario(string usuario, string pass)
        {
            int i = 0;
            try
            {
                cnxn.Open();

            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());


            }
            SqlCommand cmd = new SqlCommand("IngresarUsuario", cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", usuario);
            cmd.Parameters.AddWithValue("@Pass", pass);
            cmd.ExecuteNonQuery();

            
        }

        public void IngresarProducto(string nombre, string descripcion, int precio )
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            
           
            string insert = "INSERT INTO tbProducto( Nombre, Descripcion, Precio) VALUES('" + nombre + "','" + descripcion + "','"+precio+"')";
           
            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();


            


        }

        public void IngresarCliente(string Nombre, string Apellido, string RFC)
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }



            string insert = "INSERT INTO tbCliente( Nombre, Apellido, RFC) VALUES('" + Nombre + "','" + Apellido + "','" +RFC + "')";

            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();


        }

        public void InsertarProveedor(string nombre, string giro, string RFC, string Homoclave)
        {
            try
            {
                cnxn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }



            string insert = "INSERT INTO tbProveedor( Nombre, Giro, RFC, HomoClave) VALUES('" + nombre + "','" + giro + "','" + RFC + "','" + Homoclave + "')";

            //CREAR INSERT
            SqlCommand cmd = new SqlCommand(insert, cnxn);

            cmd.ExecuteNonQuery();

        }

     
    }
}