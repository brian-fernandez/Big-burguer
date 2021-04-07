<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="opciones.aspx.cs" Inherits="restaurantemenu.enlaces.opciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Opciones</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="../css/menu-administrativo.css">
    <link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <link rel="stylesheet" href="../estilos/nav.css"
</head>
<body>
    <form id="form1" runat="server">

<!-- NAVEGADOR -->
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
    </style>
        <nav>
    <asp:Panel ID="PanelCredenciales" runat="server" >

        <div class="row1">
            <div class="col-sm-21">
                <asp:ImageButton CssClass="input1" ID="opciones1" runat="server" ImageUrl="https://apimur.com/wp-content/uploads/2020/05/WEB-Avatar-2-gerente.png"  Width="110px" />
            </div>
            <div class="col-sm-21">
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
        <!-- FIN DE NAVEGADOR-->

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       
         <asp:GridView ID="gridcliente" runat="server" Visible="False" OnSelectedIndexChanged="gridcliente_SelectedIndexChanged">
        </asp:GridView>
       
         <div class="container-fluid d-flex " style="margin-top:90px;">
        <img src="../img/iconos/configuraciones (1).png" width="60px" height="60px" alt="" class="p-2">
        <h1 class="p-2">Opciones</h1>
    </div>
   
        <!--- TABS -->
       <div class="container-fluid border-1">
           <div class="row">
               <div class="col-sm-2  p-0">
               
                   <div class="shadow p-3 mb-5 bg-body rounded">

                     <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="perfil" runat="server" Text="Perfil" OnClick="perfil_Click" Visible="False" />
                    <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="historial_de_compras" runat="server" Text="Historial de compras" OnClick="historial_de_compras_Click" Visible="False" />
                    <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="lista_personal" runat="server" Text="Lista del Personal" OnClick="lista_personal_Click" Visible="False" />
                    <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="lista_pedidos" runat="server" Text="Lista de pedidos" OnClick="lista_pedidos_Click" Visible="False" />
                   <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="buscar_cliente" runat="server" Text="Buscar cliente" OnClick="buscar_cliente_Click" Visible="False" />
                    <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="reportes_ventas" runat="server" Text="Reporte de ventas" OnClick="reportes_ventas_Click" />
                   <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="registro_cliente" runat="server" Text="Registro de cliente" OnClick="registro_cliente_Click" Visible="False"  />
                   <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="registro_personal" runat="server" Text="Registro de personal" OnClick="registro_personal_Click" Visible="False"  />
                        <asp:Button CssClass="btn btn-dark w-100 rounded-0 p-3 text-start" ID="agotar_stock" runat="server" Text="Agotar stock" OnClick="agotar_stock_Click" Visible="False"  />
                   <asp:Button CssClass="btn btn-warning w-100 rounded-0 p-3 text-start" ID="salir" runat="server" Text="Cerrar sesion" OnClick="salir_Click" />
              
                   </div>
               
               </div>

               <!-- Fin de tabs-->
               

                   <div class="col-sm-10 p-0">
                       <div class="shadow p-3 mb-5 bg-body rounded">

                   <!-- PANEL DE DATOS PRINCIPALES-->


                   <asp:UpdatePanel ID="panelperfil" runat="server" Visible="True">
                       <ContentTemplate>
                           <asp:Panel ID="panelestatico" runat="server">
                                    <div class="row p-4">
                               <div class="col-sm-3  ">
                                   <asp:Label class="form-label text-warning" ID="s1" runat="server" Text="Nombre"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelnombre1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label class="form-label text-warning" ID="s2" runat="server" Text="Apellido Paterno"></asp:Label>
                                  <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelapellidop1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label class="form-label text-warning" ID="s3" runat="server" Text="Apellido Materno"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelapellidom1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label class="form-label text-warning" ID="s4" runat="server" Text="Correo"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelcorreo1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label class="form-label text-warning" ID="s5" runat="server" Text="Telefono"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labeltelefono1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label class="form-label text-warning" ID="s6" runat="server" Text="Numero de casa"></asp:Label>
                                  <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelnumerocasa1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                    <asp:Label class="form-label text-warning " ID="s7" runat="server" Text="Calle"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labelcalle1" runat="server" Text=""></asp:Label>
                                   <br />
                                   <br />
                                    <asp:Label class="form-label text-warning" ID="s8" runat="server" Text="Descripción"></asp:Label>
                                   <br />
                                   <br />
                                   <asp:Label CssClass="form-label" ID="labeldescripccion1" runat="server" Text=""></asp:Label>
                                   <br />
                               </div>
                             
                           </div>
                                <asp:Button CssClass="btn btn-primary" ID="edit" runat="server" Text="editar" OnClick="edit_Click" />
                           </asp:Panel>

                      

                           <asp:Panel ID="paneldidacticoperfil" runat="server" Visible="False">
                                 <div class="container w-75 mx-auto"> 
                                  <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Nombre</label>
                               
                                  <asp:TextBox class="form-control" ID="nombre" runat="server" Enabled="False" MaxLength="50"></asp:TextBox>
                               
                                      <asp:RequiredFieldValidator CssClass="alert alert-danger p-0" ID="RequiredFieldValidator1" runat="server" ErrorMessage="No se acepta campos vacios" ControlToValidate="nombre" EnableClientScript="False"></asp:RequiredFieldValidator>
                               
                              </div>
                              <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Apellido Paterno</label>
                                
                                    <asp:TextBox class="form-control" ID="apellp" runat="server" Enabled="False" MaxLength="50"></asp:TextBox>
                           
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="apellp" EnableClientScript="False" ErrorMessage="No se acepta campos vacios" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator>
                           
                              </div>

                           <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Apellido Materno</label>
                               
                                 <asp:TextBox class="form-control" ID="apellm" runat="server" Enabled="False" MaxLength="50"></asp:TextBox>
                           

                               </div>
                          <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Correo</label>
                              
                                <asp:TextBox class="form-control" ID="correo" runat="server" Enabled="False" MaxLength="60" TextMode="Email"></asp:TextBox>
                           


                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="correo" EnableClientScript="False" ErrorMessage="No se acepta campos vacios" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="correo" EnableClientScript="False" ErrorMessage="Ingrese un correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="alert alert-danger p-0"></asp:RegularExpressionValidator>
                                <asp:Label ID="l2" runat="server" CssClass="alert alert-danger p-0" Height="20px" Visible="False"></asp:Label>
                           
                              </div>

                           <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Telefono</label>
                              
                                 <asp:TextBox class="form-control" ID="telf" runat="server" Enabled="False" MaxLength="8" TextMode="Phone"></asp:TextBox>
                           


                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="telf" EnableClientScript="False" ErrorMessage="No se acepta campos vacios" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Ingrese solo numeros" ValidationExpression="^[0-9]*$" ControlToValidate="telf" CssClass="alert alert-danger p-0" EnableClientScript="False"></asp:RegularExpressionValidator>
                                <asp:Label ID="l1" runat="server" CssClass="alert alert-danger p-0" Height="20px" Visible="False"></asp:Label>
                           </div>


                           <div class="mb-3">
                                
                                 <div class="mb-3">
                                <asp:Label CssClass="form-label" ID="labelnucasa" runat="server" Text="Numero de casa"></asp:Label>
                                
                                    <asp:TextBox class="form-control" ID="txt_numerocasa1" runat="server" Enabled="False" MaxLength="50" ControlToValidate="txt_numerocasa1"></asp:TextBox>
                           
                              </div>

                               <div class="mb-3">
                                
                                 <div class="mb-3">
                                
                                     <asp:Label CssClass="form-label" ID="labelcalle" runat="server" Text="Calle"></asp:Label>
                                
                                    <asp:TextBox class="form-control" ID="txt_calle_1" runat="server" Enabled="False" MaxLength="100" ControlToValidate="txt_numerocasa1"></asp:TextBox>
                           
                              </div>

                                   <div class="mb-3">
                                
                                 <div class="mb-3">
                               

                                     <asp:Label ID="labeldescrip" CssClass="form-label" runat="server" Text="Descripción"></asp:Label>
                                
                                    <asp:TextBox class="form-control" ID="txt_descripccion_1" runat="server" Enabled="False" MaxLength="400" ControlToValidate="txt_numerocasa1"></asp:TextBox>
                           
                              </div>



                           <br />
                              
                               <asp:Button CssClass="btn btn-danger" ID="cancelar" runat="server" Text="Cancelar" Visible="False" OnClick="cancelar_Click" />
                               <asp:Button CssClass="btn btn-success" ID="guardar" runat="server" Text="Guardar" Visible="False" OnClick="guardar_Click" />
                             
                               </div>

                           </asp:Panel>


                         
                             
                             
                       </ContentTemplate>
                   </asp:UpdatePanel>

                   <!--PANEL DE HISTORIAL DE COMPRAS-->

                    <asp:UpdatePanel ID="panelhistorial" runat="server" Visible="False">
                       <ContentTemplate>
                       
                          <h1 class="bg-dark text-light text-center">HISTORIAL DE COMPRAS</h1>

                           <asp:GridView ID="gridhistorial" runat="server" Width="100%" OnRowCommand="gridhistorial_RowCommand" CellPadding="3">
                               <Columns>
                                   <asp:ButtonField CommandName="detalle" ButtonType="Button" Text="Detalle" ControlStyle-CssClass="btn btn-dark" />
                               </Columns>
                               <HeaderStyle BackColor="Black" ForeColor="White" />
                           </asp:GridView>

                   <asp:GridView ID="detallelista" runat="server" OnRowCommand="detallelista_RowCommand" OnSelectedIndexChanged="detallelista_SelectedIndexChanged" Width="100%" CellPadding="3" CssClass="table">
                       <HeaderStyle BackColor="Black" ForeColor="White" />
                       <RowStyle BackColor="White" BorderColor="Black" />
                           </asp:GridView>

                       </ContentTemplate>
                   </asp:UpdatePanel>

                   <!-- PANEL DE LISTA DEL PERSONAL-->
                      <asp:UpdatePanel ID="Listaspersonal" runat="server" Visible="False">
                       <ContentTemplate>
                       
                           <h1 class="text-center bg-dark text-light p-4">Lista del Personal</h1> 
          <asp:Panel ID="Panel1" runat="server">
        <div class="container-fluid mx-auto p-0" style="width: 100%;height: 280px;overflow-x: overlay;" >


            
          
                <asp:GridView CssClass="table" ID="ListaPersonaledit" runat="server" OnRowCommand="ListaPersonal2_RowCommand" Visible="False" CellPadding="3">
                <Columns>
                    <asp:ButtonField ControlStyle-CssClass="btn btn-success" ButtonType="Button" CommandName="seleccionar" Text="editar" >
                    <ControlStyle CssClass="btn btn-success" />
                    </asp:ButtonField>
                    <asp:ButtonField ControlStyle-CssClass="btn btn-danger" ButtonType="Button" Text="Despedir" CommandName="despedir" >
                    <ControlStyle CssClass="btn btn-danger" />
                    </asp:ButtonField>
                </Columns>
                    <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:GridView>
            </asp:Panel>


            <asp:Panel ID="Panel2" runat="server" Visible="false">

                
            <asp:TextBox ID="ci1" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <br />
        </div>

