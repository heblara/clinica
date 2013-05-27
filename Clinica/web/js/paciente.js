$(function() {
    $( "#tabs" ).tabs();
    
    var loadHorariosDisponibles=function(){
        $.ajax({
            type: "POST",
            url: 'dataGridHorarios.jsp',            
            success: function(data){
                $('#tabs-1').html(data);
            },
            dataType: "html"
        
        });
    }
    
    loadHorariosDisponibles();
    

   
});


function registrarHorario(idHorario){
    $.ajax({
        type: "POST",
        url: 'registrarHorarioPaciente.jsp',            
        data: {
            idHorario : idHorario
        },
        success: function(data){
            console.log(data);
        },
        dataType: "html"
        
    });
}

function seleccionarHorario(idHorario){
    
    var confir=confirm("Desea registrase en este horario?");
    if(confir){
        registrarHorario(idHorario);
    }
}





