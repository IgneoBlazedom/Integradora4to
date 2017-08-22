//------------------------------------------------------------
// 							CARRUSEL
//------------------------------------------------------------
var indice =0;
            var Matriz = new Array();
            var conte1 =0;
            var conte2 =1;
            var conte3 =2;
            var conte4 =3;
            Matriz[0]  = "boognish1.png";
            Matriz[1]  = "Ween2.png";
            Matriz[2]  = "ween3.png";
            Matriz[3]  = "stallion.png";
            Matriz[4]  = "boognish2.png";
            Matriz[5]  = "pepper.png";
              function Principal(){
                  f1.src =Matriz[conte1];
                  f2.src =Matriz[conte2];
                  f3.src =Matriz[conte3];
                  f4.src =Matriz[conte4];
              }
              function FlechaIzquierda(){
                  if(conte1===5)
                  {
                      conte1=0;
                      f1.src=Matriz[conte1];
                  }
                  else
                  {
                      conte1++;
                      f1.src=Matriz[conte1];
                  }
                  if(conte2===5)
                  {
                      conte2=0;
                      f2.src=Matriz[conte2];
                  }
                  else
                  {
                      conte2++;
                      f2.src=Matriz[conte2];
                  }
                  if(conte3===5)
                  {
                      conte3=0;
                      f3.src=Matriz[conte3];
                  }
                  else
                  {
                      conte3++;
                      f3.src=Matriz[conte3];
                  }
                  
              } 
             function FlechaDerecha(){
                  if(conte1===0)
                  {
                      conte1=5;
                      f1.src=Matriz[conte1];
                  }
                  else
                  {
                      conte1--;
                      f1.src=Matriz[conte1];
                  }
                  if(conte2===0)
                  {
                      conte2=5;
                      f2.src=Matriz[conte2];
                  }
                  else
                  {
                      conte2--;
                      f2.src=Matriz[conte2];
                  }
                  if(conte3===0)
                  {
                      conte3=5;
                      f3.src=Matriz[conte3];
                  }
                  else
                  {
                      conte3--;
                      f3.src=Matriz[conte3];
                  }
                  
              } 


//------------------------------------------------------------
//------------------------------------------------------------

function fru(){
	switch (conte1){
		case 0:
		document.getElementById('perro').src = "prro1.html";
		break;
		case 1:
		document.getElementById('perro').src = "prro2.html";
		break;
		case 2:
		document.getElementById('perro').src = "prro3.html";
		break;
		case 3:
		document.getElementById('perro').src = "prro4.html";
		break;
		case 4:
		document.getElementById('perro').src = "prro5.html";
		break;
		case 5:
		document.getElementById('perro').src = "prro6.html";
		break;

	}
}

function fru2(){
	switch (conte2){
		case 0:
		document.getElementById('perro').src = "prro1.html";
		break;
		case 1:
		document.getElementById('perro').src = "prro2.html";
		break;
		case 2:
		document.getElementById('perro').src = "prro3.html";
		break;
		case 3:
		document.getElementById('perro').src = "prro4.html";
		break;
		case 4:
		document.getElementById('perro').src = "prro5.html";
		break;
		case 5:
		document.getElementById('perro').src = "prro6.html";
		break;

	}
}

function fru3(){
	switch (conte3){
		case 0:
		document.getElementById('perro').src = "prro1.html";
		break;
		case 1:
		document.getElementById('perro').src = "prro2.html";
		break;
		case 2:
		document.getElementById('perro').src = "prro3.html";
		break;
		case 3:
		document.getElementById('perro').src = "prro4.html";
		break;
		case 4:
		document.getElementById('perro').src = "prro5.html";
		break;
		case 5:
		document.getElementById('perro').src = "prro6.html";
		break;

	}
}
