<%-- 
    Document   : ShowMenu
    Created on : Jun 10, 2016, 2:37:59 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
               <div class="container"> 
                   <div class="row">
                       <div class="box">
                       <div class="col-lg-4">
                            <h3>PRAMOD</h3>  
       <%
     
       String str = "select * from Pramod ";
       ResultSet rs = ConnectionManager.exeQuery(str);
       while(rs.next())
       {
           %>
         
          <%=rs.getString(2)%>------- Rs.  <%=rs.getString(3)%><br>
          
      
                 
          <% } %> <button class="btn btn-default" type="submit" name="sub"><a href="./Order.jsp?id=1" >Order</a></button></div>
                <div class="col-lg-4">    <h3>KHUSHI RESTAURANT</h3>   
                   <%
           
       String str1 = "select * from khushi ";
       ResultSet rs1 = ConnectionManager.exeQuery(str1);
       while(rs1.next())
       {
           %>
         
           <%=rs1.getString(2)%>------- Rs. <%=rs1.getString(3)%><br>
                
        <% 
       }
        %><button class="btn btn-default" type="submit"><a href="./Order.jsp?id=2" >Order</a></button></div>
<div class="col-lg-4">    <h3>KANCHAN SWEETS</h3>   
                   <%
           
       String str2 = "select * from Kanchan Sweets ";
       ResultSet rs2 = ConnectionManager.exeQuery(str2);
       while(rs2.next())
       {
           %>
         
           <%=rs2.getString(2)%>------- Rs. <%=rs2.getString(3)%><br>
                
        <% 
       }
%><button class="btn btn-default" type="submit"><a href="./Order.jsp?id=3">Order</a></button></div>
                </div></div></div>
<%
}
else
{

%>
<script>
  var r =  window.confirm("You need to Login before viewing Menus of different Restaurants");
  
</script> 
<a href="index.html" style="margin-left:530px;color:#000;text-decoration: none;font-size:1.75em " title="Register Now">Click to go to Home Page...</a>
        
        <%
            
//response.sendRedirect("index.html");
}
%>


</body>
</html>
