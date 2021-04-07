using Biblioteca;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace restaurantemenu.enlaces
{
    public partial class opciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Operaciones op = new Operaciones();


            if (!Page.IsPostBack)
            {
               


                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/enlaces/login-cliente.aspx");
                }

                else
                {
                    string ci = Request.Params["id"];

                    if (op.verificar_carnet_Cliente(ci))
                    {


                        perfil.Visible = true;
                        historial_de_compras.Visible = true;
                        lista_personal.Visible = false;
                        lista_pedidos.Visible = false;
                        buscar_cliente.Visible = false;
                        reportes_ventas.Visible = false;
                        registro_cliente.Visible = false;
                        registro_personal.Visible = false;
                        agotar_stock.Visible = false;
                        opciones1.Visible = false;
                        btsesion.Visible = false;
                        int rowIndex = 0;




                        Conexion ope = new Conexion();

                        SqlConnection dato = ope.getConexion();
                        SqlCommand cmd = dato.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "select c.ci,c.nombre,c.apellidoPaterno,c.apellidoMaterno,c.telefono,c.correo,v.numeroCasa,v.calle,v.descripción from Cliente c join vivienda v on (c.idVivienda= v.idVivienda) where c.ci = '" + ci + "'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(dt);
                        gridcliente.DataSource = dt;
                        gridcliente.DataBind();



                        GridViewRow row = gridcliente.Rows[rowIndex];
                        nombre.Text = row.Cells[1].Text;
                        apellp.Text = row.Cells[2].Text;
                        apellm.Text = row.Cells[3].Text;
                        telf.Text = row.Cells[4].Text;
                        correo.Text = row.Cells[5].Text;
                        txt_numerocasa1.Text = row.Cells[6].Text;
                        txt_calle_1.Text= row.Cells[7].Text;
                        txt_descripccion_1.Text = row.Cells[8].Text;

                        labelnombre1.Text = row.Cells[1].Text;
                        labelapellidop1.Text = row.Cells[2].Text;
                        labelapellidom1.Text = row.Cells[3].Text;
                        labeltelefono1.Text = row.Cells[4].Text;
                        labelcorreo1.Text = row.Cells[5].Text;
                        labelnumerocasa1.Text = row.Cells[6].Text;
                        labelcalle1.Text = row.Cells[7].Text;
                        labeldescripccion1.Text = row.Cells[8].Text;




                    }
                    else
                    {
                        if (op.verificar_carnet_Personal(ci))
                        {



                            string nombrecargo = op.obtener_nombre_cargo(ci);


                            if(nombrecargo == "Administrador")
                            {
                                perfil.Visible = true;
                                lista_personal.Visible = true;
                                reportes_ventas.Visible = true;
                                registro_cliente.Visible = true;
                                registro_personal.Visible = true;
                                agotar_stock.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;
                            }
                            if (nombrecargo == "Administrador2")
                            {
                                perfil.Visible = true;
                                lista_personal.Visible = true;
                                reportes_ventas.Visible = true;
                                registro_cliente.Visible = true;
                                registro_personal.Visible = true;
                                agotar_stock.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;
                            }
                            if (nombrecargo == "Recepcionista")
                            {
                                perfil.Visible = true;
                                lista_pedidos.Visible = true;
                                buscar_cliente.Visible = true;
                                registro_cliente.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;

                            }
                            if (nombrecargo == "Recepcionista2")
                            {
                                perfil.Visible = true;
                                lista_pedidos.Visible = true;
                                buscar_cliente.Visible = true;
                                registro_cliente.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;

                            }
                            if (nombrecargo == "Recepcionista3")
                            {
                                perfil.Visible = true;
                                lista_pedidos.Visible = true;
                                buscar_cliente.Visible = true;
                                registro_cliente.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;

                            }

                            if (nombrecargo == "delivery")
                            {
                                perfil.Visible = true;
                                opciones1.Visible = false;
                                btsesion.Visible = false;

                            }


                            /*Tabs*/


                            


                            /*Fin tabs*/


                            labelnucasa.Visible = false;
                            labelcalle.Visible = false;
                            labeldescrip.Visible = false;


                            int rowIndex = 0;

                           


                            Conexion ope = new Conexion();

                            SqlConnection dato = ope.getConexion();
                            SqlCommand cmd = dato.CreateCommand();
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "select nombre,apellidoPaterno,apellidoMaterno,telefono,correo from Personal  where ci = '"+ci+"'";
                            cmd.ExecuteNonQuery();
                            DataTable dt = new DataTable();
                            SqlDataAdapter da = new SqlDataAdapter(cmd);
                            da.Fill(dt);
                            gridcliente.DataSource = dt;
                            gridcliente.DataBind();

                            

                            GridViewRow row = gridcliente.Rows[rowIndex];
                            nombre.Text = row.Cells[0].Text;
                            apellp.Text = row.Cells[1].Text;
                            apellm.Text = row.Cells[2].Text;
                            telf.Text = row.Cells[3].Text;
                            correo.Text = row.Cells[4].Text;

                            labelnombre1.Text = row.Cells[0].Text;
                            labelapellidop1.Text = row.Cells[1].Text;
                            labelapellidom1.Text = row.Cells[2].Text;
                            labeltelefono1.Text = row.Cells[3].Text;
                            labelcorreo1.Text = row.Cells[4].Text;





                            labelnumerocasa1.Visible = false;
                            labeldescripccion1.Visible = false;
                            labelcalle1.Visible = false;

                            s6.Visible = false;
                            s7.Visible = false;
                            s8.Visible = false;


                            txt_numerocasa1.Visible = false;
                            txt_calle_1.Visible = false;
                            txt_descripccion_1.Visible = false;


                        }
                    }
                  
                }


            }




        }

       

        protected void perfil_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = true;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;



        }

        protected void historial_de_compras_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = true;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;

            string ci = Request.Params["id"];


            Conexion op = new Conexion();

            SqlConnection dato = op.getConexion();

            SqlCommand cmd = dato.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select v.id as 'Numero de Compra', v.costoTotal, v.fechaVenta from Cliente c join Venta v on (c.ci=v.idCliente)  where c.ci = '" + ci + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridhistorial.DataSource = dt;
            gridhistorial.DataBind();
            dato.Close();









        }

        protected void detallelista_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            edit.Visible = false;
            cancelar.Visible = true;
            guardar.Visible = true;

            nombre.Enabled = true;
            apellp.Enabled = true;
            apellm.Enabled = true;
            telf.Enabled = true;
            correo.Enabled = true;
            txt_numerocasa1.Enabled = true;
            txt_calle_1.Enabled = true;
            txt_descripccion_1.Enabled = true;
            panelestatico.Visible = false;
            paneldidacticoperfil.Visible = true;
        }

        protected void cancelar_Click(object sender, EventArgs e)
        {
            string ci = Request.Params["id"];
            Response.Redirect("~/enlaces/opciones.aspx?id="+ci);
        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            string id = Request.Params["id"];

            Operaciones op = new Operaciones();
          string nom =   nombre.Text;
          string apellidop =   apellp.Text;
          string apellidom =   apellm.Text;
          string telefono =   telf.Text;
          string email =   correo.Text;
            string numerocasa = txt_numerocasa1.Text;
            string calle = txt_calle_1.Text;
            string descrip = txt_descripccion_1.Text;
             int rowIndex = 0;

          


            if (op.verificar_carnet_Cliente(id))
            {
                if (IsValid)
                {
                    if (op.verificar_correo_Cliente(id, email))
                    {

                        if (op.verificar_numero_cliente_con_id(id, telefono))
                        {
                            if (op.actualizarcliente_opciones(id, nom, apellidop, apellidom, email, telefono))
                            {
                                string id_vivienda = op.obtener_id_vivienda_con_ci(id);
                                op.actualizarvivienda_id(numerocasa, calle, descrip, id_vivienda);
                                MessageBox.Show("cambiado");

                                Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                            }
                            else
                            {
                                MessageBox.Show("error");
                            }
                        }
                        else
                        {
                            if (op.verificar_numero_Cliente(telefono) || op.verificar_numero_personal(telefono))
                            {
                                l1.Visible = true;
                                l1.Text = "El numero ya esta registrado";
                            }
                            else
                            {
                                if (op.actualizarcliente_opciones(id, nom, apellidop, apellidom, email, telefono))
                                {
                                    string id_vivienda = op.obtener_id_vivienda_con_ci(id);
                                    op.actualizarvivienda_id(numerocasa, calle, descrip, id_vivienda);
                                    MessageBox.Show("cambiado");
                                    Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                }
                                else
                                {
                                    MessageBox.Show("error");
                                }
                            }
                        }


                    }
                    else
                    {

                        if (op.verificar_correo_Cliente_registro(email) || op.verificar_correo_Personal_registro(email))
                        {
                            l2.Visible = true;
                            l2.Text = "El correo ya esta registrado.";
                        }
                        else
                        {

                            if (op.verificar_numero_cliente_con_id(id, telefono))
                            {
                                if (op.actualizarcliente_opciones(id, nom, apellidop, apellidom, email, telefono))
                                {
                                    string id_vivienda = op.obtener_id_vivienda_con_ci(id);
                                    op.actualizarvivienda_id(numerocasa, calle, descrip, id_vivienda);
                                    MessageBox.Show("cambiado");
                                    Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                }
                                else
                                {
                                    MessageBox.Show("error");
                                }
                            }
                            else
                            {
                                if (op.verificar_numero_Cliente(telefono) || op.verificar_numero_personal(telefono))
                                {
                                    l1.Visible = true;
                                    l1.Text = "El numero ya esta registrado";
                                }
                                else
                                {
                                    if (op.actualizarcliente_opciones(id, nom, apellidop, apellidom, email, telefono))
                                    {
                                        string id_vivienda = op.obtener_id_vivienda_con_ci(id);
                                        op.actualizarvivienda_id(numerocasa,calle,descrip,id_vivienda);
                                        MessageBox.Show("cambiado");
                                        Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                    }
                                    else
                                    {
                                        MessageBox.Show("error");
                                    }
                                }
                            }





                        }

                    }
                }
            }
            else
            {
                if(op.verificar_carnet_Personal(id))
                {
                    if (IsValid)
                    {
                        if (op.verificar_correo_Personal(id, email))
                        {
                            
                            if (op.verificar_numero_personal_con_id(id, telefono))
                            {
                                if (op.actualizarpersonal_opciones(id, nom, apellidop, apellidom, email, telefono))
                                {
                                    MessageBox.Show("cambiado");

                                    Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                }
                                else
                                {
                                    MessageBox.Show("error");
                                }
                            }
                            else
                            {
                                if (op.verificar_numero_personal(telefono)|| op.verificar_numero_Cliente(telefono))
                                {
                                    l1.Visible = true;
                                    l1.Text = "El numero ya esta registrado";
                                }
                                else
                                {
                                    if (op.actualizarpersonal_opciones(id, nom, apellidop, apellidom, email, telefono))
                                    {
                                        MessageBox.Show("cambiado");
                                        Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                    }
                                    else
                                    {
                                        MessageBox.Show("error");
                                    }
                                }
                            }


                        }
                        else
                        {

                            if (op.verificar_correo_Personal_registro(email) || op.verificar_correo_Cliente_registro(email))
                            {
                                l2.Visible = true;
                                l2.Text = "El correo ya esta registrado.";
                            }
                            else
                            {

                                if (op.verificar_numero_personal_con_id(id, telefono))
                                {
                                    if (op.actualizarpersonal_opciones(id, nom, apellidop, apellidom, email, telefono))
                                    {
                                        MessageBox.Show("cambiado");
                                        Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                    }
                                    else
                                    {
                                        MessageBox.Show("error");
                                    }
                                }
                                else
                                {
                                    if (op.verificar_numero_personal(telefono) || op.verificar_numero_Cliente(telefono))
                                    {
                                        l1.Visible = true;
                                        l1.Text = "El numero ya esta registrado";
                                    }
                                    else
                                    {
                                        if (op.actualizarpersonal_opciones(id, nom, apellidop, apellidom, email, telefono))
                                        {
                                            MessageBox.Show("cambiado");
                                            Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                        }
                                        else
                                        {
                                            MessageBox.Show("error");
                                        }
                                    }
                                }





                            }

                        }
                    }
                }
            }



         


        }

        protected void salir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }

        protected void lista_personal_Click(object sender, EventArgs e)
        {
            string u = Request.Params["id"];


            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = true;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;

            Panel1.Visible = true;




            try
            {
                Conexion op = new Conexion();

                SqlConnection dato = op.getConexion();
                SqlCommand cmd = dato.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select p.ci as 'Carnet', p.nombre,p.apellidoPaterno ,p.apellidoMaterno, c.nombreCargo as 'Cargo', p.correo,p.telefono from Personal p join Cargo c on (c.idCargo = p.idCargo) where p.estado = 'habilitado'";
                cmd.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt2);
                ListaPersonaledit.DataSource = dt2;
                ListaPersonaledit.DataBind();
                ListaPersonaledit.Visible = true;
            }
            catch (Exception)
            {

                MessageBox.Show("error");
            }


        }

        protected void ListaPersonal2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "seleccionar")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = ListaPersonaledit.Rows[rowIndex];

                ci1.Text = row.Cells[2].Text;
                nombre1.Text = row.Cells[3].Text;
                apelllp1.Text = row.Cells[4].Text;
                apellm1.Text = row.Cells[5].Text;
                cargo1.Text = row.Cells[6].Text;
                correo1.Text = row.Cells[7].Text;
                telefono1.Text = row.Cells[8].Text;
                Panel1.Visible = false;
                Panel2.Visible = true;
            }

            if (e.CommandName == "despedir")
            {



                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = ListaPersonaledit.Rows[rowIndex];

                string id = row.Cells[2].Text;
                string nombrecargo = row.Cells[6].Text;
                
                string u = Request.Params["id"];


                Operaciones op = new  Operaciones();
                op.habilitarcargo(nombrecargo);
                op.inhabilitarpersonal(id);
                
                Response.Redirect("~/enlaces/opciones.aspx?id=" + u);

            }
        }

        protected void cambiarcargo_Click(object sender, EventArgs e)
        {
            cambiarsincargo.Visible = false;
            cambiarconcargo.Visible = true;
            cancelar.Visible = true;
            cambiarcargo.Visible = false;
            mantener.Visible = true;
            cargos1.Visible = true;
            cargo1.Visible = false;
        }

        protected void mantener_Click(object sender, EventArgs e)
        {
            cambiarconcargo.Visible = false;
            mantener.Visible = false;
            cargos1.Visible = false;
            cargo1.Visible = true;
            cambiarsincargo.Visible = true;
            cambiarcargo.Visible = true;
            cancelar.Visible = true;
        }

        protected void cambiarsincargo_Click(object sender, EventArgs e)
        {
            Operaciones op = new Operaciones();

            string id = ci1.Text;
            string nom = nombre1.Text;
            string apell1 = apelllp1.Text;
            string apell2 = apellm1.Text;
            string carg = cargo1.Text;
            string email = correo1.Text;
            string telf = telefono1.Text;


            if (IsValid)
            {
                if (op.verificar_correo_Personal(id, email))
                {

                    if (op.verificar_numero_personal_con_id(id, telf))
                    {
                        if (op.actualizar_dato_personal_sin_cargo(id, nom, apell1, apell2, email, telf))
                        {
                            MessageBox.Show("cambiado");
                            Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                        }
                        else
                        {
                            MessageBox.Show("error");
                        }
                    }
                    else
                    {
                        if (op.verificar_numero_personal(telf))
                        {
                            //numero ya existente
                        }
                        else
                        {
                            if (op.actualizar_dato_personal_sin_cargo(id, nom, apell1, apell2, email, telf))
                            {
                                MessageBox.Show("cambiado");
                                Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                            }
                            else
                            {
                                MessageBox.Show("error");
                            }
                        }
                    }


                }
                else
                {

                    if (op.verificar_correo_Personal_registro(email))
                    {
                        //correo ya existente
                    }
                    else
                    {

                        if (op.verificar_numero_personal_con_id(id, telf))
                        {
                            if (op.actualizar_dato_personal_sin_cargo(id, nom, apell1, apell2, email, telf))
                            {
                                MessageBox.Show("cambiado");
                                Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                            }
                            else
                            {
                                MessageBox.Show("error");
                            }
                        }
                        else
                        {
                            if (op.verificar_numero_personal(telf))
                            {
                                //numero ya existente
                            }
                            else
                            {
                                if (op.actualizar_dato_personal_sin_cargo(id, nom, apell1, apell2, email, telf))
                                {
                                    MessageBox.Show("cambiado");
                                    Response.Redirect("~/enlaces/opciones.aspx?id=" + id);
                                }
                                else
                                {
                                    MessageBox.Show("error");
                                }
                            }
                        }





                    }

                }
            }

        }

        protected void cambiarconcargo_Click(object sender, EventArgs e)
        {

            Operaciones op = new Operaciones();

            string id = ci1.Text;
            string nom = nombre1.Text;
            string apell1 = apelllp1.Text;
            string apell2 = apellm1.Text;
            string carg = cargo1.Text;
            string cambiocargo = cargos1.Text;
            string email = correo1.Text;
            string telf = telefono1.Text;

            string idcargo = op.obtener_id_cargo(carg);
            string idcargonuevo = op.obtener_id_cargo(cambiocargo);




            if (IsValid)
            {
                if (op.verificar_correo_Personal(id, email))
                {

                    if (op.verificar_numero_personal_con_id(id, telf))
                    {
                        if (op.actualizar_dato_personal_con_cargo(id, nom, apell1, apell2, email, telf, idcargonuevo))
                        {
                            op.añadircargo_usario(idcargonuevo);
                            op.añadircargo_usario_disponible(idcargo);
                            Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + id);
                        }
                        else
                        {
                            MessageBox.Show("error");
                        }
                    }
                    else
                    {
                        if (op.verificar_numero_personal(telf))
                        {
                            //numero ya existente
                        }
                        else
                        {
                            if (op.actualizar_dato_personal_con_cargo(id, nom, apell1, apell2, email, telf, idcargonuevo))
                            {
                                op.añadircargo_usario(idcargonuevo);
                                op.añadircargo_usario_disponible(idcargo);
                                Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + id);
                            }
                            else
                            {
                                MessageBox.Show("error");
                            }
                        }
                    }


                }
                else
                {

                    if (op.verificar_correo_Personal_registro(email))
                    {
                        //correo ya existente
                    }
                    else
                    {

                        if (op.verificar_numero_personal_con_id(id, telf))
                        {
                            if (op.actualizar_dato_personal_con_cargo(id, nom, apell1, apell2, email, telf, idcargonuevo))
                            {
                                op.añadircargo_usario(idcargonuevo);
                                op.añadircargo_usario_disponible(idcargo);
                                Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + id);
                            }
                            else
                            {
                                MessageBox.Show("error");
                            }
                        }
                        else
                        {
                            if (op.verificar_numero_personal(telf))
                            {
                                //numero ya existente
                            }
                            else
                            {
                                if (op.actualizar_dato_personal_con_cargo(id, nom, apell1, apell2, email, telf, idcargonuevo))
                                {
                                    op.añadircargo_usario(idcargonuevo);
                                    op.añadircargo_usario_disponible(idcargo);
                                    Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + id);
                                }
                                else
                                {
                                    MessageBox.Show("error");
                                }
                            }
                        }





                    }

                }
            }

        }

        protected void lista_pedidos_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = true;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;

            

            Conexion op = new Conexion();

            SqlConnection dato = op.getConexion();
            SqlCommand cmd = dato.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select id, idCliente as 'Carnet del cliente', costoTotal , fechaVenta , tipoPedido  From Venta where estado = 'Desatendido'";
            cmd.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt2);
            gridListapedidos.DataSource = dt2;
            gridListapedidos.DataBind();
            gridListapedidos.Visible = true;


          


        }

        protected void buscar_cliente_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = true;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;
        }

        protected void reportes_ventas_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = true;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;
        }

        protected void registro_cliente_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = true;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = false;
            registrodecliente1.Visible =true;
        }

        protected void registro_personal_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = true;
            panelagotarstock.Visible = false;
        }

       

        protected void ver_informe_Click(object sender, EventArgs e)
        {

            string u = Request.Params["id"];
            string inicio = fechainicio.Text;
            string final = fechafinal.Text;




            Conexion op = new Conexion();

            SqlConnection dato = op.getConexion();

            SqlCommand cmd = dato.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select v.id, v.costoTotal, a.nombre as 'Cliente',a.apellidoPaterno as 'Apellido Paterno', a.ci as 'Carnet', v.idUsuario as 'Carnet del empleado',v.fechaVenta as 'Fecha de compra' from Cliente a join venta v on (a.ci = v.idCliente)  where fechaVenta between'" + inicio + "' and '" + final + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            listadeconsulta.DataSource = dt;
            listadeconsulta.DataBind();


            Panel1.Visible = false;
            atras.Visible = true;
            Panel3.Visible = true;

            fecha2.Text = inicio + " ---  " + final;
            Operaciones f = new Operaciones();

            string nombre = f.obtener_nombre_Personal(u);
            string apellido = f.obtener_nombre_Apellido_Personal(u);
            string cargo = f.obtener_nombre_cargo(u);
            string fecha = DateTime.Now.ToString();
            string hora = DateTime.Now.ToString("hh:mm:ss");

            id2.Text = u; nombre2.Text = nombre; apellido2.Text = apellido; cargo2.Text = cargo; fecharealizado1.Text = fecha;

            dato.Close();
        }

        protected void atras_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void btsesion_Click(object sender, EventArgs e)
        {

            string u = Request.Params["id"];
            Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + u);
        }


        

               protected void opciones1_Click(object sender, EventArgs e)
            {

            string u = Request.Params["id"];
            Response.Redirect("~/enlaces/Inicio-sesion/mostrar-personal.aspx?id=" + u);
            }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string carnet = TxtBci.Text;

            Conexion OP = new Conexion();

            //Validacion de Registro


            SqlConnection dato = OP.getConexion();
            SqlCommand cmd = dato.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select ci,  Concat(nombre,'  ', apellidoPaterno, '  ', apellidoMaterno) AS 'Nombre Completo' from Cliente where ci= '" + carnet + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridbuscarcliente.DataSource = dt;
            gridbuscarcliente.DataBind();

           
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Operaciones op = new Operaciones();

            string numerovivienda = TxtNumcalle1.Text;
            string callevivienda = TxtNcalle1.Text;
            string descrip = TxtDescripcion1.Text;

            string ci = TxtCi1.Text;
            string nombre_usu = TxtNombre1.Text;
            string apellidpa = TxtApp1.Text;
            string apellidoma = TxtApm1.Text;
            string correoele = TxtCorreo1.Text;


            string telf = TxtTelefono1.Text;
            string pass = TxtPass1.Text;


            if (TxtNombre1.Text == "" || TxtApp1.Text == "" || TxtApm1.Text == "" || TxtFecha1.Text == "" || TxtNcalle1.Text == "" || TxtNumcalle1.Text == "" || TxtDescripcion1.Text == "")
            {
                LblValidar.Text = "Porfavor Complete todos los campos del formulario";
                LblValidar.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                LblValidar.Visible = false;

            



                    if (op.registrarvivienda(numerovivienda, callevivienda, descrip))
                    {
                        string idvivienda = op.obtener_id_vivienda(numerovivienda, callevivienda, descrip);

                        try
                        {

                            string tiempo = TxtFecha1.Text;

                            op.registrarclientes(ci, nombre_usu, apellidpa, apellidoma, correoele, tiempo, telf, pass, idvivienda);
                            LblRegistrar.Text = "Registro Exitoso!";
                        paneldtos1.Visible = true;
                            TxtUsuario1.Text = ci;
                        registrodecliente1.Visible=false;

                        }
                        catch (Exception)
                        {

                            res4.Text = "Ingrese nacimiento";
                        }


                    }
                
            }


        }

        protected void BtnGenerar_Click(object sender, EventArgs e)
        {
            Operaciones op = new Operaciones();

            string ucorreo = TxtCi1.Text;
            TxtPass1.Text = op.obtener_usuario_pass(ucorreo);

            LblN.Text = TxtNombre1.Text + " " + TxtApp1.Text + " " + TxtApm1.Text;
            LblU.Text = TxtUsuario1.Text;
            LblC.Text = TxtPass1.Text;
            paneldtos1.Visible = false;
            pdfimprimir.Visible = true;
            BtnGuardar.Visible = true;
            Button3.Visible = true;
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Conexion op = new Conexion();
            SqlConnection con = op.getConexion();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            cmd.CommandText = "UPDATE cliente SET nombre='" + TxtNombre1.Text.ToString() + "' , apellidoPaterno='" + TxtApp1.Text.ToString() + "', apellidoMaterno='" + TxtApm1.Text.ToString() + "', correo='" + TxtCorreo1.Text.ToString() + "', fechaNacimiento='" + TxtFecha1.Text.ToString() + "', telefono= " + TxtTelefono1.Text.ToString() + ", contraseña='" + TxtPass1.Text.ToString() + "' WHERE ci= " + TxtCi1.Text.ToString() + "; Update vivienda set numeroCasa= " + TxtNumcalle1.Text.ToString() + ", calle='" + TxtNcalle1.Text.ToString() + "', descripción='" + TxtDescripcion1.Text.ToString() + "' where idVivienda = (select idVivienda From Cliente where ci = " + TxtCi1.Text.ToString() + ");";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            string ci = Request.Params["id"];
            Response.Redirect("~/enlaces/opciones.aspx?id="+ci);
           
           
        }

        protected void detallelista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridhistorial_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "detalle")
            {
                string ci = Request.Params["id"];
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = gridhistorial.Rows[rowIndex];



                string idventa = row.Cells[1].Text;

                Conexion op = new Conexion();

                SqlConnection dato = op.getConexion();

                SqlCommand cmd = dato.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select m.nombrePlato , d.cantidad, d.costo from cliente c join venta v on(v.idCliente = c.ci) join Detalle d on(v.id= d.idVenta) join Menu m on(d.idPlato = m.idPlato) where v.idCliente= '"+ci+"' and d.idVenta = '"+idventa+"'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                detallelista.DataSource = dt;
                detallelista.DataBind();
                dato.Close();
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {

                if(IsValid)
                {

                Operaciones op = new Operaciones();
                string ci, telefono;
                string nombre, apellidoPaterno, apellidoMaterno, contraseña, idCargo, correo;

                ci = txtci4.Text;
                nombre = txtnombre4.Text;
                apellidoPaterno = txtpaterno4.Text;
                apellidoMaterno = txtmaterno4.Text;
                idCargo = dlcargo4.Text;
                telefono = txttelefono4.Text;
                correo = txtcorreo4.Text;
                contraseña = txtcontraseña4.Text;
                    string habil = "habilitado";

                string cargo = op.obtener_id_cargo(idCargo);

                if (op.registrarpersonal(ci, nombre, apellidoPaterno, apellidoMaterno, contraseña, cargo, telefono, correo,habil))
                {
                    op.añadircargo(cargo);
                        string cis = Request.Params["id"];
                        MessageBox.Show("registro exitoso");
                        Response.Redirect("~/enlaces/opciones.aspx?id=" + cis);
                    }
                else
                {
                    Response.Write("<script>window.alert('Error Datos Repetidos existentes')</script>");
                }
                }




            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('Verifique los Datos e Intente Nuevamente')</script>");
            }
        }

      
        protected void agotar_stock_Click(object sender, EventArgs e)
        {
            panelperfil.Visible = false;
            panelhistorial.Visible = false;
            Listaspersonal.Visible = false;
            panel_Lista_pedidos.Visible = false;
            panel_buscar_cliente.Visible = false;
            panel_reportes_venta.Visible = false;
            panel_añadir_cliente.Visible = false;
            panel_añadir_personal.Visible = false;
            panelagotarstock.Visible = true;


            Conexion ope = new Conexion();

            SqlConnection dato = ope.getConexion();
            SqlCommand cmd = dato.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select idPlato, nombrePlato as 'Nombre', costo, estado from Menu";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridwListapedidos.DataSource = dt;
            gridwListapedidos.DataBind();
        }

        protected void gridwListapedidos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "habilitar")
            {
                string ci = Request.Params["id"];
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = gridwListapedidos.Rows[rowIndex];



                string idmenu = row.Cells[2].Text;

                Operaciones op = new Operaciones();

                op.habilitarproducto(idmenu);

                Response.Redirect("~/enlaces/opciones.aspx?id=" + ci);
            }
            if (e.CommandName == "inhabilitar")
            {
                string ci = Request.Params["id"];
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = gridwListapedidos.Rows[rowIndex];



                string idmenu = row.Cells[2].Text;

                Operaciones op = new Operaciones();

                op.inhabilitarproducto(idmenu);
                Response.Redirect("~/enlaces/opciones.aspx?id=" + ci);
            }
        }

        protected void BtnPdf_Click(object sender, EventArgs e)
        {
            LblN.Text = TxtNombre1.Text + " " + TxtApp1.Text + " " + TxtApm1.Text;
            LblU.Text = TxtUsuario1.Text;
            LblC.Text = TxtPass1.Text;

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
            Imprimir.RenderControl(htmlTextWriter);
            StringReader stringReader = new StringReader(stringWriter.ToString());
            Document Doc = new Document(PageSize.A4, 10f, 10f, 40, 0f);
            HTMLWorker htmlparser = new HTMLWorker(Doc);
            PdfWriter.GetInstance(Doc, Response.OutputStream);
            Doc.Open();
            htmlparser.Parse(stringReader);
            Doc.Close();
            Response.Write(Doc);
            Response.End();

        }

        protected void TxtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void imprimir2_Click(object sender, EventArgs e)
        {
           
        }

        protected void gridListapedidos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "confirmar")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = gridListapedidos.Rows[rowIndex];

                string idventa = row.Cells[2].Text;

                Operaciones op = new Operaciones();
                op.confirmarpedido(idventa);
                string ci = Request.Params["id"];
                Response.Redirect("~/enlaces/opciones.aspx?id="+ci);


            }

            if (e.CommandName == "detalleventa")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = gridListapedidos.Rows[rowIndex];

                string idventa = row.Cells[2].Text;
                string ci = row.Cells[3].Text;
               

                Conexion op = new Conexion();

                SqlConnection dato = op.getConexion();
                SqlCommand cmd = dato.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select m.nombrePlato , d.cantidad, d.costo from cliente c join venta v on (v.idCliente = c.ci) join Detalle d on (v.id=d.idVenta) join Menu m on (d.idPlato = m.idPlato ) where v.idCliente= '"+ci+"' and d.idVenta = '"+idventa+"'";
                cmd.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt2);
                detalledeventa.DataSource = dt2;
                detalledeventa.DataBind();
                detalledeventa.Visible = true;

            }


        }

       

        protected void gridbuscarcliente_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            


                 if (e.CommandName == "atendercliente")
                    {
                        int rowIndex = Convert.ToInt32(e.CommandArgument);

                        GridViewRow row = gridbuscarcliente.Rows[rowIndex];

                        string idcliente = row.Cells[1].Text;

                        Operaciones op = new Operaciones();
                        op.confirmarpedido(idcliente);
                        string ci = Request.Params["id"];
                        Response.Redirect("~/WebForm1.aspx?id=" + ci+"&idCliente="+idcliente);


                    }



        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/enlaces/contactos.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/enlaces/contactos.aspx?id=" + ci);
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/WebForm1.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/WebForm1.aspx?id=" + ci + "&idCliente=0");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/enlaces/nosotros.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/enlaces/nosotros.aspx?id=" + ci);
            }
        }

        protected void gridcliente_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/inicio.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/inicio.aspx?id=" + ci);
            }
        }
    }


}