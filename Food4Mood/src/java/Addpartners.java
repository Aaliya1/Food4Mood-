import aaliya.ConnectionManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Farheen
 */
@WebServlet(urlPatterns = {"/Addpartners"})
@MultipartConfig (maxFileSize = 16177215)

public class Addpartners extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        InputStream is = null;
        PrintWriter out = response.getWriter();
        try  {
          String name=request.getParameter("pname");
           String address=request.getParameter("address");
            String mob=request.getParameter("mob");
             String email=request.getParameter("email");
             Part filepart = request.getPart("image");
              String dop=request.getParameter("dop");
               String percent=request.getParameter("percent");
               String imgtype="";
               if(filepart!=null)
               {
                   is = filepart.getInputStream();
                   imgtype=filepart.getContentType();
               }
              Connection con = ConnectionManager.getConnection();
               PreparedStatement pst = con.prepareStatement("insert into partners(Name,Address,Mobile,Email,Image,Date_Of_Partnership,Percent,imgtype) values(?,?,?,?,?,?,?,?)");
               pst.setString(1,name);
               pst.setString(2,address);
               pst.setString(3,mob);
               pst.setString(4,email);
               pst.setBinaryStream(5, is,filepart.getSize());
               pst.setString(6, dop);
               pst.setString(7,percent);
               pst.setString(8,imgtype);
               if(pst.executeUpdate()>0)
               {
                   out.println("<p style='text-align:center;color:#000;font-size:20px;'>New Partner Record Added Successfully</p>");
                   RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                   rd.include(request, response);
               }
        }
        catch(Exception ex)
        {
            out.println(ex.getMessage());
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
