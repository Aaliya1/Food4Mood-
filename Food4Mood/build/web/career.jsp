<%-- 
    Document   : career
    Created on : Jun 12, 2016, 2:09:18 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Career request</title>
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
        String str ="select * from partners where Partner_Id="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
            session.setAttribute("Pid",rs.getString(1));
        %>
         <div class="registerform"><fieldset style="background-color:#E0E0E0"> 
                <form role="form" action="./career.jsp" method="post" class="form-horizontal" >
                <div class="form-group">
                    <label class="control-label col-lg-3" for="name"> Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" value="<%=session.getAttribute("uname")%>" name="uname" required>
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="Address">Address</label>
                    <div class="col-lg-9">
                        <textarea class="form-control" name="address" required></textarea>
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="mob">Mobile No.</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control" name="mob" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="dob">Date Of Birth</label>
                    <div class="col-lg-9">
                        <input type="date" class="form-control" name="dob" required>
                    </div></div>
<div class="form-group">
                    <label class="control-label col-lg-3" for="education">Education Qualification</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="edu" required>
                    </div></div>         
                <div class="form-group">   
         <label class="control-label col-lg-3">Interest in </label><div class="col-lg-9">
        <div class="radio">
            <label><input type="radio" name="ins" value="client Service">Client Service</label><label><input type="radio" name="ins" value="Major cooking side">Major cooking site</label>
        </div>
      </div> </div>
         <div class="form-group">
                    <label class="control-label col-lg-3" for="experience">Experience</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="exp" required>
                    </div></div>    
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="email">Email Id</label>
                    <div class="col-lg-9">
                        <input type="email" class="form-control" name="email" required>
                    </div></div>   
                   <div class="form-group">   
         <label class="control-label col-lg-3">Applied For </label><div class="col-lg-9">
        <div class="radio">
            <label><input type="radio" name="apply" value="Internship">InternShip</label><label><input type="radio" name="apply" value="Job">Job</label>
        </div>
      </div> </div>
                     <div class="form-group">
                    <label class="control-label col-lg-3" for="Partner_Name">Applied in:</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="partner" value="<%=rs.getString(2)%>" required>
                    </div></div> 
                <div class="form-group"> 
    <div class="col-lg-offset-3 col-lg-9">
      <button type="submit" name="sub" value="Apply" class="btn btn-default">Apply</button>
    </div>
  </div>
                 
            </form>
        </fieldset></div>
         <%
         }
         try{
            if(request.getParameter("sub").equals("Apply"))
{
String str1 = "insert into careers(User_Id,Name,Address,Mobile_No,Date_Of_Birth,Education,Interested,Experience,Email_Id,Applied_For,Partner_ID)values("+session.getAttribute("Id")+",'"+request.getParameter("uname")+"','"+request.getParameter("address")+"','"+request.getParameter("mob")+"','"+request.getParameter("dob")+"','"+request.getParameter("edu")+"','"+request.getParameter("ins")+"','"+request.getParameter("exp")+"','"+request.getParameter("email")+"','"+request.getParameter("apply")+"',"+session.getAttribute("Pid")+")";
int num = ConnectionManager.exQuery(str1);
if(num>0)
{
%>
<script>
window.alert('Career Request accepted.We will Contact you.');</script>
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
