<%-- 
    Document   : frmAgregarDoctor
    Created on : 05-26-2013, 09:55:39 PM
    Author     : Heber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar un nuevo doctor</title>
        <style type="text/css" media="screen">
      /*la directiva include copia el contenido de un archivo y lo incrusta en la pagina*/
     <%@ include file="estilos.css" %>
</style>
    </head>
    <body>
       <form name="frmAgregarDoctor" method="post" id="frmRegistro" action="guardarDoctor.jsp">
        <table align="center" border="1">
            <caption><h1>Agregar un nuevo Doctor</h1></caption>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="txtNombre" id="txtNombre" required="required" /></td>
                <td>Apellido:</td>
                <td><input type="text" name="txtApellido" id="txtApellido" required="required" /></td>
                <td>JVP:</td>
                <td><input type="text" name="txtJvp" id="txtJvp" required="required" /></td>
            </tr>
            <tr>
                <td colspan='2'><input type='submit' value="Registrarse" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>
