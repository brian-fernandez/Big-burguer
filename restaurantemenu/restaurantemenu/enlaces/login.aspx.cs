using Biblioteca;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurantemenu.enlaces
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           

           
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
                Response.Redirect("~/WebForm1.aspx?id=" + ci);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/enlaces/login-cliente.aspx");
        }


        protected void entrar_Click(object sender, EventArgs e)
        {

            Regex pass = new Regex(@"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)");


            if (pass.IsMatch(carnet.Text) && pass.IsMatch(contraseña.Text))
            {
                Operaciones op = new Operaciones();
                string u = carnet.Text;
                string o = contraseña.Text;


                //string cargo = op.discriminar_login(u, o);

                if (op.verificar_login_Personal(u, o))
                {

                    alert.Text = "usuario encontrado";
                    alert.Visible = true;

                    
                    Response.Redirect("~/inicio.aspx?id=" + u + "&idCliente=0");
                    
                    

                }
                else
                {
                    alert.Text = "usuario no encontrado o inhabilitado";
                    alert.Visible = true;
                }
            }
            else
            {
                alert.Text = "ingrese datos";
                alert.Visible = true;
            }
        }

        protected void cliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/enlaces/login-cliente.aspx");
        }
    }
}