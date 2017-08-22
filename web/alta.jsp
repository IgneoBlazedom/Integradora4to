<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<%
   String nomb = request.getParameter("nombree");
   int contraa = Integer.parseInt(request.getParameter("contrasena"));
   String domicilio = request.getParameter("domizzi");
   String deleg = request.getParameter("delegacion");
   String colonia = request.getParameter("colonia");
   String mail = request.getParameter("correo");
   String telefono = request.getParameter("fono");
   String sex = request.getParameter("sexo");
   
    Connection con = null;
    Statement sta = null;
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost/registro","root","n0m3l0");
        sta = con.createStatement();
    }
    catch (SQLException error){
        out.print(error.toString());
    }
    
    try{
        sta.executeUpdate("INSERT INTO datos values('"+nomb+"','"+contraa+"','"
        +domicilio+"','"+deleg+"','"+colonia+"','"+mail+"','"+telefono+"','"+sex+"');");
        out.println("<script>alert('Registro dado de alta exitosamente.')</script>");
        out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.00000001;URL=http://localhost:8080/WebApplication1/secci.html'/>");
        con.close();
    }
    catch (SQLException error){
        out.print(error.toString());
    }
    con.close();
   
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta</title>
    </head>
    <body>
    <ol>       
        <li>nombre: <%out.println(nomb);%></li>
        <li>contrase&ntilde;a: <%out.println(contraa);%></li>
        <li>domicilio: <%out.println(domicilio);%></li>
        <li>delegaci&oacute;n: <%out.println(deleg);%></li>
        <li>colonia: <%out.println(colonia);%></li>
        <li>correo: <%out.println(mail);%></li>
        <li>telefono: <%out.println(telefono);%></li>
        <li>Sexo: <%out.println(sex);%></li>
    </ol>
    <a href="index.html">Volver</a>
    </body>
</html>
