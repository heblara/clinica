<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    Integer idHorario = Integer.parseInt(request.getParameter("idHorario"));
    Integer idPaciente = Integer.parseInt(session.getAttribute("idpaciente").toString());

    Statement st = conexion.createStatement();

    String q = "INSERT INTO consulta (paciente_idpaciente,horario_idhorario) VALUES (" + idPaciente + "," + idHorario + ")";
    out.print(q);
    if (!conexion.isClosed()) {
        //int m = st.executeUpdate(q);
        //out.print(m);        
    }


%>
