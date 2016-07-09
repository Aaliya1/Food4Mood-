package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import aaliya.ConnectionManager;

public final class Edituser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Edit User</title>\n");
      out.write("           <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"> \n");
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
      out.write("        </nav>\n");
      out.write("        ");

        String str = "Select * from user where ID="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        
      out.write("\n");
      out.write("         <div class=\"registerform\"><fieldset style=\"background-color:#E0E0E0\"><form role=\"form\" method=\"post\" class=\"form-horizontal\" >\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"name\">User Name</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nuname\" value=\"");
      out.print(rs.getString(2));
      out.write("\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"password\">Password</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nupass\" value=\"");
      out.print(rs.getString(3));
      out.write("\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"Address\">Address</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"naddress\" value=\"");
      out.print(rs.getString(4));
      out.write("\" required/>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"city\">City</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"ncity\" value=\"");
      out.print(rs.getString(5));
      out.write("\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"pincode\">Pin Code</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"npin\" value=\"");
      out.print(rs.getString(6));
      out.write("\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"mob\">Mobile No.</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"nmob\" value=\"");
      out.print(rs.getString(7));
      out.write("\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"dob\">Date Of Birth</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"ndob\" value=\"");
      out.print(rs.getString(8));
      out.write("\"  required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                     <label class=\"control-label col-lg-3\" for=\"points\">Points</label>\n");
      out.write("                     <div class=\"col-lg-9\">\n");
      out.write("                     <input type=\"number\" class=\"form-control\" name=\"npoints\" value=\"");
      out.print(rs.getString(9));
      out.write("\" required/>\n");
      out.write("                     </div></div>\n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-lg-offset-3 col-lg-9\">\n");
      out.write("                         <button type=\"submit\" name=\"sub\" class=\"btn btn-default\" value=\"Update\">Update</button>\n");
      out.write("    </div>\n");
      out.write("                     </div>\n");
      out.write("                 </form></fieldset></div>\n");
      out.write("                 \n");
      out.write("        ");

        }
if(request.getParameter("sub").equals("Update"))
{
String str1 = "update user set User_Name='"+request.getParameter("nuname")+"',User_Password='"+request.getParameter("nupass")+"',Address='"+request.getParameter("naddress")+"',City='"+request.getParameter("ncity")+"',PinCode="+request.getParameter("npin")+",Mobile="+request.getParameter("nmob")+",Date_Of_Birth='"+request.getParameter("ndob")+"',Points="+request.getParameter("npoints")+"";
int num=ConnectionManager.exQuery(str1);
if(num>0)
{
  out.println("<p style='text-align:center;color:#000;font-size:20px;'>Record Successfully Updated</p>");
                RequestDispatcher rd = request.getRequestDispatcher("Edituser.jsp");
                rd.include(request,response);
}

}
        
      out.write("\n");
      out.write("    \n");
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
