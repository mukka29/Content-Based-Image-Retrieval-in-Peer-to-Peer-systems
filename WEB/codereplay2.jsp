<%@page import="java.sql.ResultSet"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
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
			
			<li class="first"><a href="index.jsp">HOME</a></li>
			
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
		<div id="content">
                    <div>
                            
                            <h1 style="color:#ff8080;"> FLOWER  </h1><br></br>
                            <%
                        
                        
                         String code=request.getParameter("ucode");
                        
                        Connection con = Dbcon.getCon();
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from imagupload  where code='"+code+"' and imagcate='FLOWER' ");
                      
                       
                            
                        while (rs.next()) {
                           

                    %>
                    
                    <a href="reranking2.jsp?<%=rs.getInt("id")%>" style="margin-top:500px"><img src="viewalimagess.jsp?id=<%=rs.getInt("id")%>" style="width: 150px;height: 150px"></a>
                    
                    
                    <%
                            
                        }
                                              
                    %>                       
                        </div>
                        <div>
                            
                            <h1 style="color:#ff8080;"> BIRDS  </h1><br></br>
                            <%
                       
                        
                        
                        
                        Connection con1 = Dbcon.getCon();
                        Statement st1 = con1.createStatement();
                        ResultSet rs1 = st1.executeQuery("select * from imagupload  where code='"+code+"' and imagcate='BIRDS' ");
                      
                       
                            
                        while (rs1.next()) {
                           

                    %>
                    
                    <a href="reranking2.jsp?<%=rs1.getInt("id")%>" style="margin-top:500px"><img src="viewalimagess.jsp?id=<%=rs1.getInt("id")%>" style="width: 150px;height: 150px"></a>
                    
                    
                    <%
                            
                        }
                                              
                    %>                       
                        </div>
                        <div>
                            
                            <h1 style="color:#ff8080;"> ANIMALS  </h1><br></br>
                            <%
                        
                        
                        
                        
                        Connection con2 = Dbcon.getCon();
                        Statement st2 = con2.createStatement();
                        ResultSet rs2 = st2.executeQuery("select * from imagupload  where code = '"+code+"' and imagcate = 'ANIMALS' ");
                      
                       
                            
                        while (rs2.next()) {
                           

                    %>
                    
                    <a href="reranking2.jsp?<%=rs2.getInt("id")%>" style="margin-top:500px"><img src="viewalimagess.jsp?id=<%=rs2.getInt("id")%>" style="width: 150px;height: 150px"></a>
                    
                    
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
					
					<li><a href="codereplay.jsp">BACK</a></li>
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