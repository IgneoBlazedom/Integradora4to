<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        * { margin: 0; padding: 0; border: none; }

body {
	background-color: rgb(242,242,242);

      margin: 0;
      padding:0;
    
}


.principal {
	width           : 70%;
	height          : 900px;
	background-color: rgba(255,255,255,1);
	margin          : 0 auto;

    
}


@keyframes slideInFromLeft {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(0);
  }
}

.menu {
     animation: 1s ease-out 0s 1 slideInFromLeft;
    top: 0;
    margin-right:auto;
    margin-left:auto;
    margin-top:0px;
    padding: 0px;
	width             : 100%;
	height            : 50px;	
	position          : fixed;
	overflow          : hidden;
	box-sizing        : border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing   : border-box;

}

.menu ul {
    list-style-type : none;
    margin          : 0;
    padding         : 0;
    background-color  : rgba(119,119,119,0.95);
    height          : 100%;
    
    overflow        : hidden;
}

.menu li {
    float : left;
    height: 100%;
    width : 25%;
}

.menu li div {
    display           : block;
    color             : white;
    text-align        : center;
    padding           : 10px;
    height            : 100%;
    width             : 100%;
   	font-size         : 25px; 
   	font-weight       : bold;
   	font-family       : Arial;

    box-sizing        : border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing   : border-box;

    
    
}

.menu li div:hover {
    background-color: rgb(176,176,176);
    transition      : 0.4s;
    border-radius   : 0px;
    
}

.menu li a {
	text-decoration: none;
	color: white;
}
        
        .woop{
            font-family: Arial;
            font-size: 1.4em;
        }

        </style>
        
    </head>
    <body><div class="menu">
			<ul>
				<li><a href="index.html"><div>Inicio</div></a></li>
				<li><a href="secci.html"><div>Usuario</div></a></li>
				<li><a href="rps.html"><div>Juego</div></a></li>
				<li><a href="Consultas.html"><div>Consultas</div></a></li>
			</ul>
		</div>
        <div class="principal">
            <div style="height: 70px"></div><div style="margin:  0 auto; margin-left: 40%;">
            <%
          String nomb;
          Connection c = null;
          Statement s = null;
          ResultSet r = null;
          
          try{
              /*sadad*/
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              c = DriverManager.getConnection("jdbc:mysql://localhost/registro","root","n0m3l0");
              s = c.createStatement();
          }
          catch (SQLException error){
              out.print(error.toString());
          }
          //--------------------------------
          try{
              nomb = request.getParameter("nombre");
              r = s.executeQuery("select * from datos where nombre = '"+nomb+"';");
              
              if(r.next()){
                  int contra = r.getInt("contra");
                  String nombre = r.getString("nombre");
                  String domicilio = r.getString("domicilio");
                  String delegacion = r.getString("delegacion");
                  String colonia = r.getString("colonia");
                  String correo = r.getString("correo");
                  String telefono = r.getString("telefono");
                  String sexo = r.getString("sexo");
                  out.print("<span class='woop'>");
                  out.println(nombre+":<br>");
                  out.println("Contrase&ntilde;a: "+contra+"<br>");
                  out.println("Domicilio: "+domicilio+"<br>");
                  out.println("Delegaci&oacute;n: "+delegacion+"<br>");
                  out.println("Colonia: "+colonia+"<br>");
                  out.println("Correo: "+correo+"<br>");
                  out.println("Telefono: "+telefono+"<br>");
                  out.println("Sexo: "+sexo+"<br>");
                  out.print("</span>");
              }
              else{
                  out.println("<script>alert('no existe la persona.')</script>");
                  out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.00000001;URL=http://localhost:8080/WebApplication1/Consultas.html'/>");
              }
              
              //out.println("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/borrar/'/>");              
          }
          catch (SQLException error){
              out.print(error.toString());
          }
            %></div>
        </div>
    </body>
</html>
