package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import aaliya.ConnectionManager;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/MainLayout.jsp");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <title>Food 4 Mood</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Fonts -->\n");
      out.write("   <!-- <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800\" rel=\"stylesheet\" type=\"text/css\"> -->\n");
      out.write("   <!-- <link href=\"http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic\" rel=\"stylesheet\" type=\"text/css\"> -->\n");
      out.write("\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("   \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"row\">\n");
      out.write("\t<div class=\"col-lg-12\">\n");
      out.write("\t<div class=\"brand\">Food 4 Mood</div>\n");
      out.write("    <div class=\"address-bar\">\"We Love to Serve Variety.\"</div></div>\n");
      out.write("\t</div>\n");
      out.write("    <!-- Navigation -->\n");
      out.write(" \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Register-Food 4 Mood</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("          <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    </head> \n");
      out.write("    <div class=\"registerform\"><fieldset style=\"background-color:#E0E0E0\"> \n");
      out.write("                <form role=\"form\" action=\"./Register.jsp\" method=\"post\" class=\"form-horizontal\" >\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"name\">User Name</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"uname\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"password\">Password</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"password\" class=\"form-control\" name=\"upass\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"cpassword\">Confirm Password</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"password\" class=\"form-control\" name=\"nupass\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"Address\">Address</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <textarea class=\"form-control\" name=\"address\" required></textarea>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"city\">City</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"city\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"pincode\">Pin Code</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"pin\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"mob\">Mobile No.</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"mob\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-lg-3\" for=\"dob\">Date Of Birth</label>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"dob\" required>\n");
      out.write("                    </div></div>\n");
      out.write("                 \n");
      out.write("                <div class=\"form-group\">        \n");
      out.write("      <div class=\"col-lg-offset-3 col-lg-9\">\n");
      out.write("        <div class=\"checkbox\">\n");
      out.write("          <label><input type=\"checkbox\" name=\"ch\" value=\"checked\">I agree to the terms and conditions of Food 4 Mood.</label>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("                <div class=\"form-group\"> \n");
      out.write("    <div class=\"col-lg-offset-3 col-lg-9\">\n");
      out.write("        <button type=\"submit\" name=\"sub\" class=\"btn btn-default\" onmouseup=\"alert('Successfully Registered,Click on Home to go back to Login Page');\">Submit</button>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                 \n");
      out.write("            </form>\n");
      out.write("        </fieldset></div>\n");
      out.write("         <footer>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12 text-center\">\n");
      out.write("                    <h2>Let's Get in Touch!!</h2>\n");
      out.write("\t\t\t\t\t<hr>\n");
      out.write("\t\t\t\t\t<h4>We will love to hear from you.It will be great to know your feedbacks.</h4>\n");
      out.write("\t\t\t\t\t<br><div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t<img src=\"img/call.png\"  width=\"35px\" height=\"35px\"/><br>+91 8083930093,+91 9631055327</div><div class=\"col-lg-4\"><img src=\"img/mail.png\"width=\"35px\"  height=\"35px\"/><br>aaliyafarheennitp54@gmail.com</div><div class=\"col-lg-4\"><img src=\"img/facebook.png\"  width=\"35px\" height=\"35px\"/><br>www.facebook/food4mood.com\n");
      out.write("\t\t\t\t\t</div></div><span class=\"sus\"><h3>Subscribe for our NewsLetters</h3></span><br><input type=\"email\" placeholder=\"Enter your email address here\" name=\"email\"/><br>\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"sub\" value=\"Subscribe\">\n");
      out.write("              <br><br>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("    </footer>\n");

if(request.getParameter("sub")!=null)
{
    String pass=request.getParameter("upass");
    String npass=request.getParameter("nupass");
    if(pass.equals(npass) && request.getParameter("ch")!=null)
    {
        String str ="insert into user(User_Name,User_Password,Address,City,PinCode,Mobile,Date_Of_Birth) values('"+request.getParameter("uname")+"','"+request.getParameter("upass")+"','"+request.getParameter("address")+"','"+request.getParameter("city")+"',"+request.getParameter("pin")+","+request.getParameter("mob")+",'"+request.getParameter("dob")+"')";
        int num = ConnectionManager.exQuery(str);
        if(num>0)
        {  
      out.write("\n");
      out.write("        <script>\n");
      out.write("       // alert(\"Successfully Registered,Click on Home to go back to Login Page\");\n");
      out.write("        response.sendRedirect(\"index.html\");\n");
      out.write("        </script>\n");
      out.write("       ");
     /* RequestDispatcher rd = request.getRequestDispatcher("");
             request.setAttribute("msg",message);
             rd.include(request,response);*/
        }
    }
    else
{

      out.write("\n");
      out.write("        <script>alert(\"Confirm Password donot match or Please check the term and conditions\");</script>\n");
  } }
else if(request.getParameter("sub1")!=null)
{
if(request.getParameter("uname").equals("Admin") && request.getParameter("upass").equals("Admin@F4M"))
{
response.sendRedirect("Admin.jsp");
}
else
{

}
}

      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
