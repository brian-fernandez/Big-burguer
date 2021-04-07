<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nosotros.aspx.cs" Inherits="restaurantemenu.enlaces.nosotros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nosotros</title>
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/png" href="../img//png/hamburguesa.png" />
    <link rel="stylesheet" href="../css/nav.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/nosotros.css">
    <link rel="stylesheet" href="../css/medianosotros.css">
    <link rel="stylesheet" href="../css/scroll.css">

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
nav .lista.show {
    top: 85px;
}
.col.col-sm-21 .input1{
    outline:none;
}
    </style>

'        <nav>
    <asp:Panel ID="PanelCredenciales" runat="server" OnDataBinding="PanelCredenciales_DataBinding">

        <div class="row1">
            <div class="col-sm-21">
                <asp:ImageButton CssClass="input1" ID="opciones" runat="server" ImageUrl="https://apimur.com/wp-content/uploads/2020/05/WEB-Avatar-2-gerente.png" OnClick="opciones_Click" Width="110px" />
            </div>
            <div class="col-sm-21">
                <asp:Label ID="lbid" CssClass="lbcreden" runat="server" Text=""></asp:Label> <br />
                <asp:Label ID="lbnombre" CssClass="lbcreden" runat="server" Text=""></asp:Label>

                <asp:Label ID="Cargo" CssClass="lbcreden" runat="server" Text=""></asp:Label>

                <asp:Button ID="btsesion"  BorderStyle="None" CssClass="user" runat="server" Text="Iniciar Sesión" OnClick="btsesion_Click" />
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







    <!--Container 1-->
    <div class="container-fluid p-0" style="background-color: #f9f9f9;">
        <div class="container-fluid fix p-0">
            <div class="container-fluid text-center p-5 m-0 caja5">
                <p class="text-light p-5 titulo-banner">
                </p>
                <p class="parrafosuperior2 text-light p-3 m-3 titulo-banner">ACERCA DE NOSOTROS
                </p>
                <strong class="p-5 h1 text-light"></strong>
            </div>
        </div>

    </div>

    <div class="conteiner-fluid p-5 contenedor" style="background-color: #e8e8e8;">
        <div class="container p-5" style="background-color: white;">
            <div class="row">
                <h1 class="">Nosotros</h1>
                <div class="col-sm-6 p-3">
                    <p class="p-5 parrafo">Schmaltzy Bros Delicatessen surge de nuestra afición por los NY Deli. ​ Una combinación de Ingredientes de calidad y altos estándares es lo que nos diferencia de otros restaurantes del área. ​ Nuestra meta es satisfacer a cada uno
                        de nuestros clientes.</p>
                </div>
                <div class="col-sm-6  p-3">
                    <img src="../img/inicio/habmruguesaback.jpeg" alt="" width="100%">

                </div>




                <div class="col-sm-6  p-3">
                    <img src="../img/inicio/habmruguesaback.jpeg" alt="" width="100%">
                </div>
                <div class="col-sm-6  p-3">
                    <h1 class="">Nuestro compromiso</h1>

                    <p class="p-5 parrafo">Nuestra meta es dejar 100% satisfechos a nuestros clientes, brindándoles el mejor servicio y atención, para lograr una experiencia Culinaria inolvidable y satisfactoria. ​ Estamos entusiasmados por mejorar día con día y ver crecer
                        nuestro proyecto.</p>


                </div>
            </div>
        </div>

        <div class="container-fluid p-5 " style="background-color: #e8e8e8;">
            <h1 class="text-center"> Nuestros Cocineros</h1>
            <div class="card-group">
                <div class="card p-3">
                    <div class="imagencard">
                        <img src="../img/inicio/testimonial-one.png" class="card-img-top" alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title">Chef</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita officia, odio aperiam deleniti voluptate suscipit rerum, reiciendis quis voluptatum quidem culpa, eos dolores autem? Amet ad quia nemo ipsam assumenda.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="imagencard2">
                        <img src="../img/inicio/testimonial-one2.png" class="card-img-top" alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title">Chef</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita officia, odio aperiam deleniti voluptate suscipit rerum, reiciendis quis voluptatum quidem culpa, eos dolores autem? Amet ad quia nemo ipsam assumenda.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="imagencard3">
                        <img src="../img/inicio/testimonial-one5.png" class="card-img-top" alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title">Chef</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita officia, odio aperiam deleniti voluptate suscipit rerum, reiciendis quis voluptatum quidem culpa, eos dolores autem? Amet ad quia nemo ipsam assumenda.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="imagencard4">
                        <img src="../img/inicio/testimonial-one4.png" class="card-img-top" alt="..."></div>
                    <div class="card-body">
                        <h5 class="card-title">Chef</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita officia, odio aperiam deleniti voluptate suscipit rerum, reiciendis quis voluptatum quidem culpa, eos dolores autem? Amet ad quia nemo ipsam assumenda.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <footer>

       


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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js " integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG " crossorigin="anonymous ">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js " integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc " crossorigin="anonymous ">
    </script>

    <script src="/js/nav.js"></script>
    </form>
</body>
</html>
