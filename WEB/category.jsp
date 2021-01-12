<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Dbcon"%>
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
<link rel="stylesheet" href="css/style.css">
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
			
			<li><a href="index.jsp">HOME</a></li>
			
				</ul>
			</li>
			
		</ul>
            
            
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="images/p2p.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/p2p.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/p2p.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/p2p.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/p2p.jpg" alt="" />
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
            <%
  Connection con = Dbcon.getCon();
 Statement st=con.createStatement();
 ResultSet rt=st.executeQuery("select * from imagupload where imagcate = 'FLOWER'");

%>
		<div id="content">
                    <div style="overflow: auto;height: 200px">
                            
                         <h1>FLOWERS</h1>     
                           
                            
                            <%
                            while(rt.next()){
                                
                                String imagename=rt.getString("imagename");
                                String imgsubname=rt.getString("imgsubname");
                                String imagcate=rt.getString("imagcate");
                                String color=rt.getString("color");
                                String description=rt.getString("description");
                                String peartype=rt.getString("peartype");
                                String username=rt.getString("username");
                                String ratings=rt.getString("ratings");
                                
                            %>
                            
                               
                            <pre>
                                <a><img class="img-responsive" src="viewalimagess.jsp?id=<%=rt.getInt("id")%>" alt="" style="width: 150px;height: 150px"/></a>
                                <a>IMAGE NAME:<%=imagename%></a>
                                <a>SUB NAME:<%=imgsubname%></a>
                                 <a>VIEWERS:<%=ratings%></a>
</pre>
                                 
                                                                                       
                           
                            <%
                            }
                            %>
                              
                       
                        </div>
                            <%
  Connection con1 = Dbcon.getCon();
 Statement st1=con1.createStatement();
 ResultSet rtt=st1.executeQuery("select * from imagupload where imagcate = 'BIRDS'");

%>
		
                    <div style="overflow: auto;height: 200px">
                            
                           <h1>BIRDS</h1>   
                           
                            
                            <%
                            while(rtt.next()){
                                
                                String imagename=rtt.getString("imagename");
                                String imgsubname=rtt.getString("imgsubname");
                                String imagcate=rtt.getString("imagcate");
                                String color=rtt.getString("color");
                                String description=rtt.getString("description");
                                String peartype=rtt.getString("peartype");
                                String username=rtt.getString("username");
                                String ratings=rtt.getString("ratings");
                                
                            %>
                           
                            <pre>
                                <a><img class="img-responsive" src="viewalimagess.jsp?id=<%=rtt.getInt("id")%>" alt="" style="width: 150px;height: 150px"/></a>
                                <a>IMAGE NAME:<%=imagename%></a>
                                <a>SUB NAME:<%=imgsubname%></a>
                                 <a>VIEWERS:<%=ratings%></a>
                                    </pre>
                                
                                                                        
                           
                            <%
                            }
                            %>
                       </table>
                              
                        </div>
                   <%
  Connection con2 = Dbcon.getCon();
 Statement st2=con2.createStatement();
 ResultSet rtt2=st2.executeQuery("select * from imagupload where imagcate = 'ANIMALS'");

%>
		
                    <div style="overflow: auto;height: 200px">
                            
                        <h1>ANIMALS</h1>   
                           
                            
                            <%
                            while(rtt2.next()){
                                
                                String imagename=rtt2.getString("imagename");
                                String imgsubname=rtt2.getString("imgsubname");
                                String imagcate=rtt2.getString("imagcate");
                                String color=rtt2.getString("color");
                                String description=rtt2.getString("description");
                                String peartype=rtt2.getString("peartype");
                                String username=rtt2.getString("username");
                                String ratings=rtt2.getString("ratings");
                                
                            %>
                           
                            <pre> 
                           <a><img class="img-responsive" src="viewalimagess.jsp?id=<%=rtt2.getInt("id")%>" alt="" style="width: 150px;height: 150px"/></a>
                                <a>IMAGE NAME:<%=imagename%></a>
                                <a>SUB NAME:<%=imgsubname%></a>
                                 <a>VIEWERS:<%=ratings%></a>
                            </pre>
                                                                                       
                           
                            <%
                            }
                            %>
                       
                        </div>
                   
		</div>
		<div id="sidebar">
			<div class="box">
				<h3>MENUS</h3>
				<ul class="list">
					<li class="first"><a href="index.jsp">HOME</a></li>
					<li><a href="userdetail.jsp">USER DETAIL</a></li>
					<li><a href="allimagedetails.jsp">ALL IMAGE DETAIL</a></li>
					<li><a href="userfeedback.jsp">USER FEEDBACK</a></li>
                                         <li><a href="searchhistory.jsp">USER SEARCH HISTORY</a></li>
                                         <li><a href="category.jsp">CATEGORIES</a></li>
					
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