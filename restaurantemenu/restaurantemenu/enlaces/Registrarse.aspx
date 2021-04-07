<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Formularios.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <title>Registrar Cuenta</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="Estilos/estilos.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <br />
    <div class="text-center">
        <h2>Registrarse</h2>
    </div>
    <div class="container">
        <form id="form1" runat="server">
            <div class="Contenedor1">
                <div class="row">
                    <div class="form-row">
                        <label for="exampleInputText" class="col-form-label">Numero de CI:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtCi" class="form-control" type="text" runat="server" placeholder="Numero de carnet" MaxLength="9"></asp:TextBox>
                            <asp:Label ID="valci" runat="server" Enabled="False" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Nombre:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtNombre" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resnombre" runat="server" ControlToValidate="TxtNombre" EnableClientScript="False" ErrorMessage="* Ingrese su nombre" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Apellido Paterno:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtApp" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resapp" runat="server" ControlToValidate="TxtApp" EnableClientScript="False" ErrorMessage="* Ingrese su apellido paterno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Apellido Materno:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtApm" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resapm" runat="server" ControlToValidate="TxtApm" EnableClientScript="False" ErrorMessage="* Ingrese su apellido materno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-row">
                        <label for="exampleInputText" class="col-form-label-sm">Fecha de Nacimiento:</label>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TxtFecha" class="form-control form-control-sm" type="text" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="res4" runat="server" ErrorMessage="* Ingrese su fecha de nacimiento" ControlToValidate="TxtFecha" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <label for="exampleInputText" class="col-form-label-sm">Telefono:</label>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TxtTelefono" class="form-control form-control-sm" type="text" runat="server" MaxLength="8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="res3" runat="server" ErrorMessage="* Ingrese su numero de Telefono" ControlToValidate="TxtTelefono" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>



                <div>
                    <h5>Direccion de Vivienda</h5>
                </div>

                <div class="row">
                    <label for="exampleInputText" class="col-form-label-sm">Nombre de Calle:</label>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="TxtNcalle" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resnc" runat="server" ControlToValidate="TxtNcalle" EnableClientScript="False" ErrorMessage="* Ingrese el nombre de su calle" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                    <label for="exampleInputText" class="col-form-label-sm">Numero de Calle:</label>
                    <div class="form-group col-md-3">
                        <asp:TextBox ID="TxtNumcalle" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resnumc" runat="server" ControlToValidate="TxtNumcalle" EnableClientScript="False" ErrorMessage="* Ingrese el numero de su casa" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <label for="exampleInputText" class="col-form-label-sm">Descripcion:</label>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="TxtDescripcion" class="form-control form-control-sm" placeholder="Descripcion de su vivienda" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resdec" runat="server" ControlToValidate="TxtDescripcion" EnableClientScript="False" ErrorMessage="* Ingrese una descripcion" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div>
                    <h5>Registrar Cuenta de Usuario</h5>
                </div>

                <div class="row">
                    <label for="exampleInputEmail1" class="col-form-label-sm">Correo:</label>
                    <div class="form-group col-md-4" style="left: 0px; top: 0px">
                        <asp:TextBox ID="TxtCorreo" class="form-control form-control-sm" runat="server" placeholder="Ingrese su correo" TextMode="Email"></asp:TextBox>
                        <!--<asp:RequiredFieldValidator ID="res2" runat="server" ErrorMessage="* Ingrese su Correo Electronico" ControlToValidate="TxtCorreo" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>-->
                    </div>
                </div>
                <div class="row">
                    <label for="exampleInputPassword1" class="col-form-label-sm"> Ingrese una Contraseña: </label>
                    <div class="form-group col-md-3">
                        <asp:TextBox ID="TxtPass" class="form-control form-control-sm" runat="server" placeholder="Ingrese su contraseña" TextMode="Password"></asp:TextBox>
                        <!--<asp:RequiredFieldValidator ID="rescontra" runat="server" ControlToValidate="TxtPass" EnableClientScript="False" ErrorMessage="* Ingrese su contraseña" ForeColor="#CC0000"></asp:RequiredFieldValidator>-->
                    </div>
                    <label for="exampleInputPassword1" class="col-form-label-sm">Confirme su Contraseña: </label>
                    <div class="form-group col-md-3">
                        <asp:TextBox ID="TxtCpass" class="form-control form-control-sm" runat="server" placeholder="Confirme su contraseña" TextMode="Password"></asp:TextBox>
                        <!--<asp:RequiredFieldValidator ID="rescontras" runat="server" ControlToValidate="TxtPass" EnableClientScript="False" ErrorMessage="* Ingrese su contraseña" ForeColor="#CC0000"></asp:RequiredFieldValidator>-->
                    </div>
                    <asp:Label ID="LblPass" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </div>
            </div>
            <div class="Contenedor3">
                <asp:Button ID="BtnInicio" class="btn btn-danger btn-lg btn-block" runat="server" Text="Volver" OnClick="BtnInicio_Click" />
            </div>
            <div class="Contenedor3">
                <asp:Button ID="BtnGuardar" class="btn btn-success btn-lg btn-block" runat="server" Text="Registrar mis Datos" OnClick="BtnGuardar_Click" />
            </div>
            <div class="row">
                <asp:Label ID="LblValido" runat="server" for="exampleInputText" class="col-form-label" ForeColor="#33CC33" Visible="False"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
