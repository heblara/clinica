<%-- 
    Document   : dataGridHorarios
    Created on : 05-27-2013, 03:50:03 PM
    Author     : malvarado
--%>


<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Statement st = conexion.createStatement();
    String q = "select a.idhorario, a.fecha,a.hora,b.nombre,b.apellido "
            + "from horario a inner join doctor b on a.doctor_iddoctor=b.iddoctor "
            + "where a.fecha>=CURDATE() and a.hora>=CURTIME()";

    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

%>
<div id="container-horarios" class="ui-widget" align="center">
    <table class="ui-widget ui-widget-content" width="50%">
        <tr class="ui-widget-header ">
            <th>#</th>
            <th>Doctor</th>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Operacion</th>
        </tr>
        <%
            Integer correlativo = 1;
            while (rs.next()) {
        %>
        <tr>
            <td align="center"><%= correlativo%></td>
            <td ><%= rs.getString("nombre")%> <%= rs.getString("apellido")%></td>
            <td align="center"><%= rs.getString("fecha")%></td>
            <td align="center"><%= rs.getString("hora")%></td>
            <td align="center"><a style="cursor: pointer" onclick="seleccionarHorario('<%=rs.getString("idhorario")%>')">Seleccionar</a></td>
        </tr>
        <%
                correlativo++;
            }

        %>
    </table>
</div>
<%
    } else {
        out.print("<h2>No se encontraron horarios disponibles</h2>");
    }
%>

