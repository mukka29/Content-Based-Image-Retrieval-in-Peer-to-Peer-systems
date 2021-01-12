<%@page import="action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Big Business 2.0
Description: A two-column, fixed-width design with a bright color scheme.
Version    : 1.0
Released   : 20120624
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Content-Based Image Retrieval in Peer-to-Peer</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="css/textfile.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode: 'fade',
			globalOffsetY: 11,
			offsetY: -15
		});
		$('#slider').slidertron({
			viewerSelector: '.viewer',
			indicatorSelector: '.indicator span',
			reelSelector: '.reel',
			slidesSelector: '.slide',
			speed: 'slow',
			advanceDelay: 4000
		});
	});
</script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
                    <h3 style="color: #00e6e6;font-size: 27px">A Scalable Approach for Content-Based Image Retrieval in Peer-to-Peer Networks</h3>
                        
		</div>
		<div id="slogan">
                    
			
		</div>
	</div>
	<div id="menu">
		<ul>
			
			<li><a href="#">Products</a></li>
			<li><a href="#">Clients</a></li>
                        <li><a href="#">About</a></li>
			<li class="last"><a href="#">Contact</a></li>
			<li>
				<span class="opener">Support<b></b></span>
				<ul>
					<li><a href="#">Lorem Ipsum</a></li>
					<li><a href="#">Consequat Dolor</a></li>
					<li><a href="#">Magna Feugiat</a></li>
					<li>
						<span>Sed Tempus<b></b></span>
						<ul>
							<li><a href="#">Lorem Ipsum</a></li>
							<li><a href="#">Consequat Dolor</a></li>
							<li><a href="#">Magna Feugiat</a></li>
							<li><a href="#">Sed Tempus</a></li>
							<li><a href="#">Etiam Nullam</a></li>
							<li><a href="#">Amet Phasellus</a></li>
						</ul>
					</li>
					<li><a href="#">Etiam Nullam</a></li>
					<li><a href="#">Amet Phasellus</a></li>
				</ul>
			</li>
			
		</ul>
            
            
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="images/upload.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/upload.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/upload.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/upload.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/upload.jpg" alt="" />
				</div>
				
			</div>
		</div>
		<div class="indicator">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
	</div>
	<div id="page">
            <div></div>
		<div id="content">
                    <center><div>
                            <%   
                                    String s = request.getQueryString();
            System.out.println("your value="+s);
            session.setAttribute("edit", s);
            
            
            Connection con1 = Dbcon.getCon();
    Statement st2 = con1.createStatement();
         ResultSet rt = st2.executeQuery("select * from imagupload  where id='"+s+"'");
                       while (rt.next()) {
                           String imagename=rt.getString("imagename");
                                String imgsubname=rt.getString("imgsubname");
                                String imagcate=rt.getString("imagcate");
                                String color=rt.getString("color");
                                String description=rt.getString("description");
                                String peartype=rt.getString("peartype");
                                String username=rt.getString("username");
                                String ratings=rt.getString("ratings");
                           
            %>
            
                            
                            <h1 style="color:#ff8080;"> EDIT </h1>
                            <form  action="editname.jsp" method="post" >
                            <table>
                        <tr><td><img class="img-responsive" src="viewalimagess.jsp?id=<%=rt.getInt("id")%>" alt="" style="width: 200px;height: 100px"/></td></tr>
                        <tr><td style="font-size: 20px;color: #666699;">IMAGE NAME </td></tr>
                        <tr><td><input style="height: 20px" type="text" name="imagename"     value="<%=imagename%>" name="imagename"  pattern="^[a-zA-Z]+$"class="tb6"></input></td></tr>
                       <tr><td style="font-size: 20px;color: #666699;">SUB_NAME </td></tr>
                        <tr><td><input style="height: 20px" type="text" name="imgsubname" value="<%=imgsubname%>"pattern="^[a-zA-Z]+$"class="tb6"></input></td></tr>
                        <tr><td style="font-size: 20px;color: #666699;">IMAGE_CATEGORIES </td></tr>
                        <tr><td><select class="tb6" name="imagcate" required="" value="<%=imagcate%>" style="height: 30px;color:black">
                        <option required="required">CATEGORIES </option>
                        <option required="required" value="FLOWER">FLOWER</option>
                       <option required="required" value="BIRDS">BIRDS</option>
                       <option required="required" value="ANIMALS">ANIMALS</option>
            	      </select></td></tr>
                        <tr><td style="font-size: 20px;color: #666699;">COLOR </td></tr>
                        <tr><td><select class="tb6" name="color" required="" value="<%=color%>" style="height: 30px;color:black">
                        <option required="required">SELECT </option>
                       <option required="required">SELECT </option>
                        <option required="required" value="RED">RED</option>
                       <option required="required" value="BLUE">BLUE</option>
                       <option required="required" value="GREEN">GREEN</option>
                       <option required="required" value="YELLOW">YELLOW</option>
                       <option required="required" value="PINK">PINK</option>
                       <option required="required" value="BROWN">BROWN</option>
                       <option required="required" value="BLACK">BLACK</option>
                        <option required="required" value="WHITE">WHITE</option>
            	      </select></td></tr>
                        <tr><td style="font-size: 20px;color: #666699;">DESCRIPTION </td></tr>
                        <tr><td><input style="height: 60px" type="text" value="<%=description%>"name="description"  class="tb6"></input></td></tr>
<!--                        <tr><td style="font-size: 20px;color: #666699;">UPDATE IMAGE ALSO </td></tr>
                        <tr><td><input style="height: 20px" type="FILE" name="file" pattern=""class="tb6"></input></td></tr>-->
              
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr><td><input style="height: 30px;" type="submit" name="" value="UPLOADIMAGE"required=""class="tb6"></input></td></tr>
                        <tr><td><input style="height: 30px;" type="reset" name="" value="CLEAR"required=""class="tb6"></input></td></tr>
                      </table>
                            </form>
                        </div>
                        
                    </center>
            <%
                       }
            %>
		</div>
		<div id="sidebar">
			<div class="box">
				<h3>MENUS</h3>
				<ul class="list">
					<li class="first"><a href="index.jsp">HOME</a></li>
					<li><a href="pearimages.jsp">BACK</a></li>
					
				</ul>
			</div>
			<div class="box">
				
			</div>
		</div>
		<br class="clearfix" />
	</div>
	<div id="page-bottom">
		<div id="page-bottom-content">
			
		</div>
		<div id="page-bottom-sidebar">
			
		</div>
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
	
</div>
</body>
</html>