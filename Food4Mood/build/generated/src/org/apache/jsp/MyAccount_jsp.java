package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/MainLayoutUser.jsp");
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
      out.write("         \n");
      out.write("         <body id=\"bdyo\">\n");
      out.write("           <script>\n");
      out.write("               function profile()\n");
      out.write("               {\n");
      out.write("                   var xhr=new XMLHttpRequest();\n");
      out.write("                   xhr.open(\"GET\",\"Viewuser.jsp?id=");
      out.print(session.getAttribute("Id"));
      out.write("\");\n");
      out.write("                   xhr.send(null);\n");
      out.write("                   xhr.onreadystatechange=function()\n");
      out.write("                   {\n");
      out.write("                     if(xhr.readyState == 4 && xhr.status == 200)\n");
      out.write("                     {\n");
      out.write("                 document.getElementById('spn').innerHTML = xhr.responseText;  \n");
      out.write("               }}}\n");
      out.write("        function Editprofile()\n");
      out.write("               {\n");
      out.write("                   var xhr=new XMLHttpRequest();\n");
      out.write("                   xhr.open(\"GET\",\"Edituser1.jsp?id=");
      out.print(session.getAttribute("Id"));
      out.write("\");\n");
      out.write("                   xhr.send(null);\n");
      out.write("                   xhr.onreadystatechange=function()\n");
      out.write("                   {\n");
      out.write("                     if(xhr.readyState == 4 && xhr.status == 200)\n");
      out.write("                     {\n");
      out.write("                 document.getElementById('spn').innerHTML = xhr.responseText;  \n");
      out.write("               }}}\n");
      out.write("     /*  function logout()\n");
      out.write("       {\n");
      out.write("        var xhr=new XMLHttpRequest();\n");
      out.write("                   xhr.open(\"GET\",\"Logout?id=");
      out.print(session.getAttribute("Id"));
      out.write("\");\n");
      out.write("                   xhr.send(null);\n");
      out.write("                   xhr.onreadystatechange=function()\n");
      out.write("                   {\n");
      out.write("                     if(xhr.readyState == 4 && xhr.status == 200)\n");
      out.write("                     {\n");
      out.write("                       window.onload=  xhr.responseText;  \n");
      out.write("                         \n");
      out.write("               }} \n");
      out.write("       }\n");
      out.write("*/           </script>\n");
      out.write("           ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <title>My-Account-Food 4 Mood</title>\n");
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
      out.write("    <div style=\"text-align: center;color:#ac2925;font-weight:bold\">Welcome ");
      out.print(session.getAttribute("uname"));
      out.write("</div>\n");
      out.write("                      \n");
      out.write("    <nav class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t  <div class=\"navbar-header\">\n");
      out.write("\t\t \n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->\n");
      out.write("          <a class=\"navbar-brand\" href=\"index.html\">Food 4 Mood</a><br><hr style=\"width:100%\"><div class=\"address1\" >\"We Love to Serve Variety\"</div>\n");
      out.write("\t\t \n");
      out.write("\t\t\t</div>\n");
      out.write("            </div> \n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling --> \n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\"> \n");
      out.write("                 <ul class=\"nav navbar-nav\">\n");
      out.write("              \n");
      out.write("                     <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"MyProfile\" onclick=\"profile()\">My Profile</button>\n");
      out.write("                     </li>\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"Editprofile\" onclick=\"Editprofile()\">Edit Profile</button>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <button type=\"submit\" name=\"sub1\" value=\"OrderDetails\">Order Details</button>\n");
      out.write("                    </li>\n");
      out.write("\t\t     <li>\n");
      out.write("                         <button type=\"submit\" name=\"sub1\" value=\"logout\" ><a href=\"./Logout\"style=\"color:#fff;text-decoration:none\">Log Out</a></button>\n");
      out.write("                    </li>\t\t\n");
      out.write("                </ul>\n");
      out.write("\t\t \t    \n");
      out.write("\t\t\t\t<!--   </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");
      out.write("    </html>\n");
      out.write("\n");
      out.write("          <span id=\"bdy\"></span>\n");
      out.write("            <span id=\"spn\"></span>\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"box\">\n");
      out.write("                <div class=\"col-lg-12 text-center\">\n");
      out.write("\t\t\t\t<h2> At Your Service</h2><hr><br>\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <a href=\"Search.jsp\" title=\"Search restaurants,Shops and order online\"><img src=\"img/search.png\" width=\"111px\" height=\"111px\"/>\n");
      out.write("\t\t\t\t\t</a><br><br>\n");
      out.write("\t\t\t\t\tSearch nearby Restaurants,and Sweet Shops and Book your table or Order Online.\n");
      out.write("                                        </div>\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t\t\t <a href=\"ShowMenu.jsp\" title=\"View Menu of different Restaurants\"><img src=\"img/menu.png\"  width=\"111px\" height=\"111px\"/>\n");
      out.write("                                         </a><br><br>\n");
      out.write("\t\t\t\t\tView Menus from different restaurants and make your Choice.\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t\t\t<img src=\"img/job.png\" width=\"111px\" height=\"111px\"/>\n");
      out.write("\t\t\t\t\t<br><br>\n");
      out.write("\t\t\t\t\tWanna work as an Intern or searching for a job in this sector.<br>We are here to help.\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t\t\t<img src=\"img/bday.png\" width=\"111px\" height=\"111px\"/>\n");
      out.write("\t\t\t\t\t<br><br>\n");
      out.write("\t\t\t\t\tBook Halls for birthdays,marriages.Order for Catering and decoration\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                    \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                   \n");
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
