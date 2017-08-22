<%-- 
    Document   : sesion
    Created on : 18/05/2017, 02:14:50 AM
    Author     : Hot Cakes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.io.*" %>
<%
    HttpSession sesion = request.getSession();
    String id = request.getParameter("boleta");
    int pass = Integer.parseInt(request.getParameter("contrasenia"));
    Connection c = null;
    Statement s = null;
    ResultSet ruser = null;
    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        c = DriverManager.getConnection("jdbc:mysql://localhost/registro", "root", "n0m3l0");
        s = c.createStatement();
    } catch (SQLException error) {
        out.print(error.toString());
    }
    try {
        ruser = s.executeQuery("call busca ('" + id + "','" + pass + "');");
        if (ruser.next()) {

            String usuario = ruser.getString("nombre");
            int contra = ruser.getInt("contra");
            String domicilio = ruser.getString("domicilio");
            String delegacion = ruser.getString("delegacion");
            String colonia = ruser.getString("colonia");
            String correo = ruser.getString("correo");
            String telefono = ruser.getString("telefono");
            String sexo = ruser.getString("sexo");

            sesion.setAttribute("usuario", usuario);
            sesion.setAttribute("contrasenia", contra);
            sesion.setAttribute("domicilio", domicilio);
            sesion.setAttribute("delegacion", delegacion);
            sesion.setAttribute("colonia", colonia);
            sesion.setAttribute("correo", correo);
            sesion.setAttribute("telefono", telefono);
            sesion.setAttribute("sexo", sexo);
            if(id.equals(usuario)&&pass==contra){
            response.sendRedirect("http://localhost:8080/WebApplication1/Perfil.jsp");}
            }
        else{
            out.print("<script>alert('El usuario o la contraseña son incorrectos');</script>");
        out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.00000001;URL=http://localhost:8080/WebApplication1/secci.html'/>");
        }
 
    }
    catch (SQLException error) {
        out.print("<script>alert('El usuario o la contraseña son incorrectos');</script>");
        out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.00000001;URL=http://localhost:8080/WebApplication1/secci.html'/>");
    }
%>