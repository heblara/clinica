<%-- 
    Document   : index
    Created on : 05-16-2013, 02:13:13 PM
    Author     : heblara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Bienvenido, inicie sesión</title>
        <meta name="description" content="Login" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />        
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script src="js/modernizr.custom.63321.js"></script>
    </head>
    <body>
        <div class="container">
            <section class="main">
                <form name="frmLogin" method="post" id="frmRegistro" action="autenticar.jsp" class="form-1">
                    <h1>Iniciar sesi&oacute;n</h1>
                    <p class="field">
                        <input type="text" name="txtUsuario" id="txtUsuario" required="required" placeholder="Usuario">
                        <i class="icon-user icon-large"></i>
                    </p>
                    <p class="field">
                        <input type="password" name="txtPwd" id="txtPwd" required="required" placeholder="Password">
                        <i class="icon-lock icon-large"></i>
                    </p>
                    <p class="submit">
                        <button type="submit" name="submit"><i class="icon-arrow-right icon-large"></i></button>
                    </p>
                    <p class="field">
                    <h3>¿A&uacute;n no se ha registrado? <br/><a href="frmRegistroCliente.jsp">Entre aqui para llenar el formulario de registro</a></h3>                        
                    </p>
                    <p class="field">
                    <h3 class="error"><%
                        if (request.getParameter("msg") != null) {

                            if (Integer.parseInt(request.getParameter("msg")) == 1) {
                                out.println("Combinacion de usuario y contraseña incorrecta");
                            } else if (Integer.parseInt(request.getParameter("msg")) == 2) {
                                out.println("Debe de iniciar sesion");
                            } else if (Integer.parseInt(request.getParameter("msg")) == 3) {
                                out.println("Su usuario no esta acreditado para el uso de este módulo");
                            }
                        }
                        %></h3>                        
                    </p>
                </form>
            </section>
        </div>
    </body>
</html>
