<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<% Blob image = null;

    Connection con = null;

    byte[] imgData = null;

    Statement stmt = null;

    ResultSet rs = null;
    HttpSession ses = request.getSession();
    String userids = ses.getAttribute("userids").toString();
            System.out.println("User: " + userids);
//    String name = request.getParameter("name");
//    System.out.print("name in fun "+name);
    try {

        Class.forName("com.mysql.jdbc.Driver");

        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ascalableapproach", "root", "root");

        stmt = con.createStatement();

        rs = stmt.executeQuery("select image from userreg where id = '"+userids+"'");

        if (rs.next()) {

            image = rs.getBlob("image");

            imgData = image.getBytes(1, (int) image.length());

        } else {

            out.println("Display Blob Example");

            out.println("image not found for given image>");

            return;

        }

// display the image
        response.setContentType("image/gif");

        OutputStream o = response.getOutputStream();

        o.write(imgData);

        o.flush();

        o.close();

    } catch (Exception e) {

        out.println("Unable To Display image");

        out.println("Image Display Error=" + e.getMessage());

        return;

    } 

    
%> 