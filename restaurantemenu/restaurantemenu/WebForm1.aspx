<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="restaurantemenu.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilos/men.css">
    <link rel="icon" type="image/png" href="img/inicio/hamburguesa.png" />
    <!--nav-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="estilos/nav.css"/>
    <link rel="stylesheet" href="css/footer.css" />
    <!--nav-->


       
</head>
<body>
    <form id="form1" runat="server">
        <script lang="javaScript">
            function popupToggle() {
                let popup = document.getElementById('popup');
                popup.classList.toggle('acti')
                document.getElementById('image').style.visibility = 'hidden';
            }
        </script>
    <div class="cent">
        <!--nav-->
        <nav>
            <asp:Panel ID="PanelCredenciales" runat="server">

                <div class="row">
                    <div class="col-sm-2">
                         <asp:ImageButton CssClass="input" ID="opciones" runat="server" ImageUrl="https://apimur.com/wp-content/uploads/2020/05/WEB-Avatar-2-gerente.png" OnClick="opciones_Click" Width="110px" />
                    </div>
                    <div class="col-sm-2">
                         <asp:Label ID="lbid" CssClass="lbcreden" runat="server" Text=""></asp:Label> <br />
                <asp:Label ID="lbnombre" CssClass="lbcreden" runat="server" Text=""></asp:Label>
                
                <asp:Label ID="Cargo" CssClass="lbcreden" runat="server" Text=""></asp:Label>
               
                <asp:Button ID="btsesion" CssClass="user" runat="server" Text="Iniciar Sesión" OnClick="btsesion_Click" />
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

    
        <!--nav-->


        <!--POP UPS-->

        <div class="popup acti" id="popup" >
            <asp:Panel ID="PanelVenta" runat="server">
                <div class="content-p">
                    <asp:Label ID="nombre" CssClass="h2" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="cod" CssClass="h2" runat="server" Text="Label" Visible="False"></asp:Label>

                    <asp:Image ID="image" CssClass=".img" runat="server" ImageUrl="~/img/delivery.jpg" />


                    <asp:Label ID="mensaje" CssClass="h2" runat="server" Text="¡TE LLEVAMOS EL PEDIDO A CUALQUIER PARTE DE LA CIUDAD DE COCHABAMBA!"></asp:Label>

                    <asp:Label ID="lbcantidad" CssClass="h2" runat="server" Text="Cantidad" Visible="False"></asp:Label>
                    <asp:DropDownList ID="lista" CssClass="cantidad" runat="server" Visible="False">

                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>

                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="lbprecio" CssClass="h2" runat="server" Text="Precio (Bs)" Visible="False"></asp:Label>
                    <asp:Label ID="precio" CssClass="h2" runat="server" Text="" Visible="False"></asp:Label>

                    <asp:Button ID="Comprar" CssClass="boton2" runat="server" Text="Comprar" Visible="False" OnClick="Comprar_Click" />

                </div>
                </asp:Panel>
                <a href="#" class="close" onclick="popupToggle();">
                    <img src="img/close.png" alt=""></a>


            <asp:Panel ID="PanelCarrito" runat="server" Visible="False">
                
                <asp:Label ID="lbcarrito" CssClass="h2" runat="server" Text="CARRITO" Visible="True"></asp:Label>
                <asp:GridView ID="gridcarrito" CssClass="grid" runat="server" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:Label ID="lbCostoTotal" runat="server" Text="0" Visible="false"></asp:Label>
                <asp:Label ID="lbventactual" runat="server" Text="0" Visible="false"></asp:Label>
                <asp:Button ID="btguardarventa" runat="server" CssClass="boton" Visible="false" Text="CONFIRMAR VENTA" OnClick="btguardarventa_Click" />
                <asp:Label ID="lbok" runat="server" Text="0" Visible="false"></asp:Label>
            </asp:Panel>
            
        </div>


        <asp:Panel ID="mini" runat="server" Visible="False" >
            <div class="mini-popup">
            
                <p>¿Desea realizar este pedido?</p>
                <asp:Label ID="lbidplato" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="cantidad" runat="server" Text="Label"></asp:Label> <br />
                <asp:Label ID="pedido" runat="server" Text="Label"></asp:Label> <br />
                <p>al precio de: </p>
                
                <asp:Label ID="lbtotal" CssClass="h2" runat="server" Text="Precio"></asp:Label> <br /> 
                <asp:Button ID="btsi" CssClass="bt" runat="server" Text="Si" OnClick="btsi_Click" />
                <asp:Button ID="btno" CssClass="bt" runat="server" Text="No" OnClick="btno_Click" />
            </div>
         </asp:Panel>





        <!-- end popups-->



        <div class="container" >
            <div class="card">
                <div class="imgBx">
                    <img src="img/descarga.jpg"  alt="" />
                </div>
                <div class="content">
                    <div>
                        <asp:Label ID="Label3" runat="server" CssClass="h2" Text="HAMBURGUESA"></asp:Label>
                        <p>
                            Carne de res con pan especial de semillas naturales, porcion de papas fritas francesas, ensalada de lechuga con tomate y cebolla. 
                        </p>
                        <br>
                        <asp:Button ID="btham" OnClientClick="popupToggle();" CssClass="boton"  runat="server" Text="Pedir" OnClick="btham_Click1"  />
                    </div>
                </div>
                
                
                
            </div>
            <div class="card">
                <div class="imgBx">
                    <img src="img/Durum.jpg" alt=""/>
                </div>
                <div class="content">
                    <div>
                        <asp:Label ID="Label2" runat="server" CssClass="h2" Text="TACOS"></asp:Label>
                        <p>
                            Trozos de carne de res, tortilla especial, granos de maiz, lechuga, tomate y salsa de pie de gallo.
                        </p>
                        <br />
                        
                        <br>
                        <asp:Button ID="bttac" OnClientClick="popupToggle();" CssClass="boton" runat="server" Text="Pedir" OnClick="bttac_Click" />
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="imgBx">
                    <img src="img/tres.jpg" alt="">
                </div>
                <div class="content">
                    <div>
                        <asp:Label ID="Label1" runat="server" CssClass="h2" Text="POLLO PARRILLA"></asp:Label>
                        <p>
                            Porcion de pollo a la parrilla, patatas al horno con ensalada a eleccion entre lechuga, tomate, cebolla y repollo 
                        </p>
                        <br>
                        <asp:Button ID="btpol" OnClientClick="popupToggle();" CssClass="boton" runat="server" Text="Pedir" OnClick="btpol_Click" />
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="imgBx">
                    <img src="img/cuatro.jpg" alt="">
                </div>
                <div class="content">
                    <div>

                        
                        <asp:Label ID="pique" runat="server" CssClass="h2" Text="PIQUE"></asp:Label>
                        <p>
                            Trozos de carne de res, papas fritas, salchicha de pollo y ensalada de cebolla, tomate y morrón.
                        </p>
                        <br>
                        <asp:Button ID="btpiq" OnClientClick="popupToggle();" CssClass="boton" runat="server" Text="Pedir" OnClick="btpiq_Click" />
                    </div>
                </div>
            </div>

        </div>
    </div>
        <script src="js/nav.js"></script>



    </form>
    
</body>
</html>
