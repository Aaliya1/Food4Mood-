/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import aaliya.ConnectionManager;
import java.io.IOException;
import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Farheen
 */
@WebServlet(urlPatterns = {"/view"})
public class view extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
           String id = request.getParameter("id");
           String str = "select * from partners where Partner_Id="+id;
           ResultSet rs = ConnectionManager.exeQuery(str);
           if(rs.next())
           {
               Blob b=rs.getBlob(6);
               response.setContentType("rs.getString(9)");
               response.setContentLength((int)b.length());
               InputStream is=b.getBinaryStream();
               OutputStream os = response.getOutputStream();
               byte buf[] = new byte[(int)b.length()];
               is.read(buf);
               os.write(buf);
               os.close();
               
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
