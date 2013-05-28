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
    String q="SELECT * FROM usuario WHERE usuario= '"+user+"' AND contrasena=MD5('"+contrasena+"')";
    /*String q = "SELECT a.idpaciente,a.nombre, a.apellido, b.usuario, b.tipousuario "
            + "FROM usuario b INNER JOIN paciente a ON b.usuario = a.Email "
            + "WHERE b.usuario = '" + user + "' AND b.contrasena  = MD5('" + contrasena + "')";*/
    if (!conexion.isClosed()) {
        ResultSet rs = st.executeQuery(q);
        String nombre = "";
        String apellido = "";
        String name_usuario = "";
        String tipousuario = "";
        String idpaciente="";


        while (rs.next()) {
            name_usuario = rs.getString("usuario");
            tipousuario = rs.getString("tipousuario").toLowerCase();
            /*nombre = rs.getString("nombre");
            apellido = rs.getString("apellido");
            idpaciente = rs.getString("idpaciente");*/
        }

        
        if (tipousuario.equals("paciente")) {
            String qu = "SELECT a.idpaciente,a.nombre, a.apellido, b.usuario, b.tipousuario "
            + "FROM usuario b INNER JOIN paciente a ON b.usuario = a.Email "
            + "WHERE b.usuario = '" + user + "' AND b.contrasena  = MD5('" + contrasena + "')";
            ResultSet r = st.executeQuery(qu);
            while(r.next()){
                nombre = r.getString("nombre");
                apellido = r.getString("apellido");
                idpaciente = r.getString("idpaciente");
            }
            session.setAttribute("nombre", nombre + " " + apellido);
            session.setAttribute("name_usuario", name_usuario);
            session.setAttribute("tipo_usuario", tipousuario);
            session.setAttribute("idpaciente", idpaciente);
            response.sendRedirect("index.paciente.jsp");
        } else if (tipousuario.equals("clinica")) {
            session.setAttribute("nombre", name_usuario);
            session.setAttribute("tipo_usuario", tipousuario);
            response.sendRedirect("index.clinica.jsp");
        } else {
            response.sendRedirect("index.jsp?msg=1");
        }
    }


%>
