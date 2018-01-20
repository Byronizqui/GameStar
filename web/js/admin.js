$(document).ready(function(){
   $('#categoria').click(function(){
       $(location).attr("href", "http://localhost:8080/WebAppGameStar/categoriasAdmin.jsp");
   });
   $('#catalogos').click(function(){
       $(location).attr("href", "http://localhost:8080/WebAppGameStar/catalogosAdmin.jsp");
   });
   $('#usuarios').click(function(){
       $(location).attr("href", "http://localhost:8080/WebAppGameStar/usuariosAdmin.jsp");
   });
});