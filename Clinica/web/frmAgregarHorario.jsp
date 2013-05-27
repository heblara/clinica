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
        <title>Agregar horario</title>
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
        $( "#datepicker" ).datepicker();
        });
        </script>
    </head>
    <body>
        <form name="frmAgregarDoctor" id="frmRegistro" method="post" action="guardarHorario.jsp">
        <table align="center" border="1">
            <caption><h1>Agregar un nuevo horario</h1></caption>
            <tr>
                <td>Fecha:</td>
                <td><input type="text" name="txtFecha" id="datepicker" required="required" /></td>
                <td>Hora:</td>
                <td><input type="text" name="txtHora" id="txtHora" required="required" /></td>
                <td>Doctor:</td>
                <%
                Statement Estamento = conexion.createStatement();
                ResultSet rs = Estamento.executeQuery("select * from doctor");
                %>
                <td><select name="lstDoctor">
                        <%
                        while(rs.next()){
                        %>
                        <option value="<% out.print(rs.getInt("iddoctor")); %>"><% out.print(rs.getString("Nombre")+" "+rs.getString("Apellido")); %></option>
                        <%
                        }
                        %>
                    </select></td></td>
            </tr>
            <tr>
                <td colspan='2'><input type='submit' value="Guardar" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>
