<%@page import="java.sql.ResultSet"%>
<%@page import="action.Dbcon"%>
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
<link rel="stylesheet" href="css/style.css"></link>
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
			
			<li><a href="index.jsp">Products</a></li>
				</ul>
			</li>
			
		</ul>
            
            
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="images/feedback.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/feedback.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/feedback.jpg" alt="" />
				</div>
                            <div class="slide">
					<img src="images/feedback.jpg" alt="" />
				</div>                         
				 <div class="slide">
					<img src="images/feedback.jpg" alt="" />
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
                    <center>
                        <div style="overflow-y: auto;width: 500px;height:500px">
                            
                            <h1 style="color:#ff8080;">  </h1><br></br>
                            <form action="susercomm.jsp" method="post">
                            <table style="overflow-y: auto;height: 500px">
                           
                            <tr>                                
                                <td style="text-align: center">IMAGE</td> <td style="text-align: center">USERNAME</td>
                            </tr>
                             <%
                             
  Connection con = Dbcon.getCon();
 Statement st=con.createStatement();
 HttpSession ses = request.getSession();
    String userids = ses.getAttribute("breffid").toString();
 ResultSet rt=st.executeQuery("select * from imagupload where id='"+userids+"'");

%>
                            <%
                            while(rt.next()){
                                
                               String imagename=rt.getString("imagename");
                               session.setAttribute("imagname", imagename);
                                String imgsubname=rt.getString("imgsubname");
                                String imagcate=rt.getString("imagcate");
                                String color=rt.getString("color");
                                String description=rt.getString("description");
                                String peartype=rt.getString("peartype");
                                String username=rt.getString("username");
                                String ratings=rt.getString("ratings");
                            %>
                            <TR>
                                <td>IMAGE NAME</td></td> <td><img class="img-responsive" src="viewalimagess.jsp?id=<%=rt.getInt("id")%>" alt="" style="width: 150px;height: 150px"/></td> </TR>  
                           <TR> <td>IMAGE NAME</td></td><td style="text-align: left;color:brown;font-size: 20px"><%=imagename%></td> </TR>  
                            <TR><td>IMAGE SUB NAME</td><td style="text-align: left;color:brown;font-size: 20px"><%=imgsubname%></td>  </TR>  
                           <TR> <td>IMAGE CATEGORIES</td><td style="text-align: left;color:brown;font-size: 20px"><%=imagcate%></td> </TR>  
                           <TR> <td>COLOR</td><td style="text-align: left;color:brown;font-size: 20px"><%=color%></td> </TR>  
                           <TR> <td>DESCRIPTION</td> <td style="text-align: left;color:brown;font-size: 20px"><textarea style="width:200px;height: 70px"><%=description%></textarea></td> </TR>  
                            <TR><td>PEER</td><td style="text-align: left;color:brown;font-size: 20px"><%=peartype%></td> </TR>  
                            <TR><td>USER</td><td style="text-align: left;color:brown;font-size: 20px"><%=username%></td> </TR>  
                            <TR><td>VIEWERS</td><td style="text-align: left;color:brown;font-size: 20px"><%=ratings%></td> </TR>  
                            <TR><td>USER COMMENT</td><td style="color:red"><input style="height: 50px" type="text" name="ucomment"  required=""class="tb6" ></input> </td> </TR>  
                              <TR><td><input style="height: 30px;" type="submit" name="" value="submit"required=""class="tb6"></input></td><td><input style="height: 30px;" type="reset" name="" value="CLEAR"required=""class="tb6"></input> </td> </TR>                             
                           
                                                          
                            </TR>     
                            <%
                            }
                            %>
                        </table>
                        </form>
                        </div>
                        
                    </center>
		</div>
		<div id="sidebar">
			<div class="box">
				<h3>MENUS</h3>
				<ul class="list">
					<li class="first"><a href="index.jsp">HOME</a></li>
					
					<li><a href="search2.jsp">BACK</a></li>
					
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