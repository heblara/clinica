<%-- 
    Document   : autenticar
    Created on : 05-27-2013, 01:43:57 AM
    Author     : Heber
--%>
<%@include file="conexion.jsp" %>
<%
String user=request.getParameter("txtUsuario");
String contrasena=request.getParameter("txtPwd");
Statement Estamento = conexion.createStatement();
String q="SELECT *"
 + " FROM usuario"
 + " WHERE usuario = '"+user+"'"
 + " AND contrasena = md5( '"+user+"' )";
ResultSet rs = Estamento.executeQuery(q);
if(rs.getRow()>0){
    if(rs.getString("tipousuario")=="Paciente"){
        out.println("Bienvenido paciente");
    }
}else{
    //response.sendRedirect("frmLogin.jsp?msg=1");
}
%>
