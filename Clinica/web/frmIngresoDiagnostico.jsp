<%-- 
    Document   : frmIngresoDiagnostico
    Created on : 05-27-2013, 10:01:45 AM
    Author     : heblara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diagnostico paciente</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style type="text/css" media="screen">
      /*la directiva include copia el contenido de un archivo y lo incrusta en la pagina*/
     <%@ include file="estilos.css" %>
</style>
    </head>
    <body>
        <form name="frmRegistro" id="frmRegistro" action="guardarDiagnostico.jsp">
        <table align="center" border="1">
            <caption><h1>Ingreso de diagnóstico</h1></caption>
            <tr>
                <td>#</td>
                <td>Fecha</td>
                <td>Doctor</td>
                <td>Horario</td>
            </tr>
            <%
            Statement Estamento = conexion.createStatement();
            ResultSet rs = Estamento.executeQuery("select * from consulta");
            %>
            <%
            while(rs.next()){
            %>
            <tr>
                <td><% out.print(rs.getInt("idconsulta")); %></td>
                <td><% out.print(rs.getString("Fecha")); %></td>
                <td>
                <%
                ResultSet doc = Estamento.executeQuery("select * from doctor where iddoctor='"+rs.getInt("idDoctor")+"'");
                while(doc.next()){
                    out.println(doc.getString("Nombre")+" "+doc.getString("Apellido"));
                }
                %>
                </td>
                <td><%
                ResultSet hor = Estamento.executeQuery("select * from horario where idhorario='"+rs.getInt("idHorario")+"'");
                while(hor.next()){
                    out.println(hor.getString("Fecha")+" "+hor.getString("Hora"));
                }
                %></td>
            </tr>
            <%
            }
            %>
        </table>
        </form>
    </body>
</html>
