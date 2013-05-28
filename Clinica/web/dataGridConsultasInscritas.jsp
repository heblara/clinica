<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Statement st = conexion.createStatement();
    Integer idPaciente = Integer.parseInt(session.getAttribute("idpaciente").toString());
    String q = "select a.idconsulta,a.estado,DATE_FORMAT(a.fecha_reserva,'%Y-%m-%d %H:%i:%s') fechare,b.fecha,b.hora,c.nombre,c.apellido "
            + "from consulta a inner join horario b on a.horario_idhorario=b.idhorario "
            + "inner join doctor c on b.doctor_iddoctor=c.iddoctor "
            + "where a.paciente_idpaciente=" + idPaciente+" ORDER BY b.fecha,b.hora ASC";
    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

        Integer correlativo = 0;
        while (rs.next()) {
            correlativo++;
            if (correlativo.equals(1)) {
%>
<div id="container-historialConsultas" class="ui-widget" align="center">
    <table id="tableHistorialConsultas" class="ui-widget ui-widget-content" width="70%">
        <thead>
            <tr class="ui-widget-header ">
                <th width="5%">#</th>
                <th width="40%">Doctor</th>
                <th width="5%">Fecha de Consulta</th>
                <th width="5%">Hora de Consulta</th>
                <th width="10%">Fecha Reservacion</th>
                <th width="5%">Operacion</th>
            </tr>
        </thead>
        <tbody>
            <%            }
            %>

            <tr>
                <td align="center"><%= correlativo%></td>
                <td style="display:none"><%= rs.getString("idconsulta")%></td>
                <td ><%= rs.getString("nombre")%> <%= rs.getString("apellido")%></td>
                <td align="center"><%= rs.getString("fecha")%></td>
                <td align="center"><%= rs.getString("hora")%></td>
                <td align="center"><%= rs.getString("fechare")%></td>
                <td align="center">
                    <%
                        if (rs.getString("estado").equals("P")) {
                    %>
                    <input type="button" class="button cancelar" id="btnCancelarConsulta<%= correlativo%>"  value="Cancelar"/>
                    <%
                    } else {
                    %>
                    <input type="button" class="button historial" id="btnHistorialConsulta<%= correlativo%>"  value="Historial"/>
                    <%
                        }
                    %>

                </td>
            </tr>
            <%
                    
                }
                if (correlativo > 0) {
            %>
        </tbody>
    </table>
</div>
<%            } else {
            out.print("<h2>No se encontraron consultas reservadas</h2>");
        }

    } else {
        out.print("<h2>No se encontraron consultas reservadas</h2>");
    }
%>