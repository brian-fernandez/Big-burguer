<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="restaurantemenu.enlaces.login1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" style="background: linear-gradient(to bottom, #f73947, #f73947) !important">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <title>Inicio de sesion</title>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"  integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
     <link href="../css/nav.css" rel="stylesheet" />

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

     
      <form id="form1" runat="server">
        <nav>
    <asp:Panel ID="PanelCredenciales" runat="server">

            </div>
        </div>







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




<body style="background: linear-gradient(to bottom, #f73947, #f73947) !important">
 
      
    <div class="container h-100">
        <div class="d-flex justify-content-center h-100" style="margin-top:180px">
            <div class="user_card">
                <div class="d-flex justify-content-center">
                    <div class="brand_logo_container">
                        <img src="../img/logo.jpg" class="brand_logo" alt="Logo">
                        
                    </div>
                </div>
               
                <div class="justify-content-center form_container">
                    <h2 class="text-center">INICIA SESIÓN COMO ADMINISTRADOR</h2>
                    <asp:Label class="alert alert-danger" ID="alert" runat="server" Visible="False" Width="100%">
                         
                    </asp:Label>
                    

                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            
                            <asp:TextBox ID="carnet" class="form-control input_user" runat="server" placeholder="Correo" MaxLength="50"></asp:TextBox>
                        </div>
                        <div class="input-group mb-2">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            
                            <asp:TextBox ID="contraseña" class="form-control input_pass" runat="server" placeholder="Contraseña" MaxLength="50" TextMode="Password"></asp:TextBox>
                        </div>
                    

                        <div class=" justify-content-center mt-3 login_container">
                          
                            
                        
                        <asp:Button class="btn login_btn" ID="entrar" runat="server" Text="Iniciar sesion" OnClick="entrar_Click" />

                        <br />
                            <br /> 
                             <asp:Button class="btn login_btn" ID="cliente" runat="server" Text="Iniciar como cliente" OnClick="cliente_Click"  />
                        
                        </div>

                       
                    
                </div>

                <div class="mt-4">
                    
                    <div class="d-flex justify-content-center links">
                        <a class="link-danger" href="cambiar-contraseña.aspx">Olvido su contraseña?</a>
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

