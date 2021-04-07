using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace Formularios
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Operaciones op = new Operaciones();

            string numerovivienda = TxtNumcalle.Text;
            string callevivienda = TxtNcalle.Text;
            string descrip = TxtDescripcion.Text;

            string ci = TxtCi.Text;
            string nombre_usu = TxtNombre.Text;
            string apellidpa = TxtApp.Text;
            string apellidoma = TxtApm.Text;
            string correoele = TxtCorreo.Text;


            string telf = TxtTelefono.Text;
            string pass = TxtPass.Text;


            if (TxtNombre.Text == "" || TxtApp.Text == "" || TxtApm.Text == "" || TxtFecha.Text == "" || TxtTelefono.Text == "")
            {
                LblValido.Text = "Porfavor Complete todos los campos del formulario";
                LblValido.ForeColor = System.Drawing.Color.Red;
            }
            else
            {


                if (op.verificar_carnet_Personal(ci) || op.verificar_carnet_Cliente(ci))
                {
                    valci.Visible = true;
                    valci.Text = "Carnet ya registrado";

                }
                else
                {

                    if (TxtPass.Text != TxtCpass.Text)
                    {
                        LblPass.Visible = true;
                        LblPass.Text = "La contraseña no coincide";
                    }

                    else
                    {
                        res3.Visible = false;
                        if (op.registrarvivienda(numerovivienda, callevivienda, descrip))
                        {
                            string idvivienda = op.obtener_id_vivienda(numerovivienda, callevivienda, descrip);

                            try
                            {

                                string tiempo = TxtFecha.Text;

                                op.registrarclientes(ci, nombre_usu, apellidpa, apellidoma, correoele, tiempo, telf, pass, idvivienda);
                                LblPass.Visible = true;
                                LblPass.Text = "Registro Exitoso!";
                                LblPass.ForeColor = System.Drawing.Color.Green;
                                BtnGuardar.Visible = false;
                                BtnInicio.Visible = true;

                                TxtCi.Enabled = false;
                                TxtNombre.Enabled = false;
                                TxtApp.Enabled = false;
                                TxtApm.Enabled = false;
                                TxtTelefono.Enabled = false;
                                TxtCorreo.Enabled = false;
                                TxtPass.Enabled = false;
                                TxtFecha.Enabled = false;
                                TxtNumcalle.Enabled = false;
                                TxtNcalle.Enabled = false;
                                TxtDescripcion.Enabled = false;

                            }
                            catch (Exception)
                            {

                                res4.Text = "Ingrese nacimiento";
                            }
                        }
                    }
                }
            }
        }

        protected void TxtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("login-cliente.aspx");
        }
    }
}