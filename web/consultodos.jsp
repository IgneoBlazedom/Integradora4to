<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*" %>

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
    cellspacing: 10px;
    border: 1px solid;
}

.woop td{
     border-right: 1px solid;
    cellspacing: 10px;
}


        </style>
    </head>
    <body>
        <div class="menu">
			<ul>
				<li><a href="index.html"><div>Inicio</div></a></li>
				<li><a href="secci.html"><div>Usuario</div></a></li>
				<li><a href="rps.html"><div>Juego</div></a></li>
				<li><a href="Consultas.html"><div>Consultas</div></a></li>
			</ul>
		</div>
        <div class="principal">
            <div style="height: 70px"></div>
            <center>
<%
    Connection c = null;
    Statement s = null;
    ResultSet r = null;
    
    try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       c = DriverManager.getConnection("jdbc:mysql://localhost/registro","root","n0m3l0");
       s = c.createStatement();
    }
    catch(SQLException error){
        out.println(error.toString());
    }
    
    try{
        r = s.executeQuery("SELECT * FROM datos");
        out.print("<table border='1' class='woop' cellspacing=10px;");
        int cont = 1;
        %>
    <tr>
        <td>#</td>
        <td>Nombre</td>
        <td>Contrase&ntilde;a</td>
        <td>domicilio</td>
        <td>delegacion</td>
        <td>colonia</td>
        <td>correo</td>
        <td>telefono</td>
        <td>sexo</td>
    </tr>
<%
        while (r.next()) {
                  int contra = r.getInt("contra");
                  String nombre = r.getString("nombre");
                  String domicilio = r.getString("domicilio");
                  String delegacion = r.getString("delegacion");
                  String colonia = r.getString("colonia");
                  String correo = r.getString("correo");
                  String telefono = r.getString("telefono");
                  String sexo = r.getString("sexo");
                  out.println("<tr>");
                  out.println("<td><b>"+cont+"</b></td>");
                  out.println("<td>"+nombre+"</td>");
                  out.println("<td>"+contra+"</td>");
                  out.println("<td>"+domicilio+"</td>");
                  out.println("<td>"+delegacion+"</td>");
                  out.println("<td>"+colonia+"</td>");
                  out.println("<td>"+correo+"</td>");
                  out.println("<td>"+telefono+"</td>");
                  out.println("<td>"+sexo+"</td>");
                  out.println("</tr>");
                  cont=cont+1;
              }
              out.println("</table>");
          }
    catch (SQLException error) {
              out.print(error.toString());
    }
%>
            </center>
<br>
        </div>
    </body>
</html>
