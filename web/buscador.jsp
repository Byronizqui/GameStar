<%-- 
    Document   : usuariosAdmin
    Created on : 08-may-2018, 0:34:55
    Author     : Mery Zúñiga
--%>

<%-- 
    Document   : usuariosAdmin
    Created on : 08-may-2018, 0:34:55
    Author     : Mery Zúñiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultados de búsqueda</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/creative.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/header.js"/></script>
</head>
<body>
    <%@ include file="Fragmentos/header.jspf" %>
    <div class="body">
    <h3>Resultados de búsqueda: </h3></br>
    <%
        out.println("<input id=" + "name" + " type=" + "hidden" + " name=" + "nombre" + " value=" + request.getParameter("name") + ">");
    %>
    <div class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter" id="search">

            </div>
        </div>
    </div>  
    <!--            <div class="container2" id="buscar"></div>  -->
    <script src="js/buscador.js"/></script>
<footer>
    <div id="footer" class="container well">
        <div>
            <div class="row">
                <h3 class="footertext">Sobre Nosotros:</h3>
                <br>
                <div class="col-md-4">
                    <i class="fa fa-university bigicon fa-3x"></i>
                    <br>
                    <h4 class="footertext">GameStar</h4>
                    <p class="footertext">GameStar nace como parte del proyecto de Programación IV de la Universidad Nacional de Costa Rica.<br>
                </div>
                <div class="col-md-4">
                    <i class="fa fa-eye bigicon fa-3x"></i>
                    <br>
                    <h4 class="footertext">Objetivo</h4>
                    <p class="footertext">El objetivo de nuestro proyecto es simular un comercio dedicado al alquiler/venta de peliculas y/o series.<br>
                </div>
                <div class="col-md-4">
                    <i class="fa fa-code bigicon fa-5x"></i>
                    <h4 class="footertext">Programadores</h4>
                    <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> Allan Arce.<br>
                    <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> Johan Carballo.<br>
                    <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> David Lobo.<br>
                    <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> Bayron Picado.<br>
                    <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> Sergio Vargas.<br>
                </div>
            </div>
            <div class="row">
                <p class="footertext">Copyright 2018</p>
            </div>
        </div>
    </div>
</footer>
<button id="popupWindowBasic" class="btn btn-primary hidden">Window</button>
</div>
<script src="js/demo.js"/></script>
</body>

</html>