<div class="container p-2" style="width:50%;box-shadow: 10px 15px 45px rgb(0 0 0 / 17%);">


        <asp:Label class="form-label" ID="Label1" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox class="form-control" ID="nombre1" runat="server" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ControlToValidate="nombre1" EnableClientScript="False" ErrorMessage="No se admite campo vacio" ValidationGroup="1">No se admite campo vacio</asp:RequiredFieldValidator>
        <br />
        <asp:Label class="form-label" ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
        <asp:TextBox class="form-control" ID="apelllp1" runat="server" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator6" runat="server" ControlToValidate="apelllp1" EnableClientScript="False" ErrorMessage="No se admite campo vacio" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label class="form-label" ID="l3" runat="server" Text="Apellido Materno"></asp:Label>
        <asp:TextBox class="form-control" ID="apellm1" runat="server" MaxLength="50"></asp:TextBox>
        <br />
        <asp:Label class="form-label" ID="l4" runat="server" Text="Cargo"></asp:Label>
        <asp:TextBox class="form-control" ID="cargo1" runat="server" Enabled="False" aria-label="readonly input example" Width="20%"></asp:TextBox>
        <asp:DropDownList class="form-control"  ID="cargos1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombreCargo" DataValueField="nombreCargo" Visible="False" Width="20%">
        </asp:DropDownList>
    <br />


  
      
    <asp:Button class="btn btn-secondary" ID="cambiarcargo" runat="server" OnClick="cambiarcargo_Click" Text="Cambiar cargo" />
    
    <asp:Button class="btn btn-secondary" ID="mantener" runat="server" OnClick="mantener_Click" Text="Mantener cargo" Visible="False" />
       
    <br />
        <asp:Label class="form-label" ID="l5" runat="server" Text="Correo electronico"></asp:Label>
        <asp:TextBox class="form-control"  ID="correo1" runat="server" MaxLength="60" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator7" runat="server" ControlToValidate="correo1" EnableClientScript="False" ErrorMessage="No se admite campo vacio" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator CssClass="alert-danger" ID="RegularExpressionValidator3" runat="server" ControlToValidate="correo1" EnableClientScript="False" ErrorMessage="Ingrese un correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
        <br />
        <asp:Label class="form-label"  ID="l6" runat="server" Text="Telefono"></asp:Label>
        <asp:TextBox class="form-control" ID="telefono1" runat="server" MaxLength="8" TextMode="Phone"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator8" runat="server" ControlToValidate="telefono1" EnableClientScript="False" ErrorMessage="No se admite campo vacio" ValidationGroup="1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator CssClass="alert-danger" ID="RegularExpressionValidator4" runat="server" ControlToValidate="telefono1" EnableClientScript="False" ErrorMessage="Ingrese solo numeros" ValidationExpression="^[0-9]*$" ValidationGroup="1"></asp:RegularExpressionValidator>
        <br />
        <asp:Button CssClass="btn btn-success"  ID="cambiarsincargo" runat="server" OnClick="cambiarsincargo_Click" Text="Cambiar" ValidationGroup="1" />
        <asp:Button CssClass="btn btn-success" ID="cambiarconcargo" runat="server" OnClick="cambiarconcargo_Click" Text="Cambiar" Visible="False" ValidationGroup="1" />
        <asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" Text="Cancelar" OnClick="cancelar_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restauranteConnectionString %>" SelectCommand="SELECT [nombreCargo] FROM [Cargo] WHERE ([disponibilidad] = @disponibilidad)" ProviderName="<%$ ConnectionStrings:restauranteConnectionString.ProviderName %>">
            <SelectParameters>
                <asp:Parameter DefaultValue="disponible" Name="disponibilidad" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
            </asp:Panel>


     
                       </ContentTemplate>
                   </asp:UpdatePanel>


                    <!-- Lista de pedidos--->

                   <asp:UpdatePanel ID="panel_Lista_pedidos" runat="server" Visible="False">
                       <ContentTemplate>
                           <h1 class="bg-dark text-light text-center"> Lista de pedidos</h1>

                           <div class="container-fluid p-0" style="width: 100%; height: 280px; overflow-x: overlay;">
                           <asp:GridView ID="gridListapedidos" runat="server" Width="100%" OnRowCommand="gridListapedidos_RowCommand">
                               <Columns>
                                   <asp:ButtonField ControlStyle-CssClass="btn btn-success" ButtonType="Button" Text="Confirmar"  CommandName="confirmar" />
                                   <asp:ButtonField ControlStyle-CssClass="btn btn-warning" ButtonType="Button" Text="Detalle" CommandName="detalleventa" />
                               </Columns>
                               <HeaderStyle BackColor="Black" ForeColor="White" />
                           </asp:GridView>
                               </div>
                            <br />
                           <div class="container-fluid p-0" style="width: 100%; height: 280px; overflow-x: overlay;">
                           <asp:GridView ID="detalledeventa" runat="server"></asp:GridView></div>
                       </ContentTemplate>
                   </asp:UpdatePanel>


 <!-- Buscar clientes--->

                   <asp:UpdatePanel ID="panel_buscar_cliente" runat="server" Visible="False">
                       <ContentTemplate>
                           <h1 class="bg-dark text-light text-center"> Buscar cliente</h1>

                            
    <div class="container">
        
            <div>
                <div class="form-group">
                    <label for="exampleInputText">Ingrese Numero de CI:</label>
                    <asp:TextBox ID="TxtBci" class="form-control" type="text" runat="server" placeholder="Numero de carnet" MaxLength="9"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="alertrequerid" runat="server" ErrorMessage="Ingrese Numero de Cliente" ControlToValidate="TxtBci" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Button ID="BtnBuscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
                    &nbsp;&nbsp; &nbsp;&nbsp;

                </div>

            </div>
            <br />
            <br />
            <div>
                <asp:GridView ID="gridbuscarcliente" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="Black" BorderStyle="Solid" Width="100%" OnRowCommand="gridbuscarcliente_RowCommand">
                    <AlternatingRowStyle BackColor="White"  />
                    <Columns>
                        <asp:ButtonField ControlStyle-CssClass="btn btn-success" ButtonType="Button" Text="Atender" CommandName="atendercliente" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
            <br />
            <div>
            </div>


    </div>


                       </ContentTemplate>
                   </asp:UpdatePanel>
