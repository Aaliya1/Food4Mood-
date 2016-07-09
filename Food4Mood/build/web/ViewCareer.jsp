<%-- 
    Document   : ViewCareer
    Created on : Jun 13, 2016, 7:51:53 AM
    Author     : Farheen
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View UserCareerDetails</title>
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
        <%@include file="MainLayout.jsp" %>
       
        <%
          
        String str = "Select * from careers where Request_No="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        %>
         <div class="registerform"><fieldset style="background-color:#E0E0E0"><a href="Admin.jsp">&nbsp;&nbsp;Go back..</a>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="name">Request ID</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nrid" value="<%=rs.getString(1)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User ID</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuid" value="<%=rs.getString(2)%>" readonly />
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuname" value="<%=rs.getString(3)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="address">Address</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nupass" value="<%=rs.getString(4)%>" readonly>
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="mob">Contact No.</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nmob" value="<%=rs.getString(5)%>" readonly/>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="date">Date_Of_Birth</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="ncity" value="<%=rs.getString(6)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="edu">Education Qualification</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nedu" value="<%=rs.getString(7)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="nins">Interested in</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control" name="nins" value="<%=rs.getString(8)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="exp">Experience</label>
                    <div class="col-lg-9">
                        <input type="date" class="form-control" name="nexp" value="<%=rs.getString(9)%>"  readonly />
                    </div></div>
                 <div class="form-group">
                     <label class="control-label col-lg-3" for="status">Status</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="nstatus" value="<%=rs.getString(10)%>" readonly/>
                     </div></div>
                    <div class="form-group">
                     <label class="control-label col-lg-3" for="email">Email-Id</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="nemail" value="<%=rs.getString(11)%>" readonly/>
                     </div></div> 
                     <div class="form-group">
                     <label class="control-label col-lg-3" for="apply">Applied-For</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="napply" value="<%=rs.getString(12)%>" readonly/>
                     </div></div> 
                     <div class="form-group">
                     <label class="control-label col-lg-3" for="partner">Partners-Id</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="npartners" value="<%=rs.getString(13)%>" readonly/>
                     </div></div> 
                </fieldset></div>
        <%
        }%>         
</html>
