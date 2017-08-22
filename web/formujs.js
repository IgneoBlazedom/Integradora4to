function validar(){
	var name = document.getElementById('nombre').value;
	var house = document.getElementById('domicilio').value;
	var correo = document.getElementById('email').value;
	var del = document.getElementById('deleg').value;
	var col = document.getElementById('coli').value;
	var contra = document.getElementById('pass').value;
	var tel = document.getElementById('phone').value;
        var sex=null;
            for(i=0;i<fdatos.sexo.length;i++){
                    if (fdatos.sexo[i].checked) {
                            if (fdatos.sexo[i].value==="masculino") {
                                    sex="Masculino";
                                    break;
                            }
                            else if (fdatos.sexo[i].value==="femenino") {
                                    sex="Femenino";
                                    break;
                            }
                    }
            }
	if (name==="") {
		alert("Porfavor llena el nombre");
		document.getElementById('nombre').focus();
		return false;
	}
	if (contra === "") {
		alert ("Ingresa una contrasenia Porfavor");
		document.getElementById('pass').focus();
		return false;
	}
	if (house==="") {
		alert("Porfavor llena el domicilio");
		document.getElementById('domicilio').focus();
		return false;
	}
	if (correo==="") {
		alert("Porfavor llena el correo");
		document.getElementById('email').focus();
		return false;
	}
	if (del === "Seleccione una Delegacion") {
		alert ("No seleccionaste una Delegacion");
		return false;
	}
	if (col === "Seleccione una Colonia") {
		alert ("No seleccionaste una Colonia");
		return false;
	}
	if (tel === "") {
		alert ("Ingresa tu telefono Porfavor");
		document.getElementById('phone').focus();
		return false;
	}
        if (sex===null){
		alert('No seleccionaste sexo');
		return false;
	}

	alert("va");
        document.getElementById('popo').disabled = false;
}

function selec(value){
	if (value==="Azcapotzalco") {
		var i=0;
	    opcionper= ["Petrolera","Tlatilco","Nueva Santa Maria","Obrero Popular","San Alvaro","Claveria"];
	    for(i=0;i<opcionper.length;i++){
	    fdatos.colonia.options[i+1]= new Option (opcionper[i]);
	    }
	}
	else if (value==="Gustavo A. Madero") {
		var x=0;
	    opcionnom= ["Vallejo","Industrial","Estrella","La Joya","Lindavista","Guadalupe Tepeyac"];
	    for(i=0;i<opcionnom.length;i++)
			fdatos.colonia.options[i+1] = new Option (opcionnom[i]);
	}
	else if (value==="0") {
			var cuanto = fdatos.colonia.length;
			for(i=1; i<cuanto; i++)
				fdatos.colonia.options[1] = null;
	}
}

function soloLetras(e){
	var keyletter;
	if (window.event)
		keyletter= e.keyCode;
	else if (e.which)
		keyletter= e.which;

	if(keyletter>=65||keyletter===8||keyletter===9||keyletter===32||keyletter===35||keyletter===36||keyletter===37||keyletter===39||keyletter===46)
		return true;
	else
		return false;
}

function soloNums(e){
	var keyletter;
	if (window.event)
		keyletter= e.keyCode;
	else if (e.which)
		keyletter= e.which;

	if(keyletter<65)
		return true;
	else
		return false;
}

    

