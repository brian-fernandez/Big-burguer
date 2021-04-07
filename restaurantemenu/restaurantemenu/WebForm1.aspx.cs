using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Biblioteca;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace restaurantemenu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        Operaciones op = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string numero1 = "1";
                string numero2 = "2";
                string numero3 = "3";
                string numero4 = "4";

                if (op.plato1(numero1) )
                {
                    btham.Text = "AGOTADO";
                    btham.Enabled = false;
                    btham.BackColor = Color.Red;


                }
                else
                {
                    btham.Text = "Pedir";
                    btham.Enabled = true;
                   

                }
                if (op.plato1(numero2))
                {
                    bttac.Text = "AGOTADO";
                    bttac.Enabled = false;
                    bttac.BackColor = Color.Red;


                }
                else
                {
                    bttac.Text = "Pedir";
                    bttac.Enabled = true;
                   
                }


                if (op.plato1(numero3))
                {
                    btpol.Text = "AGOTADO";
                    btpol.Enabled = false;
                    btpol.BackColor = Color.Red;


                }
                else
                {
                    btpol.Text = "Pedir";
                    btpol.Enabled = true;
                   
                }
                if (op.plato1(numero4))
                {
                    btpiq.Text = "AGOTADO";
                    btpiq.Enabled = false;
                    btpiq.BackColor = Color.Red;


                }
                else
                {
                    btpiq.Text = "Pedir";
                    btpiq.Enabled = true;
                    
                }





















                if (ViewState["Records"] == null)
                {
                    dt.Columns.Add("idPlato");
                    dt.Columns.Add("idVenta");
                    dt.Columns.Add("cantidad");
                    dt.Columns.Add("costo");
                    ViewState["Records"] = dt;
                }


                if (Request.QueryString["id"] == null)
                {
                    lbid.Visible = false;
                    lbnombre.Visible = false;
                    opciones.Visible = false;
                    return;
                }
                    
                else
                {
                    string ci = Request.QueryString["id"].ToString();

                    

                    if(op.verificar_carnet_Cliente(ci))
                    {
                        lbnombre.Text = op.obtener_nombre_Cliente(ci);
                        lbid.Text = ci;
                        Cargo.Text = "Cliente";
                    }
                    else
                    {
                        if(op.verificar_carnet_Personal(ci))
                        {
                            lbnombre.Text = op.obtener_nombre_Personal(ci);
                            lbid.Text = ci;
                            Cargo.Visible = true;
                            Cargo.Text = op.obtener_nombre_cargo(ci);



                        }
                    }



               


                    lbid.Visible = true;
                    lbnombre.Visible = true;
                    opciones.Visible = true;
                    btsesion.Text = "Cerrar Sesión";
                }

                
            }


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













        protected void btham_Click(object sender, EventArgs e)
        {

        }

        protected void bttac_Click(object sender, EventArgs e)
        {
            nombre.Text = "TACOS";
            lbidplato.Text = "2";
            mensaje.Visible = false;
            image.ImageUrl = "img/Durum.jpg";
            nombre.Visible = true;
            lista.Visible = true;
            lbprecio.Visible = true;
            lbcantidad.Visible = true;
            precio.Visible = true;
            precio.Text = "8";
            

            PanelCarrito.Visible = false;
            PanelVenta.Visible = true;
            Comprar.Visible = true;
        }

        protected void btham_Click1(object sender, EventArgs e)
        {
            nombre.Text = "HAMBURGUESA";
            lbidplato.Text = "1";
            mensaje.Visible = false;
            image.ImageUrl = "img/descarga.jpg";
            nombre.Visible = true;
            lista.Visible = true;
            lbprecio.Visible = true;
            lbcantidad.Visible = true;
            precio.Visible = true;
            precio.Text = "10";

            PanelCarrito.Visible = false;
            PanelVenta.Visible = true;
            Comprar.Visible = true;


        }

        protected void btpol_Click(object sender, EventArgs e)
        {
            nombre.Text = "POLLO A LA PARRILLA";
            lbidplato.Text = "3";
            mensaje.Visible = false;
            image.ImageUrl = "img/tres.jpg";
            nombre.Visible = true;
            lista.Visible = true;
            lbprecio.Visible = true;
            lbcantidad.Visible = true;
            precio.Visible = true;
            precio.Text = "10";
            Comprar.Visible = true;

            PanelCarrito.Visible = false;
            PanelVenta.Visible = true;
        }

        protected void btpiq_Click(object sender, EventArgs e)
        {
            nombre.Text = "PIQUE MACHO";
            lbidplato.Text = "4";
            mensaje.Visible = false;
            image.ImageUrl = "img/cuatro.jpg";
            nombre.Visible = true;
            lista.Visible = true;
            lbprecio.Visible = true;
            lbcantidad.Visible = true;
            precio.Visible = true;
            precio.Text = "15";
            Comprar.Visible = true;
            PanelVenta.Visible = true;
            PanelCarrito.Visible = false;

        }

        protected void Comprar_Click(object sender, EventArgs e)
        {
            if (lbid.Text=="")
            {
                Response.Redirect("enlaces/login-cliente.aspx");
            }
            else
            {

                pedido.Text = lista.Text + " " + nombre.Text + " ";
                cantidad.Text = lista.Text;
                mini.Visible = true;
                lbtotal.Text = (int.Parse(precio.Text) * int.Parse(lista.Text)).ToString();

            }
            if (Request.QueryString["idCliente"].ToString()=="0"&&Cargo.Text!="Cliente"&& Request.QueryString["id"].ToString() != null)
            {
                
                Response.Redirect("enlaces/opciones.aspx?id="+lbid.Text);
            }


        }

        protected void btno_Click(object sender, EventArgs e)
        {
            mini.Visible = false;
        }

        protected void btcarrito_Click(object sender, EventArgs e)
        {
            PanelVenta.Visible = false;
            PanelCarrito.Visible = true;
            
        }
       

        protected void btsi_Click(object sender, EventArgs e)
        {   
            int idventactual =  Convert.ToInt32( op.get_id_venta())+1;
            dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(lbidplato.Text,idventactual,cantidad.Text,lbtotal.Text);
            gridcarrito.DataSource = dt;
            gridcarrito.DataBind();
            mini.Visible = false;
            PanelVenta.Visible = false;
            PanelCarrito.Visible = true;
            btguardarventa.Visible = true;

            lbCostoTotal.Text = (int.Parse(lbCostoTotal.Text) + int.Parse(lbtotal.Text)).ToString(); 

        }

        protected void btsesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("enlaces/login-cliente.aspx");
        }

        protected void opciones_Click(object sender, ImageClickEventArgs e)
        {
            string ci = Request.QueryString["id"];

            Response.Redirect("~/enlaces/opciones.aspx?id="+ci);
        }

        protected void btguardarventa_Click(object sender, EventArgs e)
        {
            string hoy = DateTime.Today.ToString("yyyy-MM-dd");
            string TipoPedido="";
            string Estado="";
            string ciCliente="";
            string idUser = "0";
            if (Cargo.Text=="Cliente")
            {
                TipoPedido = "Delivery";
                Estado = "Desatendido";
                ciCliente = lbid.Text;
            }

            if(Cargo.Text=="Recepcionista" || Cargo.Text== "Recepcionista2" || Cargo.Text == "Recepcionista3")
            {
                TipoPedido = "Personal";
                Estado = "Atendido";
                idUser = lbid.Text;
                ciCliente= Request.QueryString["idCliente"].ToString();
            }

            string id_venta = op.registrarVenta(lbCostoTotal.Text,int.Parse(idUser),int.Parse(ciCliente),hoy,TipoPedido,Estado,null);
            lbventactual.Text = id_venta;
            //guardar detalle
            string mainconn = ConfigurationManager.ConnectionStrings["restauranteConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            foreach(GridViewRow gr in gridcarrito.Rows)
            {
                string sqlquery = "insert into [dbo].[Detalle] values(@idPlato,@idVenta,@cantidad,@costo)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery,sqlconn);
                sqlcomm.Parameters.AddWithValue("@idPlato", gr.Cells[0].Text);
                sqlcomm.Parameters.AddWithValue("@idVenta", gr.Cells[1].Text);
                sqlcomm.Parameters.AddWithValue("@cantidad", gr.Cells[2].Text);
                sqlcomm.Parameters.AddWithValue("@costo", gr.Cells[3].Text);
                sqlconn.Open();
                sqlcomm.ExecuteNonQuery();
                sqlconn.Close();
                lbok.Text = "EXITO";

            }
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/inicio.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/inicio.aspx?id=" + ci + "&idCliente=0");
            }

           


        }
    }
}