<!--Finaliza Buscar cliente-->

                    <!-- reportes_venta -->

                   <asp:UpdatePanel ID="panel_reportes_venta" runat="server" Visible="False">
                       <ContentTemplate>
                        <div class="container p-4 mx-auto p-0" >
                                                         <h1 class="bg-dark text-light text-center p-3">Informe de ventas</h1>
           

                            <p>Ingrese la fecha de inicio </p>

                            <asp:TextBox CssClass="form-control" ID="fechainicio" runat="server" TextMode="Date"></asp:TextBox>

                            <p>Ingrese la fecha de final </p>

                             <asp:TextBox CssClass="form-control" ID="fechafinal" runat="server" TextMode="Date"></asp:TextBox>

           
                        
                        <asp:Button ID="ver_informe" runat="server" OnClick="ver_informe_Click" Text="ver informe" />
                        </div>
                        <div>

                               <asp:Panel ID="Panel3" runat="server" Visible="False">
             <div class="container-fluid p-3">

                <div class="row">
                    <div class="col-sm-1">  <asp:Button class="input-group-text bg-dark text-light " ID="atras" runat="server" OnClick="atras_Click" Text="Atras" /></div>
                    <div class="col-sm-1"><input class="input-group-text bg-dark text-light " type="button" value="Imprimir" onclick="ImprimeDiv()"></div>
                    
                </div>

              
             
            </div>

 <div id="printable">
         <h1 class="bg-dark text-light text-center p-3">Reporte de venta</h1>

         
    <p class="p-3">Datos del personal que realiza el reporte</p>  
            
    <div class="container-fluid p-0" >
        <div class="row p-3 ">
            <div class="col-sm-6 p-3">
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Indentificación</span>
                    

                    <asp:TextBox CssClass="form-control" ID="id2" runat="server"></asp:TextBox>
                </div>
                <br>
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Nombre</span>
                    
            <asp:TextBox CssClass="form-control" ID="nombre2" runat="server"></asp:TextBox>
                </div>
                <br>
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Apellido</span>
                    
                    <asp:TextBox CssClass="form-control" ID="apellido2" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-6 p-3">
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Cargo</span>
                    <asp:TextBox CssClass="form-control" ID="cargo2" runat="server"></asp:TextBox>
                </div>
                <br>
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Fecha del reporte realizado</span>
                    <asp:TextBox CssClass="form-control" ID="fecharealizado1" runat="server"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-text bg-dark text-light">Fechas consultadas</span>
                    <asp:TextBox ID="fecha2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br>
                </div>
        </div>

    </div>
    <div class="container-fluid p-0" style="width: 100%; height: 280px; overflow-x: overlay;">
        <div class="card p-2" style="width: 100%">
        <asp:GridView ID="listadeconsulta" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>
    </div>

 </div>

    
       

            </asp:Panel>

                        </div>
                       </ContentTemplate>
                   </asp:UpdatePanel>

                    <!---Fin de reportes de venta-->

                    <!-- añadir_cliente--->

                   <asp:UpdatePanel ID="panel_añadir_cliente" runat="server" Visible="False">
                  <ContentTemplate>
                       <div class="container">
       
                           <asp:Panel ID="registrodecliente1" runat="server">
                                <div class="Contenedor1">
                <div class="row">
                    <div class="form-row">
                        <label for="exampleInputText" class="col-form-label">Numero de CI:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtCi1" class="form-control" type="text" runat="server" placeholder="Numero de carnet" MaxLength="9"></asp:TextBox>
                            <asp:Label ID="valci" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Nombre:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtNombre1" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resnombre" runat="server" ControlToValidate="TxtNombre1" EnableClientScript="False" ErrorMessage="* Ingrese su nombre" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Apellido Paterno:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtApp1" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resapp" runat="server" ControlToValidate="TxtApp1" EnableClientScript="False" ErrorMessage="* Ingrese su apellido paterno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-gorup col">
                        <label for="exampleInputText" class="col-form-label-sm">Apellido Materno:</label>
                        <div class="form-group col-md4">
                            <asp:TextBox ID="TxtApm1" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="resapm" runat="server" ControlToValidate="TxtApm1" EnableClientScript="False" ErrorMessage="* Ingrese su apellido materno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-row">
                        <label for="exampleInputText" class="col-form-label-sm">Fecha de Nacimiento:</label>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TxtFecha1" class="form-control form-control-sm" type="text" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="res4" runat="server" ErrorMessage="* Ingrese su fecha de nacimiento" ControlToValidate="TxtFecha1" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <label for="exampleInputText" class="col-form-label-sm">Telefono:</label>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TxtTelefono1" class="form-control form-control-sm" type="text" runat="server" MaxLength="8"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div>
                    <h5>Direccion de Vivienda</h5>
                </div>

                <div class="row">
                    <label for="exampleInputText" class="col-form-label-sm">Nombre de Calle:</label>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="TxtNcalle1" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resnc" runat="server" ControlToValidate="TxtNcalle1" EnableClientScript="False" ErrorMessage="* Ingrese el nombre de su calle" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                    <label for="exampleInputText" class="col-form-label-sm">Numero de Casa:</label>
                    <div class="form-group col-md-3">
                        <asp:TextBox ID="TxtNumcalle1" class="form-control form-control-sm" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resnumc" runat="server" ControlToValidate="TxtNumcalle1" EnableClientScript="False" ErrorMessage="* Ingrese el numero de su casa" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <label for="exampleInputText" class="col-form-label-sm">Descripcion:</label>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="TxtDescripcion1" class="form-control form-control-sm" placeholder="Descripcion de su vivienda" type="text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="resdec" runat="server" ControlToValidate="TxtDescripcion1" EnableClientScript="False" ErrorMessage="* Ingrese una descripcion" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:Button ID="BtnRegistrar" class="btn btn-success" runat="server" Text="Registrar Cliente" OnClick="BtnRegistrar_Click" />
                    </div>
                    <div>
                        <asp:Label CssClass="col-form-label" ID="LblRegistrar" runat="server" ForeColor="#009933"></asp:Label>
                    </div>
                </div>

            </div>
                           </asp:Panel>
                           <div id="Imprimir2">
            <div class="Contenedor2">
                <asp:Panel ID="paneldtos1" runat="server" Visible="False">
                    <div>
                        <h5>Registrar Cuenta de Usuario</h5>
                    </div>

                    <div class="row">
                        <label for="exampleInputEmail1" class="col-form-label-sm">Correo:</label>
                        <div class="form-group col-md-4" style="left: 0px; top: 0px">
                            <asp:TextBox ID="TxtCorreo1" class="form-control form-control-sm" runat="server" placeholder="Ingrese su correo" TextMode="Email"></asp:TextBox>
                           
                        </div>
                    </div>
                    <div class="row">
                        <label for="exampleInputEmail1" class="col-form-label-sm">Usuario:</label>
                        <div class="form-group col-md-4" style="left: 0px; top: 0px">
                            <asp:TextBox ID="TxtUsuario1" class="form-control form-control-sm" runat="server" placeholder="Ingrese un usuario" OnTextChanged="TxtUsuario_TextChanged" Enabled="False"></asp:TextBox>
                          
                        </div>
                        <label for="exampleInputPassword1" class="col-form-label-sm">Contraseña</label>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TxtPass1" class="form-control form-control-sm" runat="server" placeholder="Ingrese su contraseña"></asp:TextBox>
                         
                        </div>
                        <div>
                            <asp:Button ID="BtnGenerar" class="btn btn-info btn-sm" runat="server" Text="Generar Contraseña" OnClick="BtnGenerar_Click" />
                            &nbsp;&nbsp;</div>
                    </div>
                </asp:Panel>
            </div>
                               </div>
            <div class="Contenedor3">
                <asp:Button ID="BtnGuardar" class="btn btn-danger btn-lg btn-block" runat="server" Text="Guardar Cliente" OnClick="BtnGuardar_Click" Visible="False" />
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-outline-warning" OnClientClick="ImprimeDiv4()" Text="Imprimir" Visible="False" />
            </div>
            <div class="row">
                <asp:Label ID="LblValidar" runat="server" Text="" for="exampleInputText" class="col-form-label"></asp:Label>
            </div>
         <div class="container-fluid mx-auto p-0" style="width: 100%;height: 280px;overflow-x: overlay;" >
                           <asp:Panel ID="pdfimprimir" runat="server" Visible="False">
                               <div id="imprimirresivo">

        <div id="Imprimir" style="display: block; text-align: center; font-family: Times New Roman, Times, serif;" runat="server">
            <h2 style=" text-align: center;">Su Cuenta de Usuario</h2>
            <br />
            <br />
            <br />
            <asp:Label ID="LblN" runat="server" Text="" Style="text-align: center; font-weight: bold; font-size: 20px;"></asp:Label>
            <br />
            <br />
            ================================================<br />
            <asp:Label ID="Label3" runat="server" Text="Usuario: " Style="text-align: center"></asp:Label>
            <asp:Label ID="LblU" runat="server" Text="" Style="text-align: center; font-weight: bold;"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Contraseña: " Style="text-align: center"></asp:Label>
            <asp:Label ID="LblC" runat="server" Text="" Style="text-align: center; font-weight: bold;"></asp:Label>
            <br />
            ================================================
            <br />
            <br />
            <h3>Bienvenido!</h3>
            <br />
            <p>Para ingresar a nuestra pagina web y realizar sus pedidos desde casa,
                <br />
                nosotros le brindamos una cuenta para que ingrese a nuestra pagina web.</p>
            <br />
            <p>Su nombre de usuario: <span style="color: blue;">Numero de carnet</span></p>
            <p>Su contraseña: <span style="color: red;">Nom</span>bre<span style="color: red;">A</span>pellidopaterno<span style="color: red;">A</span>pellidomaterno<span style="color: red;">CI</span></p>
            <br />
            <p>Al momento de resgitrarse nosotros le asignamos un Usuario que es su Numero de Carnet de identidad<br />
                y su contraseña consta de las tres primeras letras de su nombre donde su inicial es mayuscula,<br />
                segidamente de las iniciales de sus apellidos en mayusculas y el primer numero de su CI.</p>
            <br />
            <p>Tambien puedes contactar con nosotros.</p>
        </div>

                           </div>
                           </asp:Panel>
             </div>
    </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                    <!--Fin de añadir cliente-->

                    <!-- añadir_personal--->

                   <asp:UpdatePanel ID="panel_añadir_personal" runat="server" Visible="False">
                       <ContentTemplate>
                           <h1 class="bg-dark text-light text-center"> Registro de Personal</h1>

                           <div class="container">
                <div class="container jumbotron bg-light boxshadow"/>
                <div class="form-group">
                    <label class="text-dark">C.I.:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" class="alert alert-danger p-0" runat="server" ControlToValidate="txtci4" EnableClientScript="False" ErrorMessage="Ingrese Cedula de Identidad" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator5" class="alert alert-danger" runat="server" ControlToValidate="txtci4" EnableClientScript="False" ErrorMessage="Ingrese solo Numeros" ValidationExpression="^[0-9]*$" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtci4" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Nombre:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" class="alert alert-danger" runat="server" ControlToValidate="txtnombre4" EnableClientScript="False" ErrorMessage="Ingrese Nombre" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator6" class="alert alert-danger" runat="server" ErrorMessage="Ingrese solo letras" ControlToValidate="txtnombre4" EnableClientScript="False" ValidationExpression="[A-Za-z ]*" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtnombre4" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Apellido Paterno:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" class="alert alert-danger" runat="server" ControlToValidate="txtpaterno4" EnableClientScript="False" ErrorMessage="Ingrese apellido paterno" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator7" class="alert alert-danger" runat="server" ErrorMessage="Ingrese solo letras" ControlToValidate="txtpaterno4" EnableClientScript="False" ValidationExpression="[A-Za-z ]*" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtpaterno4" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Apellido Materno:</label>
                    <asp:TextBox ID="txtmaterno4" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Contraseña:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" class="alert alert-danger" runat="server" ControlToValidate="txtcontraseña4" EnableClientScript="False" ErrorMessage="Ingrese contraseña" ValidationGroup="2" CssClass="alert alert-danger p-0"></asp:RequiredFieldValidator><asp:TextBox ID="txtcontraseña4" runat="server" CssClass="form-control" type="password" MaxLength="300"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Seleccione Cargo:</label>&nbsp;<asp:DropDownList ID="dlcargo4" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="nombreCargo" DataValueField="nombreCargo"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:restauranteConnectionString %>" SelectCommand="SELECT idCargo, nombreCargo FROM Cargo WHERE (disponibilidad = @disponibilidad)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="disponible" Name="disponibilidad" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label class="text-dark">Telf/Cel.:<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txttelefono4" CssClass="alert alert-danger p-0" EnableClientScript="False" ErrorMessage="Ingrese numero de telefono" ValidationGroup="2"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txttelefono4" CssClass="alert alert-danger p-0" EnableClientScript="False" ErrorMessage="Ingrese numero" ValidationExpression="^[0-9]*$" ValidationGroup="2"></asp:RegularExpressionValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="txttelefono4" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-dark">Correo:<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtcorreo4" CssClass="alert alert-danger p-0" EnableClientScript="False" ErrorMessage="Ingrese un correo" ValidationGroup="2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtcorreo4" CssClass="alert alert-danger p-0" EnableClientScript="False" ErrorMessage="Ingrese un correo valido" ValidationGroup="2"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="txtcorreo4" runat="server" CssClass="form-control" typt="email" MaxLength="60" TextMode="Email" ValidationGroup="2"></asp:TextBox>
                </div>
                <div align="center">
                    <asp:Button ID="Button2" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="Button2_Click1" ValidationGroup="2"/>
                </div>
                           </div>
                       </ContentTemplate>
                   </asp:UpdatePanel>


