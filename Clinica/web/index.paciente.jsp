<%-- 
    Document   : index.paciente
    Created on : 05-27-2013, 11:37:28 AM
    Author     : malvarado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modulo del Paciente</title>        
        <link rel="stylesheet" href="jquery-ui-1.10.3.custom/css/redmond/jquery-ui-1.10.3.custom.css" />
        <script src="jquery-ui-1.10.3.custom/js/jquery-1.9.1.js"></script>
        <script src="jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
        <script src="js/paciente.js"></script>
        <link rel="stylesheet" href="css/style.paciente.css" />
    </head>
    <body>
        <div>
            <h1>Bienvenido (<%= session.getAttribute("tipo_usuario")%>), <%= session.getAttribute("nombre")%></h1>
        </div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Horarios disponibles de consulta</a></li>
                <li><a href="#tabs-2">Historial de consultas inscritas</a></li>

            </ul>
            <div id="tabs-1">                
            </div>
            <div id="tabs-2">                
            </div>

        </div>
    </body>
</html>
