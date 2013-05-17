<%-- 
    Document   : frmRegistroCliente
    Created on : 05-16-2013, 02:15:26 PM
    Author     : heblara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Cliente</title>
    </head>
    <body>
        <table align="center">
            <caption>Formulario de registro</caption>
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
                <td><input type="text" name="txtEmail" id="txtEmail" required="required" /></td>
                <td>Telefono:</td>
                <td><input type="text" name="txtTelefono" id="txtTelefono" required="required" /></td>
                <td>Movil:</td>
                <td><input type="text" name="txtMovil" id="txtMovil" required="required" /></td>
            </tr>
            <tr>
                <td>Lugar de origen:</td>
                <td><input type="text" name="txtLugar" id="txtLugar" required="required" /></td>
                <td>Departamento:</td>
                <td><select name="lstDepartamento">
                        <option value="1">San Salvador</option>
                        <option value="2">Santa Ana</option>
                        <option value="3">San Miguel</option>
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
    </body>
</html>
