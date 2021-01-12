<%@page import="action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% 
        try
                
                
                {
		Integer r=null;		
           Integer ra=null;
           ra=1;
	
           
           HttpSession sess = request.getSession();
            String name = sess.getAttribute("username").toString();
            
            String node = sess.getAttribute("node").toString();
            System.out.println("User: " + name);
            
      
    
          String usercomment = request.getParameter("usearch");
          session.setAttribute("ukeyy", usercomment);
       
        
        
        Integer i=null;
        
         Connection con1=Dbcon.getCon();
        Statement st1=con1.createStatement();
       String types="KEYBASED";
        
	
        String sql="insert into userkeyword(username,userkeyword,node) values ('"+name+"','"+node+"','"+usercomment+"')";
		
        int x=st1.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("search2.jsp?message=Successfully Registered");
	
		}
				else{
		response.sendRedirect("imagedetail.jsp?message= Registered failed");
		
		}
        con1.close();
        st1.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>     
         