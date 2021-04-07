<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactos.aspx.cs" Inherits="restaurantemenu.enlaces.contactos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <title>Contacto</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/png" href="../img//png/hamburguesa.png" />
    <link rel="stylesheet" href="../css/nav.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/scroll.css">


</head>
<body>

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
    
    <form id="form1" runat="server">


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


      <div class="container-fluid p-0">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15229.010554203864!2d-66.1628245155207!3d-17.399659337948336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93e373f77311dc8b%3A0x8ce7799aa5925ca!2sShopping%20Sucre!5e0!3m2!1ses!2sbo!4v1617646755486!5m2!1ses!2sbo"
            width="100%" height="700vh" style="border:0;" allowfullscreen="50px" loading="lazy"></iframe>
    </div>
    <div class="container-fluid p-3">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 border p-2">
                    <h2>Envíanos un mensaje</h2>

                    <form>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">TE LLAMAS:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">DIRECCIÓN DE CORREO ELECTRÓNICO:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">ASUNTO:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">TEXTO DEL MENSAJE:</label>
                            <textarea class="form-control" rows="" cols=""></textarea>

                        </div>
                        <button type="submit " class="btn btn-warning">Enviar</button>
                    </form>

                </div>
                <div class="col-sm-4 ">
                    <h2>Acerca de Lafka™</h2>
                    <div class="container p-4">
                        PO Box 16122 Collins Street West, Melbourne, Victoria 8007 Australia Teléfono: +61.3.8476.6487 Email: order@pizza.con
                    </div>

                    <div class="container p-4 border" style="background-color: #fafafa;">
                        <p>
                            <strong>Horas de cena</strong> <br> Lunes: 10:30am – 9pm Tue. – Sábado: 10:30am – 10pm Sun.: 12pm – 9pm</p>
                    </div>
                    <br>
                    <div class="container p-4 border" style="background-color: #fafafa;">
                        <p>
                            <strong>Pedidos especiales:</strong> <br> 55 19 65 81 86</p>
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
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js " integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG " crossorigin="anonymous ">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js " integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc " crossorigin="anonymous ">
</script>
<script src="../js/nav.js"></script>
    </form>
</body>
</html>
