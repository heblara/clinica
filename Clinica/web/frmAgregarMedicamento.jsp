<%-- 
    Document   : frmAgregarHorario
    Created on : 05-26-2013, 10:02:45 PM
    Author     : Heber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar medicamento</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css" />
        <%@ include file="conexion.jsp" %>
        <style type="text/css" media="screen">
      /*la directiva include copia el contenido de un archivo y lo incrusta en la pagina*/
     <%@ include file="estilos.css" %>
</style>
        <script>
        $(function() {
        $( ".datepicker" ).datepicker();
        });
        </script>
    </head>
    <body>
        <form name="frmAgregarMedicamento" id="frmRegistro" method="post" action="guardarMedicamento.jsp">
        <table align="center" border="1">
            <caption><h1>Agregar un nuevo medicamento</h1></caption>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="txtNombre" id="txtNombre" required="required" /></td>
                <td>Marca:</td>
                <td><input type="text" name="txtMarca" id="txtMarca" required="required" /></td>
            </tr>
            <tr>
                <td>Fecha Elaboracion:</td>
                <td><input type="text" name="txtFechaEl" class="datepicker" required="required" /></td>
                <td>Fecha Vencimiento:</td>
                <td><input type="text" name="txtFechaVen" class="datepicker" required="required" /></td>                
            </tr>
            <tr>
                <td>Existencia:</td>
                <td><input type="text" name="txtExistencia" required="required" /></td>
            </tr>
            <tr>
                <td colspan='4'><input type='submit' value="Guardar" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>
