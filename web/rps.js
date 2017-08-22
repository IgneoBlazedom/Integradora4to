function khe(aidi) {
	var imagen = aidi.id;
	var chosing;

	if (imagen==="rock") {
		document.getElementById('combate').innerHTML = "<img src='rockblue.png'>";
		chosing = 'rock';
	}
	else if (imagen==="paper"){
		document.getElementById('combate').innerHTML = "<img src='paperblue.png'>";
		chosing = 'paper';
	}
	else if (imagen==="scissors") {
		document.getElementById('combate').innerHTML = "<img src='scissorsblue.png'>";
		chosing = 'scissors';
	}
	else return false;

	

	var vs = Math.floor(Math.random()*3 + 1);
	var varsas;
	var res;
	if (vs===1) {
		document.getElementById('versus0').innerHTML = "<img src='rockgreen.png'>";
		varsas = "rock";
	}
	else if (vs===2){
		document.getElementById('versus0').innerHTML = "<img src='papergreen.png'>";
		varsas = "paper";
	}
	else if (vs===3) {
		document.getElementById('versus0').innerHTML = "<img src='scissorsgreen.png'>";
		varsas = "scissors";
	}
	else return false;

	if (chosing===varsas)
		res = "Empate";
	else if (chosing==="rock"){
		if (varsas==="paper")
			res = "Perdiste"; 
		else
			res = "Ganaste!";
	}
	else if (chosing==="paper") {
		if (varsas==="rock")
			res = "Ganaste!";
		else
			res = "Perdiste";
	}
	else if (chosing==="scissors") {
		if (varsas==="rock")
			res = "Perdiste";
		else
			res = "Ganaste!";
	}

	document.getElementById('elecc').style.display = "none";
	document.getElementById('ress').style.display = "block";
	document.getElementById('final').style.display = "block";

	document.getElementById('resultado').innerHTML = res;

}