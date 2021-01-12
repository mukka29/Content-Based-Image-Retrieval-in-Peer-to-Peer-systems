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
              String s = request.getQueryString();
            System.out.println("your value="+s);
            session.setAttribute("breffid", s);
           
            int i = 1;
            Integer r = null;
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from imagupload  where id='" + s + "'");
            while (rs.next()) {
                r = rs.getInt("ratings");
            }            
            int a = r+1;
           
            System.out.println("here added " + a);
            int up = st.executeUpdate("update imagupload set ratings ='" + a + "' where id = '" + s + "'");
            if (up != 0) {
                response.sendRedirect("imagedetail.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
        %>
        
    </body>
</html>
<%
    
%>z