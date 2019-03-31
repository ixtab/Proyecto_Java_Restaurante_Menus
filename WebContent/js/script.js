onload=inicio;

function inicio(){
}


function buscar(){
	
    var cp = document.getElementById("cp").value;
    document.getElementById("consulta").style.display = "none";
    document.getElementById("progreso").style.display = "inherit";
    var xhr = new XMLHttpRequest();
    var resultado = "";
    xhr.onreadystatechange = function () {
 
        if (xhr.readyState == 4) {
        	
            if (xhr.status == 200) {
            	resultado = xhr.responseText;
            	
            	document.getElementById("cont2").style.display = "inherit";
            	document.getElementById("contenedor").classList.remove("margen-superior");
            	document.getElementById("cont2").innerHTML = resultado;
            	document.getElementById("progreso").style.display = "none";
            }
            else {
            	resultado = "Error de conexión";
            }
        }
    }
    
    var url = "http://localhost:8080/Api?cp=" + cp;
    xhr.open("GET", url);
    xhr.send();
    
}