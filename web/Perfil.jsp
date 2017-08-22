<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>

            .boton1, .boton2, .boton3 {
                width: 20%;
                color: white;
                padding: 20px 15px;
                margin: 80px 10px 10px;
                cursor: pointer;
                font-family: Arial;
                font-size: 30px;
                text-align: center;

            }
            .boton1{
                background-color: rgb(41,78,5);
                border: 1px solid;
                border-color:rgb(41,78,5);
                border-radius: 4px;
                box-sizing: border-box;

            }
            .boton2{
                background: rgb(84,130,53); 
                border: 1px solid;
                border-color: rgb(84,130,53);
                border-radius: 4px;
                box-sizing: border-box;

            }
            .boton3{
                background-color: #C55A11;
                border: 1px solid;
                border-color: #C55A11;
                border-radius: 4px;
                box-sizing: border-box;

            }
            .boton4{
                background-color: #1d9f34;
                border: 1px solid;
                border-color: #1d9f34;
                border-radius: 4px;
                box-sizing: border-box;
                width: 30%;
                color: white;
                padding: 20px 15px;
                margin: 80px 10px 10px;
                cursor: pointer;
                font-family: Arial;
                font-size: 30px;
                text-align: center;
            }
            .div1{
                font-family: Arial;
                font-size: 2em;
                color: #777500;
                margin: 0 auto;
                width: 70%;
                padding: 5px;
            }

            .principal{
                width: 100%;
                height: 100%; 
                display: table; 
                float: left
            }

            img{
                width: 30%; 
                height: 20%;
                padding-top: 0; 
                border-radius:100%;
            }
            @media only screen and (max-width: 1147px){

                .boton1, .boton2, .boton3 {
                    padding: 15px 15px;
                    display: inline-block;
                    font-size: 25px;
                }
                .boton4{
                    padding: 15px 15px;
                    font-size: 25px;
                    display: inline-block;

                }
            }
            @media only screen and (max-width: 975px){

                .boton1, .boton2, .boton3 {
                    padding: 15px 15px;
                    display: inline-block;
                    font-size: 20px;
                }
                .boton4{
                    padding: 15px 15px;
                    font-size: 20px;
                    display: inline-block;
                }
            }
            @media only screen and (max-width: 912px){

                .boton1, .boton2, .boton3 {
                    width: 30%;
                    padding: 10px 15px;
                    display: inline-block;
                    font-size: 20px;
                }
                .boton4{
                    padding: 10px 15px;
                    font-size: 20px;
                    display: inline-block;
                }
            }
            @media only screen and (max-width: 779px){

                .boton1, .boton2, .boton3 {
                    width: 30%;
                    padding: 10px 15px;
                    display: inline-block;
                    font-size: 15px;
                }
                .boton4{
                    padding: 10px 15px;
                    font-size: 15px;
                    display: inline-block;
                }
            }
            @media only screen and (max-width: 594px){
                .boton1{
                    width: 60%;
                    margin: 40px 10px 20px;
                }
                .boton2, .boton3{
                    width: 60%;
                    margin: 20px 10px;
                }
                .boton4{
                    width: 60%;
                    margin: 20px 10px;
                    font-size: 12px;
                }
            }
            @media only screen and (max-width: 919px){
                img{
                    width: 40%; 
                    height: 30%;
                    margin-top: 10px; 
                }
            }
            @media only screen and (max-width: 524px){

                img{
                    width: 50%; 
                    height: 40%;
                }
            }
            @media only screen and (max-width: 413px){

                img{
                    width: 60%; 
                    height: 50%;
                }
            }
        </style>
        <script>
            function menu() {
                document.location = "index.html";
            }

            function numlet() {
                document.location = "numerosaletras.html";
            }

            function expand() {
                document.location = "expand.html";
            }
            
            function jugar() {
                document.location = ""
            }

        </script>
    </head>
     <%
            HttpSession sesion = request.getSession();
            String usuario = (String)sesion.getAttribute("usuario");
            String domicilio = (String)sesion.getAttribute("domicilio");
            String delegacion = (String)sesion.getAttribute("delegacion");
            String correo = (String)sesion.getAttribute("correo");
            String colonia = (String)sesion.getAttribute("colonia");
            String sexo = (String)sesion.getAttribute("sexo");
            String telefono = (String)sesion.getAttribute("telefono");
            
            
        %>
    <body>
        <div class="principal">
            <div class="superior">
            </div>
            <center>
                <div class="div1">
                    <br>
                    Hola de nuevo <%out.print(usuario);%>
                </div>
            </center><br>
                <center>
                <table style="border: none; font-family: Arial;font-size: 1.5em">
                <tr><td>Domicilio:</td> <td><%out.print(domicilio);%></td></tr>
                <tr><td>Delegacion:</td> <td><%out.print(delegacion);%></td></tr>
                <tr><td>Correo:</td> <td><%out.print(correo);%></td></tr>
               <tr><td>Colonia:</td> <td><%out.print(colonia);%></td></tr>
               <tr><td>Telefono:</td> <td><%out.print(telefono);%></td></tr>
               <tr><td>Sexo:</td> <td><%out.print(sexo);%></td></tr>
                </table>
                </center>
            <center>
                <input class="boton1" type="button" name="jugar" value="Menu Principal" onclick="menu();">
                <input  class="boton2" type="button" name="top" value="Números a Letras" onclick="numlet();" >
                <input  class="boton3" type="button" name="puntuaciones" value="Expandimagen" onclick="expand();">
                <!--<input class="boton4" type="button" name="editar" value="Ver y editar información" onclick="ver();" >-->
            </center>
        </div>
    </body>
</html>
