<%-- 
    Document   : BookHall1
    Created on : Jun 12, 2016, 10:10:45 AM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Your Hall</title>
        <script>
               function profile()
               {
                   var xhr=new XMLHttpRequest();
                   xhr.open("GET","Viewuser.jsp?id=<%=session.getAttribute("Id")%>");
                   xhr.send(null);
                   xhr.onreadystatechange=function()
                   {
                     if(xhr.readyState == 4 && xhr.status == 200)
                     {
                 document.getElementById('spn').innerHTML = xhr.responseText;  
               }}}
        function Editprofile()
               {
                   var xhr=new XMLHttpRequest();
                   xhr.open("GET","Edituser1.jsp?id=<%=session.getAttribute("Id")%>");
                   xhr.send(null);
                   xhr.onreadystatechange=function()
                   {
                     if(xhr.readyState == 4 && xhr.status == 200)
                     {
                 document.getElementById('spn').innerHTML = xhr.responseText;  
               }}}
       function OrderDetails()
       {
           var xhr = new XMLHttpRequest();
           xhr.open("Get","ShowMyOrder.jsp?id=<%=session.getAttribute("Id")%>");
           xhr.send(null);
           xhr.onreadystatechange=function()
                   {
                     if(xhr.readyState == 4 && xhr.status == 200)
                     {
                 document.getElementById('spn').innerHTML = xhr.responseText;  
               }}
       }
          function BookingDetails()
       {
           var xhr = new XMLHttpRequest();
           xhr.open("Get","ShowMyBooking.jsp?id=<%=session.getAttribute("Id")%>");
           xhr.send(null);
           xhr.onreadystatechange=function()
                   {
                     if(xhr.readyState == 4 && xhr.status == 200)
                     {
                 document.getElementById('spn').innerHTML = xhr.responseText;  
               }}
       }
             </script>
    </head>
   <body>
        <%
            if(session.getAttribute("uname")!=null)
        {
            %>
       <%@include file="MainLayoutUser.jsp" %>
        <span id="spn"></span>
    <div class="shops" style="background-color:rgba(255,255,255,0.6);width:80%;margin: auto;">
       <%
            String str2="select * from hall";
 ResultSet rs = ConnectionManager.exeQuery(str2);
 
 while(rs.next())
 {
    %>
  <div class="row">
       <div class="col-lg-12">
                <h2><%=rs.getString(2)%></h2>
              
                <p>Address: <%=rs.getString(3)%><br>Availability: <%=rs.getString(4)%><br>Available from: <%=rs.getString(5)%><br>Contact No.: <%=rs.getString(6)%> </p>
                <button class="btn btn-primary"><a href="./finalbook.jsp?id=<%=rs.getString(1)%>" style="color:#fff;text-decoration: none">Book Hall</a><span class="glyphicon glyphicon-chevron-right"></span></button>
            </div>
             <!--   <div class="col-lg-4">
                    <span id="menu"></span>
                </div> -->
        </div>
   
 
     
        
       
       
       <% }}
           else
{

%>
<script>
  var r =  window.confirm("You need to Login before viewing different Restaurants");
  
</script> 
<a href="index.html" title="Register Now">Click to go to Home Page...</a>
        <%
            
//response.sendRedirect("index.html");
}
%>
    
    
 
    </div> </body>
</html>
