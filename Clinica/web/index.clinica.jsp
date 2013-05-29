<%-- 
    Document   : index.paciente
    Created on : 05-27-2013, 11:37:28 AM
    Author     : malvarado
--%>
<%
    //verificacion que exista la session
    if (session.getAttribute("tipo_usuario") == null) {
        response.sendRedirect("index.jsp?msg=2");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modulo del Administrador de la Clinica</title>        
        <link rel="stylesheet" href="jquery-ui-1.10.3.custom/css/redmond/jquery-ui-1.10.3.custom.css" />
        <script src="jquery-ui-1.10.3.custom/js/jquery-1.9.1.js"></script>
        <script src="jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
        <script src="js/clinica.js"></script>
        <link rel="stylesheet" href="css/style.paciente.css" />
    </head>
    <body>
        <div>
            <table>
                <tr>
                    <td><h1>Bienvenido (<%= session.getAttribute("tipo_usuario")%>),</h1></td>
                    <td><img src="images/user.png" title="Usuario: <%= session.getAttribute("nombre")%>"></td>
                    <td><h1> <%= session.getAttribute("nombre")%></h1></td>
                    <td><img src="images/closed.png" title="Cerrar Sesion" id="imgClosed" style="cursor:pointer"></td>
                </tr>
            </table>            
        </div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Agregar horario</a></li>
                <li><a href="#tabs-2">Agregar Doctor</a></li>
                <li><a href="#tabs-3">Agregar Medicamento</a></li>
                <li><a href="#tabs-4">Ingresar diagnóstico</a></li>
            </ul>
            <div id="tabs-1">                
            </div>
            <div id="tabs-2">                
            </div>
            <div id="tabs-3">                
            </div>
            <div id="tabs-4">                
            </div>
        </div>

        <div id="dialog-confirm" title="Reservar consulta" style="display:none">
            <p>
                <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;">                    
                </span>Desea reservar este horario de consulta?</p>
        </div>

        <div id="dialog-confirm2" title="Cancelar consulta" style="display:none">
            <p>
                <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;">                    
                </span>Desea cancelar la consulta reservada?</p>
        </div>            

    </body>
</html>
