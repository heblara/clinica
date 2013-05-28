<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Statement st = conexion.createStatement();
    String search = request.getParameter("search").toString();
    String q = "";
    if (search.equals("*")) {
        q = "select * from medicamento where fecha_vencimiento>=CURDATE() order by fecha_vencimiento,nombre asc";
    } else {
        q = "select * from medicamento where fecha_vencimiento>=CURDATE() and nombre like '%"+search+"%' order by fecha_vencimiento,nombre asc";
    }

    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

        Integer correlativo = 0;
        while (rs.next()) {
            correlativo++;
            if (correlativo.equals(1)) {
%>
<div id="container-medicamentos" class="ui-widget" align="center">
    <table id="tableMedicamentos" class="ui-widget ui-widget-content" width="70%">
        <thead>
            <tr class="ui-widget-header ">
                <th width="5%">#</th>
                <th width="25%">Nombre</th>
                <th width="25%">Marca</th>
                <th width="5%">Fecha de Elaboracion</th>
                <th width="5%">Fecha de Vencimiento</th>                
            </tr>
        </thead>
        <tbody>
            <%            }
            %>

            <tr>
                <td align="center"><%= correlativo%></td>                
                <td style="margin-left: 15px"><%= rs.getString("nombre")%></td>
                <td style="margin-right: 15px"><%= rs.getString("marca")%></td>
                <td align="center"><%= rs.getString("fecha_elaboracion")%></td>
                <td align="center"><%= rs.getString("fecha_vencimiento")%></td>                
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
            out.print("<h2>No se encontraron medicamentos en existencias</h2>");
        }

    } else {
        out.print("<h2>No se encontraron medicamentos en existencias</h2>");
    }
%>