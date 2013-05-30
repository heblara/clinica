<%-- 
    Document   : guardarRegistro
    Created on : 05-17-2013, 11:14:50 PM
    Author     : Heber
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<%
    String nombre = request.getParameter("txtNombre");
    String apellido = request.getParameter("txtApellido");
    String dui = request.getParameter("txtDUI");
    String email = request.getParameter("txtEmail");
    String telefono = request.getParameter("txtTelefono");
    String celular = request.getParameter("txtCelular");
    String origen = request.getParameter("txtOrigen");
    String direccion = request.getParameter("txtDireccion");
    int municipio = Integer.parseInt(request.getParameter("lstMunicipio"));
    int departamento = Integer.parseInt(request.getParameter("lstDepartamento"));
    String estadocivil = request.getParameter("lstEstadoCivil");
    String fechanac = request.getParameter("txtFechaNac");
    String genero = request.getParameter("lstGenero");
    int id=0;
    out.print(request.getParameter("txtNombre"));
    out.print(request.getParameter("txtApellido"));
//String q="insert into paciente(Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil) values(\"" +nombre+"\","+edad+","+estatura+"); ";
    Statement Estamento = conexion.createStatement();
    String us = "INSERT INTO usuario VALUES(0,'" + email + "',md5('" + email + "'),'Paciente')";
    /*ResultSet rs=Estamento.executeQuery("select * from usuario");
           if(rs.next()){
               id=rs.getInt("idusuario");
           }*/
    String q = "INSERT INTO paciente (Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil,Direccion,idmunicipio,Telefono,Celular) "
            + "VALUES('" + nombre + "','" + apellido + "','" + dui + "','" + email + "','" + genero + "','" + fechanac + "','" + origen + "','" + estadocivil + "','" + direccion + "','" + municipio + "','" + telefono + "','" + celular + "')";
//out.println(q);
    try {
// agregando renglon (insert)
        int m = Estamento.executeUpdate(us);
        int n = Estamento.executeUpdate(q);
//avisando que se hizo la instruccion
        out.println("Su registro se ha realizado con exito.");
        out.println("<a href='index.jsp'>Clic aqui para iniciar sesion</a>");
    } catch (SQLException e) {
        out.println(e);
    };
%>