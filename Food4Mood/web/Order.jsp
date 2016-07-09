<%-- 
    Document   : Order
    Created on : Jun 10, 2016, 8:17:54 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
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
    <body><%@include file="MainLayoutUser.jsp" %><div class="registerform"><fieldset style="background-color: #E0E0E0"> 
                <form role="form" action="./FinalOrder" method="post">
        <%
           
            String str ="select * from partners";
            ResultSet rs = ConnectionManager.exeQuery(str);
            while(rs.next())
            {
        if(request.getParameter("id").equals(rs.getString(1)))
        {  
           /*  Cookie mycookie = new Cookie("Shop",rs.getString(2));
             response.addCookie(mycookie); */
            session.setAttribute("shop",rs.getString(2));
            String str1 = "select * from "+rs.getString(2)+""; 
            ResultSet rs1 = ConnectionManager.exeQuery(str1);
            while(rs1.next())
            {
            
            %> 
           <div class="col-lg-3">
                    <input type="number" class="form-control" name="quantity" >
                    </div>
                    <div class="col-lg-9">       <div class="form-group">        
        <div class="checkbox">
            <label><input type="checkbox" name="ch" value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%><span class="label label-success" style="margin-left:10px">Rs.<%=rs1.getString(3)%></span></label>
        </div>
      </div>
                        </div>
         
        <% 
        } 
        %>  <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <button type="submit" class="btn btn-default" name="submit" value="Order" onmouseup="alert('Order Successfully placed,Now you will be redirected to your Home page.')">Order</button>
            </div>
</div></form></fieldset></div><%
        
            }
        }

%>

          
    </body>
</html>
