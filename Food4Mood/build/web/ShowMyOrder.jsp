<%-- 
    Document   : ShowMyOrder
    Created on : Jun 11, 2016, 10:32:49 AM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Order-Details</title>
    </head>
    <body>
       <div class="table-responsive">          
  <table class="table table-hover" style="background-color:rgba(255,255,255,0.5)">
    <thead>
      <tr>
        <th>Order_ID</th>
        <th>Order_Date</th>
        <th>Order_Bill</th>
        <th>Order_Time</th>
        <th>Delivery_Time</th>
        <th>Details</th>
         <th>Respective Quantity</th>
          <th>Shop Name</th>
      </tr>
    </thead>
    <tbody>
        <%
        String str = "select * from order_menu where User_Id="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        while(rs.next())
        {
        %>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
          <td><%=rs.getString(8)%></td>
          <td><%=rs.getString(9)%></td>
      </tr>
      <%
      }
      %>
    </tbody>
  </table>
  </div>
    </body>
</html>
