<%-- 
    Document   : finalbook
    Created on : Jun 12, 2016, 10:24:15 AM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book you Hotel</title>
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
        
        <%@include file="MainLayoutUser.jsp" %>
         <span id="spn"></span>
        <%
        String str="select * from hall where Hall_No="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        %>
        <div class="registerform"><fieldset style="background-color:#E0E0E0"> 
                <form role="form" action="./finalbook.jsp" method="post" class="form-horizontal" >
                     <div class="form-group">
                         <label class="control-label col-lg-5" for="hnum">Hall No.</label>
                         <div class="col-lg-7">
                             <input type="text" class="form-control" name="hnum" value="<%=rs.getString(1)%>">
                         </div>
                     <div class="form-group">
                         <label class="control-label col-lg-5" for="hname">Hall Name</label>
                         <div class="col-lg-7">
                             <input type="text" class="form-control" name="hname" value="<%=rs.getString(2)%>">
                         </div>
                     </div>
                         <div class="form-group">
                         <label class="control-label col-lg-5" for="hname">Address</label>
                         <div class="col-lg-7">
                             <input type="text" class="form-control" name="haddress" value="<%=rs.getString(3)%>">
                         </div>
                     </div>
                       <div class="form-group">
                    <label class="control-label col-lg-5" for="dob">Hall Booking Date</label>
                    <div class="col-lg-7">
                        <input type="date" class="form-control" name="doh" required>
                    </div></div>
                 
                <div class="form-group">        
      <div class="col-lg-offset-3 col-lg-9">
        <div class="checkbox">
          <label><input type="checkbox" name="ch" value="checked" required>I confirm to book the above hall and I am aware of the terms and conditions of Food 4 Mood</label>
        </div>
      </div>
    </div>
                <div class="form-group"> 
    <div class="col-lg-offset-3 col-lg-9">
        <button type="submit" name="sub" class="btn btn-default" value="Submit">Submit</button>
    </div>
  </div>
                 
            </form>
        </fieldset></div>
                         <% }
                         %>
       <%
       try{
         if(request.getParameter("sub").equals("Submit"))
         {
             String str1 ="insert into booking(User_Id,Hall_No,Date) values("+session.getAttribute("Id")+","+request.getParameter("hnum")+",'"+request.getParameter("doh")+"')";
             int num = ConnectionManager.exQuery(str1);
             if(num>0)
             {
              %><script>window.alert('Booking Successful,We will Contact you in an hour for more specifications');</script>
                  <%
                
             }
         }
       }
       catch(Exception ex)
       {
           out.println(ex.getMessage());
       }
       
       %>                  
                         
    </body>
</html>
