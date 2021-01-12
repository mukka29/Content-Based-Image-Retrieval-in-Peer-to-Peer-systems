<%-- 
    Document   : reranking3
    Created on : Aug 20, 2015, 3:59:23 PM
    Author     : java1
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String id = request.getQueryString();
            System.out.println("User: " + id);
            String a=request.getParameter("imagename");
            String imagename=a.toUpperCase();
            String b=request.getParameter("imgsubname");
            String imgsubname=b.toUpperCase();
            String c=request.getParameter("imagcate");
            String imagcate=c.toUpperCase();
            String d = request.getParameter("color");
            String color=d.toUpperCase();
            String e=request.getParameter("description");
            String description=e.toUpperCase();
            int i = 1;
            Integer r = null;
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            
            int up = st.executeUpdate("Delete * from  imagupload  where id = '" + id+ "'");
            if (up != 0) {
                response.sendRedirect("allimagedetails.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
        %>
        
    </body>
</html>
<%
    
%>z