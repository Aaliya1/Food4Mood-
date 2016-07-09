<%-- 
    Document   : Admin
    Created on : Jun 8, 2016, 8:08:19 AM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My page-The Admin Page</title>
     <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
         <div class="row">
	<div class="col-lg-12">
	<div class="brand">Food 4 Mood</div>
        <div class="address-bar">"We Love to Serve Variety."</div></div>
     
    </div>
     
        
        <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header">
		 
                
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
          <a class="navbar-brand" href="index.html">Food 4 Mood</a><br><hr style="width:100%"><div class="address1" >"We Love to Serve Variety"</div>
			</div>
            </div> 
            <!-- Collect the nav links, forms, and other content for toggling --> 
       <!--   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
       <form action="./Admin.jsp">
                <ul class="nav navbar-nav">
                    <li>
                        <button type="submit" name="sub1" value="O">Our Users</button>
                    </li>
                    <li>
                        <button type="submit" name="sub1" value="Partners">Our Partners</button>
                    </li>
                    <li>
                        <button type="submit" name="sub1" value="Orders">Orders</button>
                    </li>
                    <li>
                        <button type="submit" name="sub1" value="Career">Careers</button>
                    </li>
                     <li>
                        <button type="submit" name="sub1" value="Menu">Menu</button>
                    </li>
                     <li>
                         <button type="submit" name="sub1" value="Book">Bookings</button>
                    </li>
                     <li>
                         <button type="submit" name="sub1" value="admin">Manage Admin Info</button>
                    </li>
                     <li>
                         <button type="submit" name="sub1" value="logout" >
                        <a href="./Logout"style="color:#fff;text-decoration:none">Log Out</a></button>
                    </li>
                </ul></form>
<!--   </div>
            <!-- /.navbar-collapse -->
            
        </div>
        <!-- /.container -->
    </nav>
