<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Integer idHorario = Integer.parseInt(request.getParameter("idHorario"));
    Integer type = Integer.parseInt(request.getParameter("type"));
    Integer idPaciente = Integer.parseInt(session.getAttribute("idpaciente").toString());

    Statement st = conexion.createStatement();
    String q = "";
    if (type == 1) {
        q = "INSERT INTO consulta (idpaciente,idhorario,estado,fecha_reserva) VALUES (" + idPaciente + "," + idHorario + ",'P',NOW())";
    } else if (type == 2) {
        q = "DELETE FROM consulta WHERE idconsulta=" + idHorario;
    }
    try {
        if (!conexion.isClosed()) {
            int m = st.executeUpdate(q);
            out.print(m);
        }
    } catch (SQLException e) {
        out.println(e);
    }
%>
