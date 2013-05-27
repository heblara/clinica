<%-- 
    Document   : guardarRegistro
    Created on : 05-17-2013, 11:14:50 PM
    Author     : Heber
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<% 
String fecha=request.getParameter("txtFecha");
String hora=request.getParameter("txtHora");
int doctor=Integer.parseInt(request.getParameter("lstDoctor"));

//String q="insert into paciente(Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil) values(\"" +nombre+"\","+edad+","+estatura+"); ";
//String us="INSERT INTO usuario VALUES(0,'"+email+"','"+email+"','Paciente')";
String[] array=fecha.split("/");
String fechaNueva=array[2]+"-"+array[1]+"-"+array[0];
String q="INSERT INTO horario (Fecha,Hora,idDoctor) VALUES(DATE_FORMAT('"+fechaNueva+"','%Y-%m-%d'),'"+hora+"','"+doctor+"')";
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