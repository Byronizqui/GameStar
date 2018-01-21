
<%-- 
    Document   : catalogosAdmin
    Created on : 14/05/2018, 12:20:59 AM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Catálogos</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/semantic.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/catalogos.js"/></script>
    <script src="js/usuariosAdmin.js"/></script>
<script src="js/header.js"/></script>
<script src="js/jquery.paginemytable.js"></script>
<script src="js/utils.js"/></script>
<script src="js/lobibox.js"/></script>
<script src="js/demo.js"/></script>
<link rel="stylesheet" href="css/lobibox.min.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
</head>
<body>
    <button id="popupWindowBasic" class="btn btn-primary hidden">Window</button>
    <%@ include file="Fragmentos/header.jspf" %>

    <button id="basicInfo" class="btn btn-info hidden">Info</button>
    <button id="basicWarningAnimation" class="btn btn-warning hidden">Warning</button>
    <button id="basicError" class="btn btn-danger hidden">Error</button>
    <button id="basicSuccessPosition" class="btn btn-success hidden">Success</button>

    <div class="modal fade" id="myModal0" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="myModal0Title">Modal Header</h4>
                </div>
                <div class="modal-body" id="myModal0Message">
                    <p>This is a small modal.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModalVerificarEliminarCatalogo" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="myModalTitle">Confirmacion de borrado
                </div>


                <div class="modal-body" id="myModalMessage">
                    <p>Desea eliminar el catalogo, si confirma la acción no podrá ser recuperada.</p>
                    <p>¿Desea confirmar la eliminacion?</p>
                    <div class="form-group modal-footer">
                        <button type="reset" class="btn btn-default" id="btnEliminarCancelarCatalogo">Cancelar</button>
                        <button type="submit" class="btn btn-danger" id="btnEliminarCatalogo">Eliminar</button>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="myModalFormulario2" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Catalogos
                </div>
                <div class="modal-body" id="myModalMessage2">
                    <form role="form" onsubmit="return false;" id="formCatalogos">

                        <div class="form-group" id="groupNombre">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombreCatalogo" placeholder="Nombre" >
                        </div>
                        <div class="form-group" id="groupFechaLanzamientor">
                            <label for="director">Fecha de lanzamiento:</label>
                            <input type="Date" class="form-control" id="fechaLanzamiento" placeholder="Fecha de lanzamiento" >
                        </div>
                        <div class="form-group" id="groupPlataforma">
                            <label for="actorPrincipal">Plataforma:</label>
                            <input type="text" class="form-control" id="plataforma" placeholder="Plataforma" >
                        </div>
                        <div class="form-group" id="groupCategoria">
                            <label for="tipo">Categoria:</label>
                            <select id="categoria" name="tipo" class="form-control">
                            </select>
                        </div>
                        <div class="form-group" id="groupGenero">
                            <label for="cantidad">Cantidad existente:</label>
                            <input type="number" class="form-control" min='0' id="cantidadE" placeholder="0" >
                        </div>
                        <div class="form-group" id="groupJugadores">
                            <label for="cantidad">Número de jugadores:</label>
                            <input type="text" class="form-control" id="jugadores" placeholder="0" >
                        </div>
                        <div class="form-group" id="groupDesarrollador">
                            <label for="cantidad">Desarrollador:</label>
                            <input type="text" class="form-control" id="desarrollador" placeholder="Desarrollador" >
                        </div>
                        <div class="form-group" id="groupDistribuidor">
                            <label for="cantidad">Distribuidor:</label>
                            <input type="text" class="form-control" id="distribuidor" placeholder="Distribuidor" >
                        </div>
                        <div class="form-group" id="groupPrecioAlquiler">
                            <label for="precioAlquiler">Precio alquiler:</label>
                            <input type="text" class="form-control" id="precioAlquiler" placeholder="Digite el precio en dólares">
                        </div>
                        <div class="form-group" id="groupPrecioVenta">
                            <label for="precioVenta">Precio venta:</label>
                            <input type="text" class="form-control" id="precioVenta" placeholder="Digite el precio en dólares">
                        </div>
                        <div class="form-group" id="groupUrl">
                            <label for="urlImagen">URL de la imagen:</label>
                            <input type="text" class="form-control" id="urlImagen" placeholder="Introduzca el url de la imagen">
                        </div>
                        <div class="form-group" id="groupDescrip">
                            <label for="descripcion">Descripción:</label> 
                            <textarea class="form-control" id="descrip" placeholder="Información del catálogo"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="hidden" value="agregarCatalogo" id="catalogosAction"/>
                            <button type="button" class="btn btn-primary" id="enviarCatalogos">Guardar</button>
                            <button type="reset" class="btn btn-danger" id="cancelarCatalogos">Cancelar</button>
                        </div>
                        <div class="form-group height25" >
                            <div class="alert alert-success hiddenDiv" id="mesajeResult">
                                <strong id="mesajeResultNeg">Info!</strong> 
                                <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div>
        <h2>Gestión de Catálogos</h2>
        <br/>
        <center>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalFormulario2" id="btMostarForm0">Insertar Catálogo</button>
        </center>
        <table border="2" class="table table-hover table-condensed data-table ui" id="tablaCatalogos"></table>
    </div>
    <footer>
        <div id="footer" class="container well">
            <div>
                <div class="row">
                    <h3 class="footertext">Sobre Nosotros:</h3>
                    <br>
                    <div class="col-md-4">
                        <i class="fa fa-university bigicon fa-5x"></i>
                        <br>
                        <h4 class="footertext">GameStar</h4>
                        <p class="footertext">GameStar nace como parte del proyecto de Aplicaciones Informáticas Globales de la Universidad Nacional de Costa Rica.<br>
                    </div>
                    <div class="col-md-4">
                        <i class="fa fa-eye bigicon fa-5x"></i>
                        <br>
                        <h4 class="footertext">Objetivo</h4>
                        <p class="footertext">El objetivo de nuestro proyecto es simular un comercio dedicado al alquiler/venta de videojuegos.<br>
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
    <script src="js/session.js"/></script>
</body>
</html>
