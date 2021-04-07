using Biblioteca;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurantemenu
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Operaciones op = new Operaciones();

            if (!Page.IsPostBack)
            {
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



                    if (op.verificar_carnet_Cliente(ci))
                    {
                        lbnombre.Text = op.obtener_nombre_Cliente(ci);
                        lbid.Text = ci;
                        Cargo.Text = "Cliente";
                    }
                    else
                    {
                        if (op.verificar_carnet_Personal(ci))
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

        protected void PanelCredenciales_DataBinding(object sender, EventArgs e)
        {

        }
        protected void opciones_Click(object sender, EventArgs e)
        {
          


            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/enlaces/opciones.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/enlaces/opciones.aspx?id=" + ci);
            }
        }
        protected void btsesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/enlaces/login-cliente.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if(Request.QueryString["id"] == null)
            {
                Response.Redirect("~/WebForm1.aspx");
            }
            else
            {
                string ci = Request.QueryString["id"].ToString();
                Response.Redirect("~/WebForm1.aspx?id=" + ci + "&idCliente=0");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
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
                Response.Redirect("~/WebForm1.aspx?id=" + ci+"&idCliente=0");
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
    }
}