<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Statement st = conexion.createStatement();
    Integer idConsulta = Integer.parseInt(request.getParameter("idConsulta"));
    String q = "select * from receta where consulta_idconsulta=" + idConsulta + " order by idreceta asc";
    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

        Integer correlativo = 0;
        while (rs.next()) {
            correlativo++;
            if (correlativo.equals(1)) {
%>
<div id="container-receta" class="ui-widget" align="center">
    <div align="left"><input type="button" id="btnRegresar" name="btnRegresar" value="Regresar" class="regresar"></div>
    <table id="tableHistorialReceta" class="ui-widget ui-widget-content" width="70%">
        <thead>
            <tr class="ui-widget-header ">
                <th width="5%">#</th>
                <th width="40%">Receta</th>                
                <th width="5%">Operacion</th>
            </tr>
        </thead>
        <tbody>
            <%            }
            %>

            <tr>
                <td align="center"><%= correlativo%></td>                                
                <td align="center">Receta # <%= correlativo%></td>       
                <td><input type="button" id="btnMostrarDetalleReceta" name="btnMostrarDetalleReceta" value="Detalle" onclick="$('#detalleMedicamento<%=correlativo%>').toggle()"></td>                   
            </tr>
            <%
                Statement st2 = conexion.createStatement();

                String q2 = "select b.nombre,b.marca from receta_medicamento a "
                        + "inner join medicamento b on a.medicamento_idmedicamento=b.idmedicamento "
                        + "where receta_idreceta=" + rs.getInt("idreceta");

                ResultSet rs2 = st2.executeQuery(q2);

                Integer correlativo2 = 0;
                while (rs2.next()) {
                    correlativo2++;
                    if (correlativo2.equals(1)) {
            %>
            <tr id="detalleMedicamento<%=correlativo%>" style="display: none">
                <td></td>
                <td colspan="2" align="right">
                    <table width="60%">
                        <thead>
                            <tr class="ui-widget-header ">
                                <th width="30%">Medicamento</th>
                                <th width="30%">Marca</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                }

                            %>
                            <tr>
                                <td><%= rs2.getString("nombre")%></td>
                                <td><%= rs2.getString("marca")%></td>
                            </tr>
                            <%
                                }
                                if (correlativo2 > 0) {
                            %>
                        </tbody>
                    </table>
                </td>
            </tr>
            <%                        }
                }
                if (correlativo > 0) {
            %>
        </tbody>
    </table>
</div>
<%            } else {
            out.print("<h2>No se encontraron recetas en las consultas</h2>");
        }

    } else {
        out.print("<h2>No se encontraron recetas en las consultas</h2>");
    }
%>