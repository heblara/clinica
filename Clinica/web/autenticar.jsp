<%-- 
    Document   : autenticar
    Created on : 05-27-2013, 01:43:57 AM
    Author     : Heber
--%>
<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    String user = request.getParameter("txtUsuario");
    String contrasena = request.getParameter("txtPwd");
    Statement st = conexion.createStatement();

    String q = "SELECT a.idpaciente,a.nombre, a.apellido, b.usuario, b.tipousuario "
            + "FROM usuario b INNER JOIN paciente a ON b.usuario = a.Email "
            + "WHERE b.usuario = '" + user + "' AND b.contrasena  = MD5('" + contrasena + "')";

    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);

        String nombre = "";
        String apellido = "";
        String name_usuario = "";
        String tipousuario = "";
        String idpaciente="";


        while (rs.next()) {
            nombre = rs.getString("nombre");
            apellido = rs.getString("apellido");
            name_usuario = rs.getString("usuario");
            tipousuario = rs.getString("tipousuario").toLowerCase();
            idpaciente = rs.getString("idpaciente");
        }

        
        if (tipousuario.equals("paciente")) {
            session.setAttribute("nombre", nombre + " " + apellido);
            session.setAttribute("name_usuario", name_usuario);
            session.setAttribute("tipo_usuario", tipousuario);
            session.setAttribute("idpaciente", idpaciente);
            response.sendRedirect("index.paciente.jsp");
        } else {
            response.sendRedirect("index.jsp?msg=1");
        }
    }


%>
