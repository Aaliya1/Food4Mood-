<%-- 
    Document   : BookHall
    Created on : Jun 11, 2016, 12:47:49 PM
    Author     : Farheen
--%>

<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            if(session.getAttribute("uname")!=null)
        {
            %>
       
       <%
           try{
               if(request.getParameter("subf").equals("Add"))
               {  String str = "insert into hall(Hall_Name,Address,Availability,Available_from,Contact) values('"+request.getParameter("hname")+"','"+request.getParameter("haddress")+"','"+request.getParameter("avail")+"','"+request.getParameter("doa")+"',"+request.getParameter("mob")+")";
                   int num = ConnectionManager.exQuery(str);
                   if(num>0)
                   {
                       out.println("<p style='text-align:center'>New Hall Partner Added Successfully</p>");
                       RequestDispatcher rd = request.getRequestDispatcher("./Admin.jsp");
                       rd.include(request, response);
                   }
               
               }
               
           }
           catch(Exception ex)
           {
               out.println(ex.getMessage());
           }
       }
else
{
%>
<script>
  var r =  window.confirm("You need to Login before making any booking");
  
</script> 
<a href="index.html" style="margin-left:530px;color:#000;text-decoration: none;font-size:1.75em " title="Register Now">Click to go to Home Page...</a>
        
        <%
            
//response.sendRedirect("index.html");
}
%>
    
    </body>
</html>
