package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import aaliya.ConnectionManager;

public final class EditCareer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Edit User Career Details</title>\n");
      out.write("           <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        ");

            try{
        String str = "Select * from user where ID="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        
      out.write("\n");
      out.write("        <div class=\"registerform\"><fieldset style=\"background-color:#E0E0E0\"><form action=\"./EditCareer.jsp\" method=\"post\"><a href=\"Admin.jsp\">&nbsp;&nbsp;Go back..</a>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"name\">Request ID</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nrid\" value=\"");
      out.print(rs.getString(1));
      out.write("\" readonly />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"name\">User ID</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nuid\" value=\"");
      out.print(rs.getString(2));
      out.write("\"  />\n");
      out.write("                    </div></div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"name\">User Name</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nuname\" value=\"");
      out.print(rs.getString(3));
      out.write("\" />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"address\">Address</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"address\" value=\"");
      out.print(rs.getString(4));
      out.write("\">\n");
      out.write("                    </div></div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"mob\">Contact No.</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nmob\" value=\"");
      out.print(rs.getString(5));
      out.write("\" />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"date\">Date_Of_Birth</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"ndob\" value=\"");
      out.print(rs.getString(6));
      out.write("\"  />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"edu\">Education Qualification</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"nedu\" value=\"");
      out.print(rs.getString(7));
      out.write("\" />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"nins\">Interested in</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"nins\" value=\"");
      out.print(rs.getString(8));
      out.write("\"  />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"exp\">Experience</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"nexp\" value=\"");
      out.print(rs.getString(9));
      out.write("\"  />\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                     <label class=\"control-label col-lg-3\" for=\"status\">Status</label>\n");
      out.write("                     <div class=\"col-lg-9\">\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"nstatus\" value=\"");
      out.print(rs.getString(10));
      out.write("\" />\n");
      out.write("                     </div></div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                     <label class=\"control-label col-lg-3\" for=\"email\">Email-Id</label>\n");
      out.write("                     <div class=\"col-lg-9\">\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"nemail\" value=\"");
      out.print(rs.getString(11));
      out.write("\" />\n");
      out.write("                     </div></div> \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                     <label class=\"control-label col-lg-3\" for=\"apply\">Applied-For</label>\n");
      out.write("                     <div class=\"col-lg-9\">\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"napply\" value=\"");
      out.print(rs.getString(12));
      out.write("\" />\n");
      out.write("                     </div></div> \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                     <label class=\"control-label col-lg-3\" for=\"partner\">Partners-Id</label>\n");
      out.write("                     <div class=\"col-lg-9\">\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"npid\" value=\"");
      out.print(rs.getString(13));
      out.write("\"/>\n");
      out.write("                     </div></div>  <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-lg-offset-3 col-lg-9\">\n");
      out.write("                         <button type=\"submit\" name=\"sub\" class=\"btn btn-default\" value=\"Update\">Update</button>\n");
      out.write("    </div>\n");
      out.write("                     </div> </form>\n");
      out.write("                </fieldset></div>\n");
      out.write("                 \n");
      out.write("        ");

        }
if(request.getParameter("sub").equals("Update"))
{
String str1 = "update careers set User_Id="+request.getParameter("nuid")+",Name='"+request.getParameter("nuname")+"',Address='"+request.getParameter("address")+"',Mobile_No="+request.getParameter("nmob")+",Date_Of_Birth='"+request.getParameter("ndob")+"',Education="+request.getParameter("nedu")+",Interested='"+request.getParameter("nins")+"',Experience='"+request.getParameter("nexp")+"',Status='"+request.getParameter("nstatus")+"',Email_Id='"+request.getParameter("nemail")+"',Applied_For='"+request.getParameter("napply")+"',Partner_Id="+request.getParameter("npid")+" where Request_No="+request.getParameter("nrid")+"";
int num=ConnectionManager.exQuery(str1);
if(num>0)
{
  out.println("<p style='text-align:center;color:#000;font-size:20px;'>Record Successfully Updated</p>");
     RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                rd.include(request,response);
              

}}}
catch(Exception ex)
{
out.println(ex.getMessage());
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
