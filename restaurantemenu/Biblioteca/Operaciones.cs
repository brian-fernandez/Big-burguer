using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Biblioteca
{
    public class Operaciones
    {
        public bool registrarclientes(string ci, string nombre, string apellidop, string apellidom, string correo, string fecha, string telefono, string contraseña, string idvivienda)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "Insert into Cliente values(" + ci + ",'" + nombre + "','" + apellidop + "','" + apellidom + "','" + correo + "','" + fecha + "'," + telefono + ",'" + contraseña + "'," + idvivienda + ")";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool verificar_login_Personal(string id, string contraseña)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Personal WHERE ci='" + id + "'AND Contraseña='" + contraseña + "' AND estado = 'habilitado' ";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool verificar_login_Cliente(string id, string contraseña)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Cliente WHERE ci='" + id + "'AND contraseña='" + contraseña + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }



        public bool cambiar_contraseña_Personal(string id, string contra)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE Personal SET Contraseña='" + contra + "' WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }

        public bool habilitarcargo(string nombre)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE Cargo SET disponibilidad='disponible' WHERE nombreCargo='" + nombre + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }
        public bool cambiar_contraseña_cliente(string id, string contra)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE Cliente SET contraseña='" + contra + "' WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }







        public bool verificar_carnet_Personal(string id)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Personal WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool verificar_carnet_Cliente(string id)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Cliente WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }


        public bool verificar_correo_Personal(string id, string correo)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Personal WHERE ci='" + id + "' AND correo='" + correo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool verificar_correo_Cliente(string id, string correo)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Cliente WHERE ci='" + id + "' AND correo='" + correo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }


        public bool verificar_correo_Personal_registro(string correo)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Personal WHERE  correo='" + correo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool verificar_correo_Cliente_registro(string correo)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT * FROM Cliente WHERE correo='" + correo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }




        // verificar numero


        public bool verificar_numero_Cliente(string numero)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT telefono FROM Cliente WHERE telefono='" + numero + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool verificar_numero_personal(string numero)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT telefono FROM Personal WHERE telefono='" + numero + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }
        // registro vivenda personal/cliente

        public bool registrarvivienda(string numero_casa, string calle, string descrip)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "Insert into vivienda values('" + numero_casa + "','" + calle + "','" + descrip + "')";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }







        public string obtener_id_vivienda(string numero_casa, string calle, string descrip)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT idVivienda FROM vivienda WHERE numeroCasa='" + numero_casa + "'AND calle='" + calle + "'AND descripción='" + descrip + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }












        // Registro de personal

        public bool registrarpersonal(string ci, string nombre, string apellidop, string apellidom, string contraseña, string id_cargo, string telefono, string correo)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "Insert into Personal values('" + ci + "','" + nombre + "','" + apellidop + "','" + apellidom + "','" + contraseña + "','" + id_cargo + "','" + telefono + "','" + correo + "')";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool registrarcliente(string ci, string nombre, string apellidop, string apellidom, string correo, string fecha, string telefono, string contraseña, string idvivienda)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "Insert into Cliente values('" + ci + "','" + nombre + "','" + apellidop + "','" + apellidom + "','" + correo + "','" + fecha + "','" + telefono + "','" + contraseña + "','" + idvivienda + "')";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }
       

   public bool actualizarcliente_opciones(string ci, string nombre, string apellidop, string apellidom, string correo, string telefono)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "update Cliente  set nombre = '"+nombre+"', apellidoPaterno = '"+apellidop+"', apellidoMaterno = '"+apellidom+"' , telefono='"+telefono+"',correo='"+correo+"' where ci = '"+ci+"';";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public string obtener_id_vivienda_con_ci(string ci)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT idVivienda FROM cliente WHERE ci='" + ci + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }

        public bool actualizarvivienda_id(string numero, string calle, string descrip, string id)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "update vivienda  set numeroCasa = '" + numero + "', calle = '" + calle + "', descripción = '" + descrip + "' where idVivienda='"+id+"'" ;
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool actualizarpersonal_opciones(string ci, string nombre, string apellidop, string apellidom, string correo, string telefono)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "update Personal  set nombre = '" + nombre + "', apellidoPaterno = '" + apellidop + "', apellidoMaterno = '" + apellidom + "' , telefono='" + telefono + "',correo='" + correo + "' where ci = '" + ci + "';";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }
        }


        public string obtener_id_cargo(string nombrecrago)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT idCargo FROM Cargo WHERE nombreCargo='" + nombrecrago + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }


        public bool añadircargo_usario(string cargo)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE  Cargo SET disponibilidad = 'ocupado' where idCargo = '" + cargo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }



        //obtener datos del cliente


        public string obtener_nombre_Cliente(string id_usuario)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT nombre FROM Cliente WHERE ci='" + id_usuario + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }


        public bool verificar_numero_cliente_con_id(string id, string numero)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT telefono FROM Cliente WHERE ci='" + id + "' and telefono='" + numero + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool verificar_numero_personal_con_id(string id, string numero)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT telefono FROM Personal WHERE ci='" + id + "' and telefono='" + numero + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }

        //obtener datos del cliente


        public string obtener_nombre_Personal(string id_usuario)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT nombre FROM Personal WHERE ci='" + id_usuario + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }


        public string obtener_nombre_Apellido_Personal(string id_usuario)
        {
            Conexion cn = new Conexion();



            string sql = "SELECT apellidoPaterno FROM Personal WHERE ci='" + id_usuario + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }
        public string obtener_nombre_cargo(string id_usuario)
        {
            Conexion cn = new Conexion();



            string sql = "select c.nombreCargo from cargo c join Personal p on (c.idCargo = p.idCargo) where ci='" + id_usuario + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }


        /*cargos*/

        public bool actualizar_dato_personal_sin_cargo(string id, string nombre, string apellidop, string apellidom, string email, string telefono)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE Personal SET nombre='" + nombre + "',apellidoPaterno = '" + apellidop + "',apellidoMaterno='" + apellidom + "',correo='" + email + "',telefono='" + telefono + "' WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }

        public bool actualizar_dato_personal_con_cargo(string id, string nombre, string apellidop, string apellidom, string email, string telefono, string cargo)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE Personal SET nombre='" + nombre + "',apellidoPaterno = '" + apellidop + "',apellidoMaterno='" + apellidom + "',correo='" + email + "',telefono='" + telefono + "',idCargo='" + cargo + "' WHERE ci='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }

        public bool añadircargo_usario_disponible(string cargo)
        {
            Conexion cn = new Conexion();


            try
            {

                string sql = "UPDATE  Cargo SET disponibilidad = 'disponible' where idCargo = '" + cargo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch
            {
                return false;
            }
        }


        /* obtener columnas*/


        public string Compras_realizadas(string carnet)
        {
            Conexion cn = new Conexion();



            string sql = "select count(c.ci) as 'Cantidad de compras realizadas' , c.ci from Venta v join cliente c on (v.idCliente = c.ci)where  c.ci =  '"+carnet+"'group by(c.ci)";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;


        }

        /*Mollo*/

        public string obtener_usuario_correo(string usuario_correo)
        {
            Conexion cn = new Conexion();
            string sql = "SELECT LOWER(nombre+SUBSTRING(apellidoPaterno, 1,1)+SUBSTRING(apellidoMaterno, 1,1)+'@gmail.com') from cliente where ci='" + usuario_correo + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;
        }

   

        public bool añadircargo(string cargo)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "UPDATE Cargo SET disponibilidad = 'ocupado' where idCargo='" + cargo + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        /*KEVIN*/
       
        public string registrarVenta(string costoTotal, int idUsuario, int idCliente, string Fecha, string tipo, string estado, string desc)
        {
            Conexion cn = new Conexion();
            try
            {
                
                string sql = "Insert into Venta values('" + costoTotal + "','" + idUsuario + "','" + idCliente + "','" + Fecha + "','" + tipo + "','"+estado+"','" + desc + "')";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                string a = Convert.ToString(cmd.ExecuteScalar());
                if(a==null)
                {
                    a = "error";
                }
                return a;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public string get_id_venta()
        {
            Conexion cn = new Conexion();


            string sql = "SELECT TOP 1 id FROM Venta ORDER BY id DESC";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            
            return a;

        }

        public bool habilitarproducto(string idmenu)
        {
            try
            {
                Conexion cn = new Conexion();

                string sql = "update Menu set estado='stock' where idPlato='" + idmenu + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false; ;
            }



        }


        public string obtener_usuario_pass(string usuario_pass)
        {
            Conexion cn = new Conexion();
            string sql = "SELECT SUBSTRING(nombre, 1,3)+SUBSTRING(apellidoPaterno, 1,1)+SUBSTRING(apellidoMaterno, 1,1)+SUBSTRING(CONVERT(VARCHAR,ci), 1,1) FROM Cliente where ci='" + usuario_pass + "'";
            SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
            string a = Convert.ToString(cmd.ExecuteScalar());
            return a;
        }

        public bool inhabilitarproducto(string idmenu)
        {

            try
            {
                Conexion cn = new Conexion();

                string sql = "update Menu set estado='nostock' where idPlato='" + idmenu + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }

        }

        public bool inhabilitarpersonal(string idmenu)
        {

            try
            {
                Conexion cn = new Conexion();

                string sql = "update Personal set estado='inhabilitado' where ci='" + idmenu + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }

        }


        public bool confirmarpedido(string idmenu)
        {

            try
            {
                Conexion cn = new Conexion();

                string sql = "update Venta set estado='Atendido' where id='" + idmenu + "'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {

                return false;
            }

        }



        /*Habilitar producto*/



        public bool plato1(string id)
        {
            Conexion cn = new Conexion();
            try
            {

                string sql = "SELECT  * FROM Menu WHERE idPlato='" + id + "' and estado ='nostock'";
                SqlCommand cmd = new SqlCommand(sql, cn.getConexion());
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return (a > 0);
            }
            catch (Exception)
            {

                return false;
            }
        }






    }
}
