<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Statement st = conexion.createStatement();
    String q = "select a.idhorario, a.fecha,a.hora,b.nombre,b.apellido "
            + "from horario a  inner join doctor b on a.doctor_iddoctor=b.iddoctor "
            + "where a.fecha>=CURDATE() and a.idhorario not in(select c.horario_idhorario "
            + "from consulta c where c.horario_idhorario=a.idhorario ) ORDER BY a.fecha,a.hora ASC";
    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

        Integer correlativo = 0;
        while (rs.next()) {
            correlativo++;
            if (correlativo.equals(1)) {
%>
<div id="container-horarios" class="ui-widget" align="center">
    <table id="tableHorariosConsulta" class="ui-widget ui-widget-content" width="70%">
        <thead>
            <tr class="ui-widget-header ">
                <th width="5%">#</th>
                <th width="50%">Doctor</th>
                <th width="5%">Fecha</th>
                <th width="5%">Hora</th>
                <th width="5%">Operacion</th>
            </tr>
        </thead>
        <tbody>
            <%            }
            %>

            <tr>
                <td align="center"><%= correlativo%></td>
                <td style="display:none"><%= rs.getString("idhorario")%></td>
                <td ><%= rs.getString("nombre")%> <%= rs.getString("apellido")%></td>
                <td align="center"><%= rs.getString("fecha")%></td>
                <td align="center"><%= rs.getString("hora")%></td>
                <td align="center"><input type="button" class="button" id="btnHorario<%= correlativo%>"  value="Reservar"/></td>
            </tr>
            <%
                    correlativo++;
                }
                if (correlativo > 0) {
            %>
        </tbody>
    </table>
</div>
<%            } else {
            out.print("<h2>No se encontraron horarios disponibles</h2>");
        }

    } else {
        out.print("<h2>No se encontraron horarios disponibles</h2>");
    }
%>