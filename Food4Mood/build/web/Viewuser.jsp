<%-- 
    Document   : Viewuser
    Created on : Jun 8, 2016, 9:23:40 PM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View UserDetails</title>
           <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
     <!--    <div class="row">
	<div class="col-lg-12">
	<div class="brand">Food 4 Mood</div>
        <div class="address-bar">"We Love to Serve Variety."</div></div>
     
    </div>
     
        
        <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
		<!--	  <div class="navbar-header">
		 
                
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
        <!--  <a class="navbar-brand" href="index.html">Food 4 Mood</a><br><hr style="width:100%"><div class="address1" >"We Love to Serve Variety"</div>
			</div>
            </div> 
        </nav> -->
        <%
          
        String str = "Select * from user where ID="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        %>
         <div class="registerform"><fieldset style="background-color:#E0E0E0"><form role="form" method="post" class="form-horizontal" >
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User ID</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuid" value="<%=rs.getString(1)%>" readonly />
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuname" value="<%=rs.getString(2)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="password">Password</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nupass" value="<%=rs.getString(3)%>" readonly>
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="Address">Address</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="naddress" value="<%=rs.getString(4)%>" readonly/>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="city">City</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="ncity" value="<%=rs.getString(5)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="pincode">Pin Code</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="npin" value="<%=rs.getString(6)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="mob">Mobile No.</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control" name="nmob" value="<%=rs.getString(7)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="dob">Date Of Birth</label>
                    <div class="col-lg-9">
                        <input type="date" class="form-control" name="ndob" value="<%=rs.getString(8)%>"  readonly />
                    </div></div>
                 <div class="form-group">
                     <label class="control-label col-lg-3" for="points">Points</label>
                     <div class="col-lg-9">
                     <input type="number" class="form-control" name="npoints" value="<%=rs.getString(9)%>" readonly/>
                     </div></div>
                   
                </fieldset></div>
        <%
        }%>         
</html>