<!--Panel Agotar stock-->
  <asp:UpdatePanel ID="panelagotarstock" runat="server" Visible="False">
                               <ContentTemplate>
                                   <h1 class="bg-dark text-light text-center"> Agotar Stock</h1>

                                    <div class="container-fluid mx-auto p-0" style="width: 100%;height: 280px;overflow-x: overlay;" >
                                    <asp:GridView ID="gridwListapedidos" runat="server" CellPadding="5" OnRowCommand="gridwListapedidos_RowCommand">
                               <Columns>
                                   <asp:ButtonField ControlStyle-CssClass="btn btn-success" CommandName="habilitar" ButtonType="Button" Text="Habilitar" >
                                   <ControlStyle CssClass="btn btn-success" />
                                   </asp:ButtonField>
                                   <asp:ButtonField ControlStyle-CssClass="btn btn-danger" CommandName="inhabilitar" ButtonType="Button" Text="Deshabilitar" >
                                   <ControlStyle CssClass="btn btn-danger" />
                                   </asp:ButtonField>
                               </Columns>
                               <HeaderStyle BackColor="Black" BorderColor="White" ForeColor="White" Width="100%" />
                           </asp:GridView>
                                        </div>
                                   
                               </ContentTemplate>
                           </asp:UpdatePanel>

<!--Fin Panel Agotar stock-->





               </div>
               </div>
           </div>
       </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../js/opciones.js"></script>
    <script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js " integrity=" sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi " crossorigin=" anonymous "></script>
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js " integrity=" sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG " crossorigin=" anonymous "></script>
        <script src="../js/nav.js"></script>
    </form>
</body>
</html>

