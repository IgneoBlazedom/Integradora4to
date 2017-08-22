<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar</title>
        <style>
        .princ {
            width           : 1000px;
            height          : 900px;
            background-color: #CFEAE0;
            margin          : 0 auto;   
            padding: 30px;
        }
        </style>

    </head>
    <body>
        <div class="princ">
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
            
            nomb = request.getParameter("nombre");            
            r = s.executeQuery("SELECT * FROM datos WHERE nombre='"+nomb+"';");
            if ( !r.next()){
                out.println("<script>alert('El folio ingresado no existe')></script>");
            }
            else{
                try{
                    s.executeUpdate("delete from datos where nombre='"+nomb+"';");
                    out.println("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/WebApplication1/Consultas.html'/>");
                }
                catch(SQLException error){
                    out.print(error.toString());
                }       
            }
        %>
        hubo un problema al borrar el registro<br>
        <a href="index.html">Volver</a>
        </div>
    </body>
</html>
