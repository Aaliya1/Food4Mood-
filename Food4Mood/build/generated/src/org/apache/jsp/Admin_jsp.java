package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import aaliya.ConnectionManager;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>My page-The Admin Page</title>\n");
      out.write("     <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"row\">\n");
      out.write("\t<div class=\"col-lg-12\">\n");
      out.write("\t<div class=\"brand\">Food 4 Mood</div>\n");
      out.write("        <div class=\"address-bar\">\"We Love to Serve Variety.\"</div></div>\n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t  <div class=\"navbar-header\">\n");
      out.write("\t\t \n");
      out.write("                \n");
      out.write("                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->\n");
      out.write("          <a class=\"navbar-brand\" href=\"index.html\">Food 4 Mood</a><br><hr style=\"width:100%\"><div class=\"address1\" >\"We Love to Serve Variety\"</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("            </div> \n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling --> \n");
      out.write("       <!--   <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\"> -->\n");
      out.write("       <form action=\"./Admin.jsp\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"O\">Our Users</button>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"Partners\">Our Partners</button>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"Orders\">Orders</button>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\">Careers</button>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"Menu\">Menu</button>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                         <button type=\"submit\" name=\"sub1\" value=\"Book\">Bookings</button>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                         <button type=\"submit\" name=\"sub1\" value=\"admin\">Manage Admin Info</button>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                         <button type=\"submit\" name=\"sub1\" value=\"logout\" >\n");
      out.write("                        <a href=\"./Logout\"style=\"color:#fff;text-decoration:none\">Log Out</a></button>\n");
      out.write("                    </li>\n");
      out.write("                </ul></form>\n");
      out.write("<!--   </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");

    try{
        
if(request.getParameter("sub1").equals("O"))
{
    String str = "select * from user";
    ResultSet rs = ConnectionManager.exeQuery(str);
    out.println("<table cellpadding='15px' cellspacing='0' border='1' style='background-color:#fff;width:80%;margin:auto;text-align:center'><tr><th>User ID</th><th>User Name</th><th>User Password</th><th>Address</th><th>City</th><th>Pin Code</th><th>Mobile No.</th><th>Date Of Birth</th><th>Ponts</th><th>Actions</th></tr>");
    while(rs.next())
    {
       out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td><a href='./Delete?id="+rs.getString(1)+"'>Delete</a>|<a href='./Edituser.jsp?id="+rs.getString(1)+"'>Edit</a>|<a href='./Viewuser.jsp?id="+rs.getString(1)+"'>View</a></td></tr>") ;
    }
   
}
else if(request.getParameter("sub1").equals("Partners"))
{ 

      out.write("\n");
      out.write("<form  method=\"post\"><center><button type=\"submit\" name=\"subp\" value=\"Add\" onmouseover=\"window.alert('Dear Admin ,After adding Partners Detail,Add it also in ShowMenu.jsp page')\">Add</button> <button type=\"submit\" name=\"subp\" value=\"Show\">View Partners Details</button></center></form>\n");
      out.write("    ");

      
if(request.getParameter("subp").equals("Add"))
       { 
 
           
      out.write("\n");
      out.write("           <div class=\"registerform\"><fieldset style=\"background-color:#E0E0E0\">\n");
      out.write("              <form method=\"post\" action=\"./Addpartners\" enctype=\"multipart/form-data\">\n");
      out.write("               <table>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Name:</td><td><input type=\"text\" name=\"pname\" /></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Address:</td><td><textarea name=\"address\"/></textarea></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Mobile:</td><td><input type=\"text\" name=\"mob\"/></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                   <td>Email:</td><td><input type=\"email\" name=\"email\"/> </td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                   <td>Image:</td><td><input type=\"file\" name=\"image\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                   <td>Date of partnership</td><td><input type=\"date\" name=\"dop\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                   <td>Percent Shared</td><td><input type=\"number\" name=\"percent\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                   <td><input type=\"submit\" name=\"subf\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               </table>\n");
      out.write("               </form> </fieldset></div>\n");
      out.write("           \n");
      out.write("           ");

               
  }  
else if(request.getParameter("subp").equals("Show"))
{
 String str2="select * from partners";
 ResultSet rs = ConnectionManager.exeQuery(str2);
while(rs.next())
{
  out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'><tr><td>Partner ID</td><td>"+rs.getString(1)+"<td><br>");
  out.println("<td rowspan='7'>"+"<img src='./view?id="+rs.getString(1)+"'width='100px' height='100px'/></td></tr><br>");
  out.println("<tr><td>Partner name</td><td>"+rs.getString(2)+"</td></tr><br>");
  out.println("<tr><td>Address</td><td>"+rs.getString(3)+"</td></tr><br>");
  out.println("<tr><td>Mobile</td><td>"+rs.getString(4)+"</td></tr><br>");
  out.println("<tr><td>Email</td><td>"+rs.getString(5)+"</td></tr><br>");
 out.println("<tr><td>Date_Of_Partnership</td><td>"+rs.getString(7)+"</td></tr><br>");
 out.println("<tr><td>Percent</td><td>"+rs.getString(8)+"</td></tr></table><br>");
}
}
}
else if(request.getParameter("sub1").equals("Orders"))
{

      out.write("\n");
      out.write(" <div class=\"table-responsive\">          \n");
      out.write("  <table class=\"table table-hover\" style=\"background-color:rgba(255,255,255,0.9)\">\n");
      out.write("    <thead>\n");
      out.write("      <tr>\n");
      out.write("        <th>Order_ID</th>\n");
      out.write("        <th>Order_Date</th>\n");
      out.write("        <th>Order_Bill</th>\n");
      out.write("        <th>User_Id</th>\n");
      out.write("        <th>Order_Time</th>\n");
      out.write("        <th>Delivery_Time</th>\n");
      out.write("        <th>Details</th>\n");
      out.write("         <th>Respective Quantity</th>\n");
      out.write("          <th>Shop Name</th>\n");
      out.write("      </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>          \n");
      out.write("\n");

     String str = "select * from order_menu";
        ResultSet rs = ConnectionManager.exeQuery(str);
        while(rs.next())
        { 
      out.write("\n");
      out.write("<tr>\n");
      out.write("        <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("          <td>");
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("          <td>");
      out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("        ");

}
      out.write("  </tr>\n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("  </div> ");
}
else if(request.getParameter("sub1").equals("Menu"))
{
      
      out.write("         <div class=\"container\"> \n");
      out.write("                   <div class=\"row\">\n");
      out.write("                       <div class=\"box\">\n");
      out.write("                       <div class=\"col-lg-4\">\n");
      out.write("                            <h3>PRAMOD</h3>  \n");
      out.write("       ");

     
       String str = "select * from Pramod ";
       ResultSet rs = ConnectionManager.exeQuery(str);
       while(rs.next())
       {
           
      out.write("\n");
      out.write("         \n");
      out.write("          ");
      out.print(rs.getString(2));
      out.write("------- Rs.  ");
      out.print(rs.getString(3));
      out.write("<br>\n");
      out.write("          \n");
      out.write("      \n");
      out.write("                 \n");
      out.write("          ");
 } 
      out.write(" </div>\n");
      out.write("                <div class=\"col-lg-4\">    <h3>KHUSHI RESTAURANT</h3>   \n");
      out.write("                   ");

           
       String str1 = "select * from khushi ";
       ResultSet rs1 = ConnectionManager.exeQuery(str1);
       while(rs1.next())
       {
           
      out.write("\n");
      out.write("         \n");
      out.write("           ");
      out.print(rs1.getString(2));
      out.write("------- Rs. ");
      out.print(rs1.getString(3));
      out.write("<br>\n");
      out.write("                \n");
      out.write("        ");
 
       }
        
      out.write("</div>\n");
      out.write("<div class=\"col-lg-4\">    <h3>KANCHAN SWEETS</h3>   \n");
      out.write("                   ");

           
       String str2 = "select * from Kanchan Sweets ";
       ResultSet rs2 = ConnectionManager.exeQuery(str2);
       while(rs2.next())
       {
           
      out.write("\n");
      out.write("         \n");
      out.write("           ");
      out.print(rs2.getString(2));
      out.write("------- Rs. ");
      out.print(rs2.getString(3));
      out.write("<br>\n");
      out.write("                \n");
      out.write("        ");
 
       }
}
else if(request.getParameter("sub1").equals("admin"))
{

      out.write("\n");
      out.write("<center><form method=\"post\"><button type=\"submit\" name=\"subp\" value=\"AddAdmin\">Add New Admin</button> <button type=\"submit\" name=\"subp\" value=\"ShowAdmin\">View Admin Details</button></form></center>\n");
      out.write("\n");

        if(request.getParameter("subp").equals("AddAdmin"))
       { 
 
           
      out.write("\n");
      out.write("           <div class=\"registerform\">   <fieldset style=\"background-color: #E0E0E0\">\n");
      out.write("                   <form action=\"./AddAdmin\" method=\"post\">\n");
      out.write("               <table>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Admin Name:</td><td><input type=\"text\" name=\"aname\" /></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Password</td><td><input type=\"password\" name=\"apass\" /></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Address:</td><td><textarea name=\"address\"></textarea></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                   <td>Contact No.</td><td><input type=\"text\" name=\"mob\"/> </td>\n");
      out.write("               </tr>\n");
      out.write("                              <tr>\n");
      out.write("                   <td><input type=\"submit\" name=\"subf\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               </table></form></fieldset></div>\n");
      out.write("                \n");
      out.write("                     ");

               
  }  
else if(request.getParameter("subp").equals("ShowAdmin"))
{
 String str2="select * from administrator";
 ResultSet rs = ConnectionManager.exeQuery(str2);
out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'>");
 out.println("<br><th>Admin Name</th><th>Admin Password</th><th>Address</th><th>Mobile</th>");  
while(rs.next())
{
  out.println("<tr><td>"+rs.getString(1)+"</td>");
  out.println("<td>"+rs.getString(2)+"</td>");
  out.println("<td>"+rs.getString(3)+"</td>");
  out.println("<td>"+rs.getString(4)+"</td></tr>");
 }
out.println("</table>");
}

}
else if(request.getParameter("sub1").equals("Book"))
{

      out.write("\n");
      out.write("<center><form method=\"post\"><button type=\"submit\" name=\"subp\" value=\"AddHallPartners\">Add Hall Partners</button> <button type=\"submit\" name=\"subp\" value=\"ViewHallPartners\">View Hall Partners</button><button type=\"submit\" name=\"subp\" value=\"ShowHalLBooking\">View Hall booking Details</button></form></center>\n");
      out.write("\n");

        if(request.getParameter("subp").equals("AddHallPartners"))
       { 
 
           
      out.write("\n");
      out.write("           <div class=\"registerform\">   <fieldset style=\"background-color: #E0E0E0\">\n");
      out.write("                   <form action=\"./BookHall.jsp\" method=\"post\">\n");
      out.write("               <table>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Name:</td><td><input type=\"text\" name=\"hname\" /></td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                       <td>Address:</td><td><textarea name=\"haddress\"></textarea></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Availability:</td><td><input type=\"radio\" name=\"avail\">Yes<input type=\"radio\" name=\"avail\">No</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                   <td>Available From:</td><td><input type=\"text\" name=\"doa\"/> </td>\n");
      out.write("               </tr>\n");
      out.write("                   <tr>\n");
      out.write("                   <td>Contact No.</td><td><input type=\"text\" name=\"mob\"/> </td>\n");
      out.write("               </tr>\n");
      out.write("                              <tr>\n");
      out.write("                   <td><input type=\"submit\" name=\"subf\"/></td>\n");
      out.write("               </tr>\n");
      out.write("               </table></form></fieldset></div>\n");
      out.write("                \n");
      out.write("                     ");

               
  }  
else if(request.getParameter("subp").equals("ShowAdmin"))
{
 String str2="select * from administrator";
 ResultSet rs = ConnectionManager.exeQuery(str2);
out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'>");
 out.println("<br><th>Admin Name</th><th>Admin Password</th><th>Address</th><th>Mobile</th>");  
while(rs.next())
{
  out.println("<tr><td>"+rs.getString(1)+"</td>");
  out.println("<td>"+rs.getString(2)+"</td>");
  out.println("<td>"+rs.getString(3)+"</td>");
  out.println("<td>"+rs.getString(4)+"</td></tr>");
 }
out.println("</table>");
}
}
  }  
 catch(Exception ex)
    {
        out.println(ex.getMessage());
        
    }

      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
