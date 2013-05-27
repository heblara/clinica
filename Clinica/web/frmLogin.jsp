<%-- 
    Document   : frmLogin
    Created on : 05-27-2013, 01:24:35 AM
    Author     : Heber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido, inicie sesión</title>
        <style type="text/css" media="screen">
      /*la directiva include copia el contenido de un archivo y lo incrusta en la pagina*/
     <%@ include file="estilos.css" %>
</style>
    </head>
    <body>
        <form name="frmLogin" method="post" id="frmRegistro" action="autenticar.jsp">
        <table align="center" border="1">
            <caption><h1>Iniciar sesi&oacute;n</h1></caption>
            <tr>
                <td>Usuario:</td>
                <td><input type="text" name="txtUsuario" id="txtUsuario" required="required" /></td>
            </tr>
            <tr>
                 <td>Contrase&ntilde;a:</td>
                <td><input type="password" name="txtPwd" id="txtPwd" required="required" /></td>
            </tr>
            <%
            if(request.getParameter("msg") !=  null){
            %>
            <tr>
                <td colspan="2"><%
                if(Integer.parseInt(request.getParameter("msg")) == 1){
                    out.println("Usuario y contraseña incorrectos");
                }
                %></td>
            </tr>
            <%
            }
            %>
            <tr>
                <td colspan='4'><input type='submit' value="Iniciar sesi&oacute;n" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    ¿A&uacute;n no se ha registrado? <a href="frmRegistroCliente.jsp">Entre aqui para llenar el formulario de registro</a>
                </td>
            </tr>
        </table>
        </form>
    </body>
</html>
