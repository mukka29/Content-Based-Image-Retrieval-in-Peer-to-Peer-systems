<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%
    String usr = request.getParameter("uname");
    String pas = request.getParameter("pass");
    System.out.println("username1"+usr);
    System.out.println("username1"+pas);
    String msg="";
    Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from server  where username='"+usr+"'");
    System.out.println("result"+rs);
    if (rs.next()) {
        if (rs.getString("username").equalsIgnoreCase(usr) && (rs.getString("password").equalsIgnoreCase(pas))){
            
           String username = rs.getString("username");
          
           
           
           
            
            System.out.println("Success");
            response.sendRedirect("server1.jsp?msg=Login Successfully");
        } else {
             System.out.println("Failed");
             System.out.println("user"+usr);
             System.out.println("pas"+pas);
             
            response.sendRedirect("serverlogin.jsp?pass=Incorrect Username or Password");
        }
    } else {
         System.out.println("Not Enter");
       response.sendRedirect("index.jsp?err=User does not exist");
    }

%>
