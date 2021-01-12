/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@MultipartConfig(maxFileSize = 16177215)
public class uploadimage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            
           HttpSession sess = request.getSession();
            String name = sess.getAttribute("username").toString();
            System.out.println("User: " + name);
            String node = sess.getAttribute("node").toString();
            System.out.println("User: " + name);
            String uname = "pavi";
            String code=null;
            if(node.equals("NODE_A")){
      
      code="A9BCA0DAC";
      
  }
   else if(node.equals("NODE_B")){
       code="DG03BDETG";
      
      
  }
       
            else if(node.equals("NODE_C")){
       code="BDKETOCJE";
      
      
  }
            else if(node.equals("NODE_D")){
       code="DBLEO903JC";
      
      
  }
            else if(node.equals("NODE_E")){
       code="DOEIKV390G";
      
      
  }
      
            Calendar cal = Calendar.getInstance();
		SimpleDateFormat format = new SimpleDateFormat("HH:mm dd/MM/yyyy");
		String report= format.format(cal.getTime());
                    String imagename = null;
                    String imgsubname=null;
                    String imagcate =null;
                    String color = null;
                    String description =null;
                    String peartype =node;
                    String username = name;
                    String ratings = "0";
                    String date=report;
//                    String group = null;
                    
            boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
            if (!isMultipartContent) {
                return;
            }
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List<FileItem> fields = upload.parseRequest(request);
                Iterator<FileItem> it = fields.iterator();
//                if (! .hasNext()) {
//                    return;
//                }
                while (it.hasNext()) {
                    FileItem fileItem = it.next();
                    if (fileItem.getFieldName().equals("imagename")) {
                        String a=fileItem.getString().toUpperCase();
                        imagename = a;
                    } else if (fileItem.getFieldName().equals("imgsubname")) {
                        String b=fileItem.getString().toUpperCase();
                        imgsubname = b;
                    } else if (fileItem.getFieldName().equals("imagcate")) {
                        
                        imagcate = fileItem.getString();
                        sess.setAttribute("cate", imagcate);
                    } else if (fileItem.getFieldName().equals("color")) {
                        color = fileItem.getString();
                    } else if (fileItem.getFieldName().equals("description")) {
                        description = fileItem.getString();
                    } 
                    else {
                    }
                    boolean isFormField = fileItem.isFormField();
                    if (isFormField) {
                    } else {
                        String s = fileItem.getName().substring(fileItem.getName().lastIndexOf("\\") + 1);
                        fileItem.write(new File("D:\\tbs\\" + s));//create folder and set path for store
                        out.println(s);
                        fileItem.getOutputStream().close();
                        try {
                            Connection cn = Dbcon.getCon();
                                PreparedStatement ps = cn.prepareStatement("insert into imagupload(imagename, imgsubname, imagcate, color, description, peartype, username,ratings,date,pimage,code)values(?,?,?,?,?,?,?,?,?,?,?)");
                            FileInputStream fin = new FileInputStream("D:\\tbs\\" + s); //set path for access
                            ps.setString(1, imagename);
                            ps.setString(2, imgsubname);
                            ps.setString(3, imagcate);
                            ps.setString(4, color );
                            ps.setString(5, description);
                            ps.setString(6, peartype);
                            ps.setString(7, username);
                            ps.setString(8, ratings);
                            ps.setString(9, date);
                            ps.setBinaryStream(10, fin, fin.available());
                           ps.setString(11, code);
                           
                           
                            int i = ps.executeUpdate();
                            if (i == 1) {
                                response.sendRedirect("Fileupload.jsp?msg=Upload successfully");
                            } else {
                                response.sendRedirect("Fileupload.jsp?msg=NOT Upload successfully Try_Again");
                            }
                            cn.close();

                        } catch (Exception e) {
                            out.println(e.toString());
                        }
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

