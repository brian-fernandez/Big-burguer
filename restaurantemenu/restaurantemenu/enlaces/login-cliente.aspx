<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-cliente.aspx.cs" Inherits="restaurantemenu.enlaces.login_cliente" %>

<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesion</title>
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link  href="../css/login.css" type="text/css" rel="stylesheet"/>
    <link href="../css/nav.css"  rel="stylesheet"/>
       <style>

        @media (max-width: 777px)  {
            .nav{  justify-content: space-between;
            z-index: 30000000;
            background-color: #000000;
            position:fixed !important;
            
            }
          
        }
    

    </style>
</head>
<body>

 

    <form id="form1" runat="server">

            <nav >
    <asp:Panel ID="PanelCredenciales" runat="server" >

    







    </asp:Panel>
            
    <ul class="lista">
        <li><asp:Button CssClass="btn btn-warning"  ID="Button6" runat="server" Text="INICIO" OnClick="Button6_Click" /></li>
        <li><asp:Button CssClass="btn btn-warning" ID="Button7" runat="server" Text="NOSOTROS" OnClick="Button7_Click" /></li>
        <li><asp:Button CssClass="btn btn-warning" ID="Button8" runat="server" Text="MENU" OnClick="Button8_Click" /></li>
        <li><asp:Button CssClass="btn btn-warning" ID="Button9" runat="server" Text="CONTACTO" OnClick="Button9_Click" /></li>
    
    </ul>
    <span class="btn-menu">
    <i class="fa fa-bars"></i>
</span>
</nav>
  



           <div class="container h-100">
        <div class="d-flex justify-content-center h-100" style="margin-top:180px">
            <div class="user_card">
                <div class="d-flex justify-content-center">
                    <div class="brand_logo_container">
                        <img src="../img/logo.jpg" class="brand_logo" alt="Logo">
                        
                    </div>
                </div>
                <div class="justify-content-center form_container">
                   		    <h2 class="text-center">INICIA SESIÓN AHORA</h2>
		    
  <div class="form-group">
      <asp:Label class="alert alert-danger" ID="alert" runat="server" Visible="False" Width="100%"></asp:Label>

    <label for="exampleInputEmail1" class="text-uppercase">Carnet</label>
    
     
        <asp:TextBox CssClass="form-control" ID="carnet" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">Contraseña</label>
      <asp:TextBox CssClass="form-control" ID="contraseña" runat="server" TextMode="Password"></asp:TextBox>
  </div>
                    

                        <div class=" justify-content-center mt-3 login_container">
                          
                            
                        
                        <asp:Button class="btn login_btn_c" ID="Button1" runat="server" Text="INICIAR SESIÓN" OnClick="entrar_Click" />
                        <br />
                            <br />

                          <asp:Button CssClass="btn login_btn_c"  ID="entraradmin" runat="server" Text="ADMINISTRADOR" OnClick="entraradmin_Click" />
                            <p>¿No tienes una cuenta? <a class="link-danger" href="Registrarse.aspx">Registrate</a></p>  
                        </div>

                       
                    
                </div>

                <div class="mt-4">
                    
                    <div class="d-flex justify-content-center links">
                        <a class="link-danger" href="cambiar-contraseña.aspx">Recuperar contraseña</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js " integrity=" sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi " crossorigin=" anonymous "></script>
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js " integrity=" sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG " crossorigin=" anonymous "></script>










         <script src="../js/nav.js"></script>




    </form>


</body>
</html>
