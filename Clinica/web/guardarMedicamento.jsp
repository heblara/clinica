<%-- 
    Document   : guardarRegistro
    Created on : 05-17-2013, 11:14:50 PM
    Author     : Heber
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@include file="conexion.jsp" %>
<% 
String fecha=request.getParameter("txtFechaEl");
String fechaV=request.getParameter("txtFechaVen");
String nombre=request.getParameter("txtNombre");
String marca=request.getParameter("txtMarca");
int existencia=Integer.parseInt(request.getParameter("txtExistencia"));
//String q="insert into paciente(Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil) values(\"" +nombre+"\","+edad+","+estatura+"); ";
//String us="INSERT INTO usuario VALUES(0,'"+email+"','"+email+"','Paciente')";
String[] array=fecha.split("/");
String fechaNueva=array[2]+"-"+array[0]+"-"+array[1];
String[] array2=fechaV.split("/");
String fechaNuevaV=array2[2]+"-"+array2[0]+"-"+array2[1];
String q="INSERT INTO `mydb`.`medicamento` (`idmedicamento`, `Nombre`, `Marca`, `Fecha_Elaboracion`, `Fecha_Vencimiento`, `Existencia`) VALUES (NULL, '"+nombre+"', '"+marca+"', '"+fechaNueva+"', '"+fechaNuevaV+"', '"+existencia+"');";
//String q="INSERT INTO medicamento (Nombre,Marca,Fecha_Elaboracion,Fecha_Vencimiento,Existencia) "
        //+ "VALUES('"+nombre+"','"+marca+"',"+fechaNueva+"','"+fechaNuevaV+"','"+existencia+"')";
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