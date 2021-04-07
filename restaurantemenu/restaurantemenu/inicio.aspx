<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="restaurantemenu.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/png" href="img/inicio/hamburguesa.png" />
    <link rel="stylesheet" href="css/inicio.css" />
    <link rel="stylesheet" href="css/mediaindex.css"
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/nav.css">





    <title>Inicio</title>
</head>
<body>
    <form id="form1" runat="server">
        <style>

        .row1{
    widows:100%;
    display:flex;
    padding:20px;
    font-size: 12px;
}
.col-sm-21{

    width:37%;

}
.col.col-sm-21 .input1{
    outline:none;
}
footer {
    background-color: #070708fa !important;
}

.inp {
    width: 50%;
    transition: 1s;
}

.titulo {
    font-family: 'Rubik', sans-serif;
    font-size: 2em;
    font-weight: 600;
}

.parrafo {
    letter-spacing: 2px;
}



.btn {
    display: inline-block;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: center;
    text-decoration: none;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    border-radius: .25rem;
    transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.btn-warning {
    color: #000;
    background-color: #ffc107;
    border-color: #ffc107;
}
nav .lista.show {
    top: 85px;
}
    </style>
        <nav>
    <asp:Panel ID="PanelCredenciales" runat="server" OnDataBinding="PanelCredenciales_DataBinding">

        <div class="row1">
            <div class="col-sm-21">
                <asp:ImageButton CssClass="input1" ID="opciones" runat="server" ImageUrl="https://apimur.com/wp-content/uploads/2020/05/WEB-Avatar-2-gerente.png" OnClick="opciones_Click" Width="110px" />
            </div>
            <div class="col-sm-21">
                <asp:Label ID="lbid" CssClass="lbcreden" runat="server" Text=""></asp:Label> <br />
                <asp:Label ID="lbnombre" CssClass="lbcreden" runat="server" Text=""></asp:Label>

                <asp:Label ID="Cargo" CssClass="lbcreden" runat="server" Text=""></asp:Label>

                <asp:Button ID="btsesion" BorderStyle="None" CssClass="user" runat="server" Text="Iniciar Sesión" OnClick="btsesion_Click" />
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


<div class="container-fluid  mx-auto contaner1-2" style="background-color: #e30b1a;padding: 116px 0px 10px 0px;">
    <img src="/img/inicio/logo.jpg" class="rounded mx-auto d-block" alt="" width="200px">
</div>

<div class="container-fluid p-0 m-0">
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" style="height: 100vh;">
            <div class="carousel-item active" style="background-color: #f4b639;" data-bs-interval="0">
                <img src="img/inicio/background.png" class="d-block w-100 imgback" alt="...">
                <div class="carousel-caption d-md-block text-start texto1">
                    <div class="row row1">
                        <div class="col-sm-6">
                            <h1 class="titulo-banner text-start">PIQUE <strong>MACHO</strong> </h1>
                            <p class="parrafo-banner">El pique macho o pique a lo macho es un plato típico de Bolivia. Consiste en trozos de carne de vaca y patatas fritas. También se le añade cebolla, locoto, huevos duros, mostaza, mayonesa y kétchup.</p>


                        </div>
                        <div class="col-sm-6">
                            <img src="img/inicio/pique.png" class="d-block imagen1" alt="" width="400px">
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="background-color: #f4b639;" data-bs-interval="0">
                <img src="img/inicio/background.png" class="d-block w-100 imgback" alt="...">
                <div class="carousel-caption d-md-block text-start texto1">
                    <div class="row row2">
                        <div class="col-sm-6">
                            <img src="img/inicio/burger2.png" alt="" class="d-block w-100 imagen1" width="500px">
                        </div>
                        <div class="col-sm-6">


                            <h1 class="titulo-banner text-start">HAMBUR <strong>GUESA</strong> </h1>
                            <p class="parrafo-banner">El pique macho o pique a lo macho es un plato típico de Bolivia. Consiste en trozos de carne de vaca y patatas fritas. También se le añade cebolla, locoto, huevos duros, mostaza, mayonesa y kétchup.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="background-color: #f4b639;" data-bs-interval="0">
                <img src="img/inicio/background.png" class="d-block w-100 imgback" alt="...">
                <div class="carousel-caption d-md-block text-start texto1">
                    <div class="row row3">
                        <div class="col-sm-6">
                            <h1 class="titulo-banner text-start">TA <strong>COS</strong> </h1>
                            <p class="parrafo-banner">El pique macho o pique a lo macho es un plato típico de Bolivia. Consiste en trozos de carne de vaca y patatas fritas. También se le añade cebolla, locoto, huevos duros, mostaza, mayonesa y kétchup.</p>
                        </div>
                        <div class="col-sm-6 ">
                            <img src="/img/inicio/tacos.png" alt="" class="d-block w-100 imagen1" width="500px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<!---Container2-->

<div class="container-fluid bg-light p-4 contenedor1">

    <h1 class="text-dark text-center titulo3">NUESTROS PLATOS</h1>
    <p class="text-center p-3 parrafo-1" style="    color: #999999;">Hecho a mano fresco a la medida. Aplastado para fijar el sabor en un bollo de brioche tostado
    </p>

    <div class="container-fluid contenedor1-2 ">
        <div class="row row-cols-1 p-0 mx-auto">
            <div class="col-auto">
                <div class="card" style="width: 18rem;">
                    <img src="img/inicio/burger2.png" class="card-img-top h-100 " alt="... ">
                    <div class="card-body text-center ">
                        <h5 class="card-title  ">Hamburguesa Con Queso De Tocino</h5>
                        <p class="card-text ">Falda ahumada, costillas tiernas, salchicha ahumada, tocino y cheddar con lechuga, tomate, barbacoa de la casa y rancho.</p>
                        
                        <asp:Button CssClass="btn btn-outline-warning"  ID="Button1" runat="server" Text="Comprar" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
            <div class="col-auto ">
                <div class="card" style="width: 18rem;">
                    <img src="/img/inicio/tacos.png" class="card-img-top h-100" alt="... ">
                    <div class="card-body text-center ">
                        <h5 class="card-title  ">Taco de carne completo
                            <br> <br></h5>
                        <p class="card-text ">Falda ahumada, costillas tiernas, salchicha ahumada, tocino y cheddar con lechuga, tomate, barbacoa de la casa y rancho.</p>
                       <asp:Button CssClass="btn btn-outline-warning"  ID="Button2" runat="server" Text="Comprar" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
            <div class="col-auto ">
                <div class="card " style="width: 18rem;">
                    <img src="/img/inicio/406-4062800_pollo-parrilla-tablita-menu-tablita-de-pollo.png" class="card-img-top h-100 " style="margin-top: 80px; padding: 10px;" alt="... ">
                    <div class="card-body text-center ">
                        <h5 class="card-title  ">Pollo a la parillada</h5>
                        <p class="card-text ">Falda ahumada, costillas tiernas, salchicha ahumada, tocino y cheddar con lechuga, tomate, barbacoa de la casa y rancho.</p>
                        <asp:Button CssClass="btn btn-outline-warning"  ID="Button3" runat="server" Text="Comprar" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
            <div class="col-auto ">
                <div class="card" style="width: 18rem;">
                    <img src="/img/inicio/pique.png" class="card-img-top h-100 " alt="... ">
                    <div class="card-body text-center ">
                        <h5 class="card-title  ">Pique Macho Completo</h5>
                        <p class="card-text ">Falda ahumada, costillas tiernas, salchicha ahumada, tocino y cheddar con lechuga, tomate, barbacoa de la casa y rancho.</p>
                        <asp:Button CssClass="btn btn-outline-warning"  ID="Button4" runat="server" Text="Comprar" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!--Container 3-->

<div class="container">
    <div class="row row-cols-1 p-3 mx-auto">
        <div class="col-auto caja1">

            <div class="imgcontainer3">
                <img src="/img/inicio/cocinero.png" class="mx-auto img-container3" alt="">
            </div>
            <p class="parrafo-container3 text-center">Servicio amable</p>
        </div>
        <div class="col-auto caja1">
            <div class="imgcontainer3">
                <img src="/img/inicio/libro-de-recetas (1).png" class="mx-auto img-container3" alt=""> </div>
            <p class="parrafo-container3 text-center">Recetas originales</p>
        </div>
        <div class="col-auto caja1">
            <div class="imgcontainer3"><img src="/img/inicio/marcador-de-posicion.png" class="mx-auto img-container3" alt=""></div>
            <p class="parrafo-container3 text-center">Ubicaciones <br>convenientes</p>
        </div>
        <div class="col-auto caja1">
            <div class="imgcontainer3">
                <img src="/img/inicio/motorcycle.png" class="mx-auto img-container3" alt="">
            </div>
            <p class="parrafo-container3 text-center">Dlivery rápido</p>
        </div>
    </div>
</div>


<!--Container4-->

<div class="container-fluid">
    <div class="row p-0 cadena" style="background-color: #f9f9f9;">
        <div class="col-sm-8 p-5" style="background-color: #eaaf37;">
            <h1 class="titulos-container4">Sobre nosotros</h1>
            <p class="parrafo-container4">
                Schmaltzy Bros Delicatessen surge de nuestra afición por los NY Deli. ​ Una combinación de Ingredientes de calidad y altos estándares es lo que nos diferencia de otros restaurantes del área. ​ Nuestra meta es satisfacer a cada uno de nuestros clientes.
            </p>
            <br>
            
            <asp:Button class="btn btn-outline-light w-25 justify-content-center" ID="Button5" runat="server" Text="Ver mas detalle" OnClick="Button5_Click" />
        </div>
        <div class="col-sm-2" style="background-color: #eaaf37;">
            <div class="imgcontainer4 ">
                <img src="/img/inicio/testimonial-one.png " alt=" ">
            </div>
        </div>
    </div>

</div>

<!--Container 5-->
<div class="container-fluid p-0" style="background-color: #f9f9f9;">
    <div class="container-fluid fix p-0">
        <div class="container-fluid text-center p-5 m-0 caja5">
            <p class="text-light p-3 titulo-banner">
                EL MEJOR SERVICIO DE LA HISTORIA</p>
            <p class="parrafosuperior2 text-light p-3 m-3">Nuestras 5 Estrellas garantizan que su experiencia con respecto a nuestra cocina será una que no olvidará.<br>

            </p>
            <strong class="p-5 h1 text-light">✦ ✦ ✦ ✦ ✦</strong>
        </div>
    </div>

</div>



<footer style="background-color:#070708fa;">

   


    <div class="container ">
        <div class="row text-light ">
            <div class=" col-sm-6 ">
                <p class="titulo ">Estudiantes</p>
                <p href=" "> Alejandro Jhunior Mollo Olios</p>
                <p href=" ">Brian Fernandez Mercado
                    <p>
                        <p href=" "> Felix Mamani Zurita </p>
                        <p href=" "> Kevin Campero Alvarez</p>

            </div>
            <div class=" col-sm-6 ">
                <p class="titulo ">Universidad Privada Domingo Savio</p>

            </div>
        </div>
    </div>
</footer>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js " integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG " crossorigin="anonymous ">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js " integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc " crossorigin="anonymous ">
</script>


<script src="js/nav.js"></script>
<script src="js/scrollindex.js"></script>
    </form>
</body>
</html>
