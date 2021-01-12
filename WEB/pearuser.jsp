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
             HttpSession sess = request.getSession();
            String node = sess.getAttribute("node").toString();
            
  Connection con = Dbcon.getCon();
 Statement st=con.createStatement();
 ResultSet rt=st.executeQuery("select * from userreg where node='"+node+"'");

%>
		<div id="content">
                    <div style="overflow: auto">
                            
                            <table>
                            <caption> <h2 style="color: darkslateblue;font-family: monospace;font-weight: bold;font-size: 30px">USERS DETAILS VIEW</h2></caption>
                            <tr>                                
                                <td style="text-align: center">IMAGE</td> <td style="text-align: center">USERNAME</td><td style="text-align: center">PASS</td><td style="text-align: center">EMAIL_ID</td><td style="text-align: center">GENDER</td><td style="text-align: center">PHONE</td>
                            </tr>
                            <%
                            while(rt.next()){
                                
                                String uname=rt.getString("username");
                                String PHONE=rt.getString("phone");
                                String mail=rt.getString("mailid");
                                String gender=rt.getString("gender");
                            %>
                            <TR>
                                <td><img class="img-responsive" src="viewalluserimage.jsp?id=<%=rt.getInt("id")%>" alt="" style="width: 50px;height: 50px"/></td><td style="text-align: center"><%=uname%></td <td style="text-align: center">****</td> <td style="text-align: center">*******</td> <td style="text-align: center"><%=mail%></td><td style="text-align: center"><%=gender%></td><td style="text-align: center"><%=PHONE%></td>
                                                                                       
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
					<li class="first"><a href="pearuser.jsp">PEAR_USER</a></li>
					<li><a href="Userwelcome.jsp">BACK</a></li>
					
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