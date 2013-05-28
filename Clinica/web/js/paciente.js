$(window).load(function(){
    $( "#tabs" ).tabs();
    
    
    var loadHorariosDisponibles=function(){
        $.ajax({
            type: "POST",
            url: 'dataGridHorarios.jsp',            
            success: function(data){
                $('#tabs-1').html("");
                $('#tabs-1').html(data);
            },
            dataType: "html"        
        });
    }
    
    var loadConsultasInscritas=function(){
        $.ajax({
            type: "POST",
            url: 'dataGridConsultasInscritas.jsp',            
            success: function(data){
                $('#tabs-2').html("");
                $('#tabs-2').html(data);
            },
            dataType: "html"        
        });
    }
    
    
    
    var registrarHorario=function (idHorario,type){      
        $.ajax({
            type: "POST",
            url: 'registrarHorarioPaciente.jsp',            
            data: {
                idHorario : idHorario,
                type: type
            },
            success: function(data){                
                loadHorariosDisponibles();
                loadConsultasInscritas();
            },
            dataType:"text"        
        });
    }
    
    
    
    

    $('#imgClosed').click(function(){
        $.ajax({
            type: "POST",
            url: 'cerrarSesion.jsp',            
            success: function(data){                
                $(location).attr('href','index.jsp');                
            },
            dataType: "html"        
        });
    });
   
    
    $('#tabs-1').on('click','div > table > tbody > tr > td > .button',function(){       
        var idHorario=$(this).parents("tr").find("td").eq(1).html();
        $( "#dialog-confirm" ).dialog({
            resizable: false,
            height:155,
            width:300,
            modal: true,
            buttons: {
                "Confirmar": function() {
                    registrarHorario(idHorario,1);
                    
                    $( this ).dialog( "close" );
                },
                Cancel: function() {
                    $( this ).dialog( "close" );
                }
            }
        });
    });
    
    
    $('#tabs-2').on('click','div > table > tbody > tr > td > .cancelar',function(){       
        var idHorario=$(this).parents("tr").find("td").eq(1).html();        
        $( "#dialog-confirm2" ).dialog({
            resizable: false,
            height:155,
            width:300,
            modal: true,
            buttons: {
                "Confirmar": function() {
                    registrarHorario(idHorario,2);                   
                    $( this ).dialog( "close" );
                },
                Cancel: function() {
                    $( this ).dialog( "close" );
                }
            }
        });
    });
    
    //cargando controladores
    loadHorariosDisponibles();
    loadConsultasInscritas();
});




