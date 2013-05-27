<%-- 
    Document   : frmRegistroCliente
    Created on : 05-16-2013, 02:15:26 PM
    Author     : heblara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Cliente</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style type="text/css" media="screen">
      /*la directiva include copia el contenido de un archivo y lo incrusta en la pagina*/
     <%@ include file="estilos.css" %>
</style>
    </head>
    <body>
        <form name="frmRegistro" id="frmRegistro" action="guardarRegistro.jsp">
        <table align="center" border="1">
            <caption><h1>Formulario de registro</h1></caption>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="txtNombre" id="txtNombre" required="required" /></td>
                <td>Apellido:</td>
                <td><input type="text" name="txtApellido" id="txtApellido" required="required" /></td>
                <td>DUI:</td>
                <td><input type="text" name="txtDUI" id="txtDUI" required="required" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="txtEmail" id="txtEmail" required="required" /></td>
                <td>Telefono:</td>
                <td><input type="text" name="txtTelefono" id="txtTelefono" required="required" /></td>
                <td>Movil:</td>
                <td><input type="text" name="txtMovil" id="txtMovil" required="required" /></td>
            </tr>
            <tr>
                <td>Genero:</td>
                <td><select name="lstGenero">
                        <option value="M">Masculino</option>
                        <option value="F">Femenino</option>
                    </select></td>
                    <td>Fecha de Nacimiento:</td>
                <td><input type="text" name="txtFechaNac" id="txtFechaNac" required="required" /></td>
                <td>Estado civil:</td>
                <td>
                    <select name="lstEstadoCivil">
                        <option value="1">Soltero/a</option>
                        <option value="2">Casado/a</option>
                        <option value="3">Divorciado/a</option>
                        <option value="3">Viudo/a</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Lugar de origen:</td>
                <td><input type="text" name="txtLugar" id="txtLugar" required="required" /></td>
                <td>Departamento:</td>
                <%
                Statement Estamento = conexion.createStatement();
                ResultSet rs = Estamento.executeQuery("select * from departamento");
                %>
                <td><select name="lstDepartamento">
                        <%
                        while(rs.next()){
                        %>
                        <option value="<% out.print(rs.getInt("iddepartamento")); %>"><% out.print(rs.getString("Descripcion")); %></option>
                        <%
                        }
                        %>
                    </select></td>
                <td>Municipio:</td>
                <td>
                    <select name="lstMunicipio">
                        <option value="1">San Salvador</option>
                        <option value="2">Soyapango</option>
                        <option value="3">Ilopango</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Direccion:</td>
                <td colspan='7'><textarea name="txtDireccion" id="txtDireccion"></textarea></td>
            </tr>
            <tr>
                <td colspan='2'><input type='submit' value="Registrarse" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>
