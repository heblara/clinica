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
String dui=request.getParameter("txtDUI");
String email=request.getParameter("txtEmail");
String telefono=request.getParameter("txtTelefono");
String celular=request.getParameter("txtCelular");
String origen=request.getParameter("txtOrigen");
String direccion=request.getParameter("txtDireccion");
int municipio=Integer.parseInt(request.getParameter("lstMunicipio"));
int departamento=Integer.parseInt(request.getParameter("lstDepartamento"));
String estadocivil=request.getParameter("lstEstadoCivil");
String fechanac=request.getParameter("txtFechaNac");
String genero=request.getParameter("lstGenero");
out.print(request.getParameter("txtNombre"));
out.print(request.getParameter("txtApellido"));
//String q="insert into paciente(Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil) values(\"" +nombre+"\","+edad+","+estatura+"); ";
String us="INSERT INTO usuario VALUES(0,'"+email+"','"+email+"','Paciente')";
String q="INSERT INTO paciente (Nombre,Apellido,DUI,Email,Genero,FechaNac,LugarOrigen,EstadoCivil,Direccion,idmunicipio,Telefono,Celular,usuario_idusuario,municipio_idmunicipio,municipio_departamento_iddepartamento) "
 + "VALUES('" +nombre+"','"+apellido+"','"+dui+"','"+email+"','"+genero+"','"+fechanac+"','"+origen+"','"+estadocivil+"','"+direccion+"','"+municipio+"','"+telefono+"','"+celular+"','1','"+municipio+"','"+departamento+"')";
out.println(q);
Statement Estamento = conexion.createStatement();
try {
// agregando renglon (insert)
int m=Estamento.executeUpdate(us);
int n=Estamento.executeUpdate(q);
//avisando que se hizo la instruccion
out.println("REGISTRO INSERTADO");
} catch(SQLException e) {out.println(e);};
%>