<%
    try{
        if(request.getParameter("sub1")== null)
        {
            %> <h3 style="text-align: center">Welcome Admin</h3><%
        }
        else if(request.getParameter("sub1").equals("O"))
{
    String str = "select * from user";
    ResultSet rs = ConnectionManager.exeQuery(str);
    out.println("<table cellpadding='15px' cellspacing='0' border='1' style='background-color:#fff;width:80%;margin:auto;text-align:center'><tr><th>User_ID</th><th>User_Name</th><th>User_Password</th><th>Address</th><th>City</th><th>Pin_Code</th><th>Mobile_No.</th><th>Date_Of_Birth</th><th>Points</th><th>Actions</th></tr>");
    while(rs.next())
    {
       out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td><a href='./Delete?id="+rs.getString(1)+"'>Delete</a>|<a href='./Edituser.jsp?id="+rs.getString(1)+"'>Edit</a>|<a href='./Viewuser.jsp?id="+rs.getString(1)+"'>View</a></td></tr>") ;
    }
   
}
else if(request.getParameter("sub1").equals("Partners"))
{ 
%>
<form  method="post"><center><button type="submit" name="subp" value="Add" onmouseup="window.alert('Dear Admin ,After adding Partners Detail,Add it also in ShowMenu.jsp page')">Add</button> <button type="submit" name="subp" value="Show">View Partners Details</button></center></form>
    <%
      
if(request.getParameter("subp").equals("Add"))
       { 
 
           %>
           <div class="registerform"><fieldset style="background-color:#E0E0E0">
              <form method="post" action="./Addpartners" enctype="multipart/form-data">
               <table>
                   <tr>
                       <td>Name:</td><td><input type="text" name="pname" /></td>
                   </tr>
                   <tr>
                       <td>Address:</td><td><textarea name="address"/></textarea></td>
                   </tr>
                   <tr>
                       <td>Mobile:</td><td><input type="text" name="mob"/></td>
                   </tr>
                   <tr>
                   <td>Email:</td><td><input type="email" name="email"/> </td>
               </tr>
               <tr>
                   <td>Image:</td><td><input type="file" name="image"/></td>
               </tr>
               <tr>
                   <td>Date of partnership</td><td><input type="date" name="dop"/></td>
               </tr>
               <tr>
                   <td>Percent Shared</td><td><input type="number" name="percent"/></td>
               </tr>
               <tr>
                   <td><input type="submit" name="subf"/></td>
               </tr>
               </table>
               </form> </fieldset></div>
           
           <%
               
  }  
else if(request.getParameter("subp").equals("Show"))
{
 String str2="select * from partners";
 ResultSet rs = ConnectionManager.exeQuery(str2);
while(rs.next())
{
  out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'><tr><td>Partner ID</td><td>"+rs.getString(1)+"<td><br>");
  out.println("<td rowspan='7'>"+"<img src='./view?id="+rs.getString(1)+"'width='100px' height='100px'/></td></tr><br>");
  out.println("<tr><td>Partner name</td><td>"+rs.getString(2)+"</td></tr><br>");
  out.println("<tr><td>Address</td><td>"+rs.getString(3)+"</td></tr><br>");
  out.println("<tr><td>Mobile</td><td>"+rs.getString(4)+"</td></tr><br>");
  out.println("<tr><td>Email</td><td>"+rs.getString(5)+"</td></tr><br>");
 out.println("<tr><td>Date_Of_Partnership</td><td>"+rs.getString(7)+"</td></tr><br>");
 out.println("<tr><td>Percent</td><td>"+rs.getString(8)+"</td></tr></table><br>");
}
}
}
else if(request.getParameter("sub1").equals("Orders"))
{
%>
 <div class="table-responsive">          
  <table class="table table-hover" style="background-color:rgba(255,255,255,0.9)">
    <thead>
      <tr>
        <th>Order_ID</th>
        <th>Order_Date</th>
        <th>Order_Bill</th>
        <th>User_Id</th>
        <th>Order_Time</th>
        <th>Delivery_Time</th>
        <th>Details</th>
         <th>Respective Quantity</th>
          <th>Shop Name</th>
      </tr>
    </thead>
    <tbody>          

<%
     String str = "select * from order_menu";
        ResultSet rs = ConnectionManager.exeQuery(str);
        while(rs.next())
        { %>
<tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
          <td><%=rs.getString(8)%></td>
          <td><%=rs.getString(9)%></td>
      
        
        <%
}%>  </tr>
    </tbody>
  </table>
  </div> <%}
else if(request.getParameter("sub1").equals("Menu"))
{
      %>         <div class="container"> 
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
          
      
                 
          <% } %> </div>
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
        %></div>
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
}
else if(request.getParameter("sub1").equals("admin"))
{
%>
<center><form method="post"><button type="submit" name="subp" value="AddAdmin">Add New Admin</button> <button type="submit" name="subp" value="ShowAdmin">View Admin Details</button></form></center>

<%
        if(request.getParameter("subp").equals("AddAdmin"))
       { 
 
           %>
           <div class="registerform">   <fieldset style="background-color: #E0E0E0">
                   <form action="./AddAdmin" method="post">
               <table>
                   <tr>
                       <td>Admin Name:</td><td><input type="text" name="aname" /></td>
                   </tr>
                   <tr>
                       <td>Password</td><td><input type="password" name="apass" /></td>
                   </tr>
                   <tr>
                       <td>Address:</td><td><textarea name="address"></textarea></td>
                   </tr>
                   <tr>
                   <td>Contact No.</td><td><input type="text" name="mob"/> </td>
               </tr>
                              <tr>
                   <td><input type="submit" name="subf"/></td>
               </tr>
               </table></form></fieldset></div>
                
                     <%
               
  }  
else if(request.getParameter("subp").equals("ShowAdmin"))
{
 String str2="select * from administrator";
 ResultSet rs = ConnectionManager.exeQuery(str2);
out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'>");
 out.println("<br><th>Admin Name</th><th>Admin Password</th><th>Address</th><th>Mobile</th>");  
while(rs.next())
{
  out.println("<tr><td>"+rs.getString(1)+"</td>");
  out.println("<td>"+rs.getString(2)+"</td>");
  out.println("<td>"+rs.getString(3)+"</td>");
  out.println("<td>"+rs.getString(4)+"</td></tr>");
 }
out.println("</table>");
}

}
else if(request.getParameter("sub1").equals("Book"))
{
%>
<center><form method="post"><button type="submit" name="subp" value="AddHallPartners">Add Hall Partners</button> <button type="submit" name="subp" value="ViewHallPartners">View Hall Partners</button><button type="submit" name="subp" value="ShowHalLBooking">View Hall booking Details</button></form></center>

<%
        if(request.getParameter("subp").equals("AddHallPartners"))
       { 
 
           %>
           <div class="registerform">   <fieldset style="background-color: #E0E0E0">
                   <form action="./BookHall.jsp" method="post">
               <table>
                   <tr>
                       <td>Name:</td><td><input type="text" name="hname" /></td>
                   </tr>
                     <tr>
                       <td>Address:</td><td><textarea name="haddress"></textarea></td>
                   </tr>
                   <tr>
                       <td>Availability:</td><td><input type="radio" name="avail" value="yes">Yes<input type="radio" value="no" name="avail">No</td>
                   </tr>
                   <tr>
                   <td>Available From:</td><td><input type="date" name="doa"/> </td>
               </tr>
                   <tr>
                   <td>Contact No.</td><td><input type="text" name="mob"/> </td>
               </tr>
                              <tr>
                   <td><input type="submit" name="subf" value="Add"/></td>
               </tr>
               </table></form></fieldset></div>
                
                     <%
               
  }  
else if(request.getParameter("subp").equals("ViewHallPartners"))
{
 String str2="select * from hall";
 ResultSet rs = ConnectionManager.exeQuery(str2);
out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'>");
 out.println("<br><th>Hall ID</th><th>Hall Name</th><th>Address</th><th>Availability status</th><th>Available From</th><th>Mobile</th>");  
while(rs.next())
{
  out.println("<tr><td>"+rs.getString(1)+"</td>");
  out.println("<td>"+rs.getString(2)+"</td>");
  out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("<td>"+rs.getString(5)+"</td>");
  out.println("<td>"+rs.getString(6)+"</td></tr>");
 }
out.println("</table>");
}
else if(request.getParameter("subp").equals("ShowHalLBooking"))
{
String str ="select * from booking ";
ResultSet rs = ConnectionManager.exeQuery(str);
out.println("<table border='1' cellspacing='0' cellpadding='5' style='background-color:#fff;width:50%;margin:auto;'><br><th>Booking No.</th><th>User Id </th><th>Hall No.</th><th>Date Of Booking</th>");
while(rs.next())
{
out.println("<tr><td>"+rs.getString(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td></tr>");
}
out.println("</table>");
}}
else if(request.getParameter("sub1").equals("Career"))
{
String str = "select * from careers";
ResultSet rs = ConnectionManager.exeQuery(str);
out.println("<table border='1' cellspacing='0' cellpadding='15' style='background-color:#fff;width:50%;margin:auto;'><br><th>Request_No.</th><th>User_Id </th><th>Name</th><th>Address</th><th>Contact_No.</th><th>Date_Of_Birth</th><th>Education</th><th>Interested_In</th><th>Experience</th><th>Status</th><th>Email_Id</th><th>Applied_For</th><th>Partners_Id</th><th>Actions</th>");
while(rs.next())
{
out.println("<tr><td>"+rs.getString(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("<td>"+rs.getString(5)+"</td>");
out.println("<td>"+rs.getString(6)+"</td>");
out.println("<td>"+rs.getString(7)+"</td>");
out.println("<td>"+rs.getString(8)+"</td>");
out.println("<td>"+rs.getString(9)+"</td>");
out.println("<td>"+rs.getString(10)+"</td>");
out.println("<td>"+rs.getString(11)+"</td>");
out.println("<td>"+rs.getString(12)+"</td>");
out.println("<td>"+rs.getString(13)+"</td>");
out.println("<td><a href='./DeleteCareer?id="+rs.getString(1)+"'>Delete</a>|<a href='./EditCareer.jsp?id="+rs.getString(1)+"'>Edit</a>|<a href='./ViewCareer.jsp?id="+rs.getString(1)+"'>View</a></td></tr>");
}
out.println("</table>");
}
else
{
out.println("Welcome"+session.getAttribute("uname"));
}
  }  
 catch(Exception ex)
    {
        out.println(ex.getMessage());
        
    }
%>
    </body>
</html>
