<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cambiar-contraseña.aspx.cs" Inherits="restaurantemenu.enlaces.cambiar_contraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/png" href="../img/inicio/hamburguesa.png" />
    <title>Recuperar contraseña</title>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
 <link href="../css/recuperar contraseña.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container padding-bottom-3x mb-2 mt-5">
	    
<asp:Panel ID="Panel1" runat="server"><div class="row justify-content-center p-5 bg-light" style="box-shadow: 0 15px 45px rgba(0,0,0,0.3);">
	        <div class="col-lg-8 col-md-10">
	            <div class="forgot">
	                <h2>¿Olvidaste tu contraseña?<asp:TextBox ID="identificador" runat="server" Visible="False"></asp:TextBox>
                    </h2>
	                <p>Cambie su contraseña en tres sencillos pasos. ¡Esto le ayudará a proteger su contraseña!</p>
	                <ol class="list-unstyled">
	                    <li><span class="text-primary text-medium">1. </span>Ingrese su carnet de identidad  a continuación.</li>
	                    <li><span class="text-primary text-medium">2. </span>Tendra que llenar unos campos con los credenciales correspondiente de su cuenta.</li>
	                    <li><span class="text-primary text-medium">3. </span>Llene los dos campos para cambiar la nueva contraseña.</li>
	                </ol>
	            </div>
	            
	                <div class="card-body">
	                    <div class="form-group"> <label for="email-for-pass">Ingrese su carnet</label> <asp:TextBox  class="form-control" ID="carnet" runat="server" placeholder="Carnet de indentidad" MaxLength="8" TextMode="Phone"></asp:TextBox>
							
                            <asp:Label CssClass="alert alert-danger" ID="alert" runat="server" Visible="False" Height="50px"></asp:Label> 
                            <asp:RequiredFieldValidator  CssClass="alert alert-danger" ID="req1" runat="server" ControlToValidate="carnet" ErrorMessage="Ingrese carnet" Height="50px" EnableClientScript="False"></asp:RequiredFieldValidator>
                            <br />
							<small class="form-text text-muted">
                            
                            El carnet de identidad tiene que estar registrado en la pagina web para recuperar la contraseña.</small> </div>
	                </div>
	                <div class="card-footer"> <asp:Button class="btn btn-success" ID="paso2" runat="server" Text="Ir al segundo paso" OnClick="paso2_Click" /><asp:Button class="btn btn-danger" ID="atras" runat="server" Text="Atrás para iniciar sesión" OnClick="atras_Click" /> </div>
	            
	        </div>
	    </div>
</asp:Panel>


<asp:Panel ID="Panel2" runat="server" Visible="False">
	 <div class="col-lg-8 col-md-10">
		  <div class="forgot">
	                <h2>Muy buenas  <asp:Label ID="nombre" runat="server" Visible="False"></asp:Label> </h2> 
	                <p>Complete los campos para realizar el cambio de contraseña</p>
	                <ol class="list-unstyled">
	    
	                    <li><span class="text-primary text-medium">1. </span>Ingrese el correo electronico del carnet ya registrado.</li>
						<asp:TextBox CssClass="form-control" ID="correoelectronico" runat="server"></asp:TextBox>
	               <asp:RegularExpressionValidator CssClass="alert alert-danger" ID="alert3" runat="server" ErrorMessage="Ingrese un correo valido" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="correoelectronico" Height="50px"></asp:RegularExpressionValidator>
					
					    <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="req2" runat="server" ControlToValidate="correoelectronico" EnableClientScript="False" ErrorMessage="Ingrese correo electronico" Height="50px"></asp:RequiredFieldValidator>
					
					    <asp:Label ID="alert0" runat="server" CssClass="alert alert-danger" Height="50px" Visible="False"></asp:Label>
					
					</ol>
			  <div class="card-footer"> <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Ir al tercer paso" OnClick="Button2_Click"  /><asp:Button class="btn btn-danger" ID="atras2" runat="server" Text="Atrás para iniciar sesión" OnClick="atras2_Click" /> </div>
			  
			    
	            

	            </div>

		
	              
		 </div>
</asp:Panel>

<asp:Panel ID="Panel3" runat="server" Visible="False">
	 <div class="col-lg-8 col-md-10">
		  <div class="forgot">
	                <h2>Ingrese su nueva contraseña</h2> 
	                <p>Los dos campos tiene que tener la misma contraseña</p>
	                <ol class="list-unstyled">
	    
	                    <li><span class="text-primary text-medium">1. </span>Nueva contraseña</li>
						<asp:TextBox CssClass="form-control" ID="contraseñanew" runat="server"></asp:TextBox>
	               <li><span class="text-primary text-medium">1. </span>Ingrese nuevamente contraseña</li>
						<asp:TextBox CssClass="form-control" ID="contraseñanew2" runat="server"></asp:TextBox>
					
					    <asp:Label ID="Label3" runat="server" CssClass="alert alert-danger" Height="50px" Visible="False"></asp:Label>
					
					</ol>
			  <div class="card-footer"> <asp:Button class="btn btn-success" ID="cambiarcontra" runat="server" Text="Cambiar contraseña" OnClick="Button3_Click"  /><asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="Atrás para iniciar sesión" OnClick="atras2_Click" /> </div>
			  
			    
	            

	            </div>

		
	              
		 </div>
</asp:Panel>




	</div>
		 <script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js " integrity=" sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi " crossorigin=" anonymous "></script>
        <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js " integrity=" sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG " crossorigin=" anonymous "></script>

    </form>
</body>
</html>
