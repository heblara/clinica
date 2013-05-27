<%-- 
    Document   : guardarRegistro
    Created on : 05-17-2013, 11:14:50 PM
    Author     : Heber
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<% 
String nombre=request.getParameter("txtNombre");
String apellido=request.getParameter("txtApellido");
String jvp=request.getParameter("txtJvp");

//String q="insert into paciente(Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil) values(\"" +nombre+"\","+edad+","+estatura+"); ";
//String us="INSERT INTO usuario VALUES(0,'"+email+"','"+email+"','Paciente')";
String q="INSERT INTO doctor (Nombre,Apellido,jvpm) " + "VALUES('" +nombre+"','"+apellido+"','"+jvp+"')";
out.println(q);
Statement Estamento = conexion.createStatement();
try {
// agregando renglon (insert)
//int m=Estamento.executeUpdate(us);
int n=Estamento.executeUpdate(q);
//avisando que se hizo la instruccion
out.println("REGISTRO INSERTADO");
} catch(SQLException e) {out.println(e);};
%>