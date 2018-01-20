$(document).ready(function(){
   getCategorias();
});

function getCategorias() {
    $.ajax({
        url: 'CategoriasServlet',
        data: {
            accion: 'consultarCategorias'
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las categorías en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            dibujarCategoriasDrop(data);
        },
        type: 'POST',
        dataType: "json"
    });
}

function dibujarCategoriasDrop(data){
    $('#categoria').html("");
    for (var i =0; i < data.length; i++){
        if (data[i].CNombre.substring(0,2) === "P~"){
            $('#categoria').append("<option value=" + data[i].CId
                +">" +data[i].CNombre.substring(2, data[i].length) +"</option>");
        }
    }
}