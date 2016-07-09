<%-- 
    Document   : Search
    Created on : Jun 9, 2016, 4:24:38 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet,aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
          <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
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
  String str2="select * from partners";
 ResultSet rs = ConnectionManager.exeQuery(str2);
 
 while(rs.next())
 {
    %>
  <div class="row">
      <div class="col-lg-4"><br><br><br>
          <img class="shops" src="./view?id=<%=rs.getString(1)%>" width="250px" height="120px"alt=<%=rs.getString(2)%>>
            </div>
            <div class="col-lg-8">
                <h3><%=rs.getString(2)%></h3>
              
                <p>Address: <%=rs.getString(3)%><br>Contact No. <%=rs.getString(4)%><br>Email-id:<%=rs.getString(5)%></p>
                <button class="btn btn-primary"><a href="./ShowMenu.jsp" style="color:#fff;text-decoration: none">View Menu</a><span class="glyphicon glyphicon-chevron-right"></span></button>
            </div>
            </div>
   
   <% }  
}
else
{

%>
<script>
  var r =  window.confirm("You need to Login before viewing different Restaurants");
</script> 
<a href="index.html" style="margin-left:530px;color:#000;text-decoration: none;font-size:1.75em " title="Register Now">Click to go to Home Page...</a>
 
  <%          
//response.sendRedirect("index.html");
}
%>
    
    
    </div>
</html>