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
					<img src="images/search.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/search.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/search.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/search.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/search.jpg" alt="" />
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
 ResultSet rt=st.executeQuery("select * from userkeyword");

%>
		<div id="content">
                    <div style="overflow: auto;height: 500PX">
                            
                            <table>
                            <caption> <h2 style="color: darkslateblue;font-family: monospace;font-weight: bold;font-size: 30px">SEARCH IMAGE HISTORY</h2></caption>
                            <tr>                                
                                <td style="text-align: center">USERNAME</td> 
                               
                                <td style="text-align: center">PEER</td>
                                 <td style="text-align: center">USER KEYWORD</td>
                                
                                

                                
                            </tr>
                            <%
                            while(rt.next()){
                                
                                String username =rt.getString("username");
                                String userkeyword=rt.getString("userkeyword");
                                String node=rt.getString("node");
                               
                                
                                
                            %>
                            <TR>
                                
                                <td style="text-align: center;color:brown;font-size: 20px"><%=username%></td>
                                <td style="text-align: center;color:brown;font-size: 20px"><%=userkeyword%></td> 
                                <td style="text-align: center;color:brown;font-size: 20px"><%=node%></td>
                               
                                
                                
                                                                                       
                            </TR>    
                            <%
                            }
                            %>
                        </table>
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