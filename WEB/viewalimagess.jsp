<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<% Blob image = null;

    Connection con = null;

    byte[] imgData = null;

    Statement stmt = null;

    ResultSet rs = null;
    HttpSession ses = request.getSession();
    String userids = request.getParameter("id");
    System.out.println("your value"+userids);
           
    try {

        Class.forName("com.mysql.jdbc.Driver");

        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ascalableapproach", "root", "root");

        stmt = con.createStatement();

        rs = stmt.executeQuery("select pimage from imagupload where id = '"+userids+"'");

        if (rs.next()) {

            image = rs.getBlob("pimage");

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