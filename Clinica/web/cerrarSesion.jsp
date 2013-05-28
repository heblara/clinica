<%-- 
    Document   : cerrarSesion
    Created on : 05-28-2013, 08:52:41 AM
    Author     : malvarado
--%>
<%
    session.invalidate();
    out.print("closed");
%> 
