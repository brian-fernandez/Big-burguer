using Biblioteca;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace restaurantemenu.enlaces
{
    public partial class cambiar_contraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string identi ;


        protected void atras_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void paso2_Click(object sender, EventArgs e)
        {
            string dato = carnet.Text;
          
            
                Operaciones op = new Operaciones();
            if (op.verificar_carnet_Personal(dato) || op.verificar_carnet_Cliente(dato))
            {





                string nombrecardperson = op.obtener_nombre_Personal(dato);
                string nombrecardclient = op.obtener_nombre_Cliente(dato);

                if (1 < nombrecardperson.Length)
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;

                    nombre.Text = nombrecardperson;
                    nombre.Visible = true;
                    identificador.Text = dato;
                }

                if (1 < nombrecardclient.Length)
                {

                    Panel1.Visible = false;
                    Panel2.Visible = true;

                    nombre.Text = nombrecardclient;
                    nombre.Visible = true;
                    identificador.Text = dato;
                }


            }
            else
            {
                alert.Text = "Este carnet no esta registrado.";
                alert.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            

            string correo = correoelectronico.Text;
            string da= identificador.Text;

            
            
                Operaciones op = new Operaciones();
                if (op.verificar_correo_Personal(da, correo) || op.verificar_correo_Cliente(da,correo))
                {
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    Panel3.Visible = true;


                }
                else
                {
                    alert0.Text = "El correo ingresado no esta ligado en tu cuenta, ingrese el correo.";
                    alert0.Visible = true;
                }
            
            
        }

        protected void atras2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string pas = contraseñanew.Text;
            string da = identificador.Text;

            if (contraseñanew.Text == "" || contraseñanew2.Text == "")
            {
                Label3.Text = "Campo vacio ingrese la contraseña";
                Label3.Visible = true;
            }
            else
            {
                if( contraseñanew.Text == contraseñanew2.Text)
                {
                    Operaciones op = new Operaciones();
                    if (op.cambiar_contraseña_Personal(da, pas)||op.cambiar_contraseña_cliente(da,pas))
                    {

                        MessageBox.Show("Contraseña cambiada!");

                        Response.Redirect("login.aspx");

                        identificador.Text = "";

                        Label3.Visible = false;

                    }
                    {
                        MessageBox.Show("error");
                    }
                }
                else
                {
                    
                    Label3.Text = "La contraseña tiene que ser igual";
                    Label3.Visible = true;
                }
            }
        }
    }
}