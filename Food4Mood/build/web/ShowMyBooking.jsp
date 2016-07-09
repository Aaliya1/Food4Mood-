<%-- 
    Document   : ShowMyBooking
    Created on : Jun 12, 2016, 7:06:09 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Booking details</title>
    </head>
    <body>
      <div class="table-responsive">          
  <table class="table table-hover" style="background-color:rgba(255,255,255,0.7)">
    <thead>
      <tr>
        <th>Hall No.</th>
        <th>Hall Name</th>
        <th>Address</th>
        <th>Booking Date</th>
        <th>Booking No.</th>
      </tr>
    </thead>
    <tbody>
        <%
        String str = "select * from booking where User_Id="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
          while(rs.next())
        {
            String str1 ="select * from hall where Hall_No="+rs.getString(3);
            ResultSet rs1 = ConnectionManager.exeQuery(str1);
            if(rs1.next())
            {
          %>
      <tr>
        <td><%=rs.getString(3)%></td>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(1)%></td>
        
      </tr>
      <%
      }}
      %>
    </tbody>
  </table>
  </div>
    </body>
</html>

