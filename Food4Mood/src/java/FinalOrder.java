
import aaliya.ConnectionManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Farheen
 */
@WebServlet(urlPatterns = {"/FinalOrder"})
public class FinalOrder extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
               Calendar cal= Calendar.getInstance();
                 int d = cal.get(Calendar.DATE);
                  int m =cal.get(Calendar.MONTH);
                 int y = cal.get(Calendar.YEAR);
             String str=d+"/"+m+"/"+y;
            int h = cal.get(Calendar.HOUR);
            int t = cal.get(Calendar.MINUTE);
            int t1 = cal.get(Calendar.MINUTE)+30;
            String time = h+":"+t;
            String dtime = h+":"+t1;
           String []q = request.getParameterValues("quantity");
            String []ordermenu = request.getParameterValues("ch");
         String ordr = "";
              String quan = "";
          for(String mnu:ordermenu)
          {
              ordr+=mnu+"<br>";
              
          }
           for(String qua:q)
          {
              quan+=qua+" ";
              
          } 
          
          HttpSession session = request.getSession();         
         int totl = 0; 
         int p1=0;    
         int i=0;
      for(String s:q)
         {   
             if(s.length()!=0)
             {
                int qw = Integer.parseInt(String.valueOf(s));
              String str1 = "select * from "+session.getAttribute("shop")+" where Item_Name='"+ordermenu[i]+"'";
                  ResultSet rs = ConnectionManager.exeQuery(str1);
                if(rs.next())
                { 
                    int p=rs.getInt(3);
                   totl+=totl+p*qw;
                   session.setAttribute("price",totl);
                     
                }
                i++;
                
             }
                
         }
 
       
         boolean flg=false;
       String str3 ="insert into order_menu(Order_Date,Order_Bill,User_Id,Order_Time,Delivery_Time,Details,Quantity,Partners) values('"+str+"','"+session.getAttribute("price")+"',"+session.getAttribute("Id")+",'"+time+"','"+dtime+"','"+ordr+"','"+quan+"','"+session.getAttribute("shop")+"')";  
       int num = ConnectionManager.exQuery(str3);
       if(num>0)
       {   flg=true;
         response.sendRedirect("./MyAccount.jsp");
          /*  out.println("<p style='text-align:center'>Order Placed</p>");
           RequestDispatcher rd = request.getRequestDispatcher("./My-Account");
           rd.include(request, response);*/
         
       }
       else{
           out.println("Order Unable to place");
       } 
       //}
       if(flg==true)
       { 
         // out.println("<script>window.alert('order successfully placed');</script>");
          String str4 = "select * from user where ID="+session.getAttribute("Id");
          ResultSet rs1 = ConnectionManager.exeQuery(str4);
          if(rs1.next())
          {
            int a = Integer.parseInt(rs1.getString(9))+2;
             flg=false;
              String str5 =  "update user set Points="+a+" where ID="+session.getAttribute("Id");
              int num1 = ConnectionManager.exQuery(str5);
              if(num1>0)
              {
                              
              }
              flg=false;
          }
           //String str4 = "update user set Points="+
       }
       }
    catch(NumberFormatException | ClassNotFoundException | SQLException e)
    {
     out.print(e.getMessage());
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FinalOrder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FinalOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FinalOrder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FinalOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
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
