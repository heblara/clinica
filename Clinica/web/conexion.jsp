<%@ page language="java" import="java.sql.*" %>
<%
    /*conexion sera nuestra conexion a la bd*/
    Connection conexion = null;
    Connection canal = null;
    String mensaje = "";

    /*parametros para la conexion*/
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/mydb";
    String usuario = "root";
    String clave = "admin";
    /*procedimiento de la conexion*/
    try {
        Class.forName(driver);
        conexion = DriverManager.getConnection(url, usuario, clave);

        /*guardando la conexion en la session*/
        session.setAttribute("conexion", conexion);
    } catch (Exception ex) {
        mensaje = ex.toString();
    }
    mensaje = "conectado";
    if (conexion.isClosed()) {
        mensaje = "desconectado";
    }
%>