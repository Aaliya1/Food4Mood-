<%-- 
    Document   : EditCareer
    Created on : Jun 13, 2016, 8:10:20 AM
    Author     : Farheen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User Career Details</title>
           <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
       
        <%
            try{
        String str = "Select * from careers where Request_No="+request.getParameter("id");
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        { %><%@include file="MainLayout.jsp" %>  
        
        <div class="registerform"><fieldset style="background-color:#E0E0E0"><form role="form" action="./EditCareer.jsp" method="post" class="form-horizontal" ><a href="Admin.jsp">&nbsp;&nbsp;Go back..</a>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="name">Request ID</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nrid" value="<%=rs.getString(1)%>" readonly />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User ID</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuid" value="<%=rs.getString(2)%>"  />
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuname" value="<%=rs.getString(3)%>" />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="address">Address</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="address" value="<%=rs.getString(4)%>">
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="mob">Contact No.</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nmob" value="<%=rs.getString(5)%>" />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="date">Date_Of_Birth</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="ndob" value="<%=rs.getString(6)%>"  />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="edu">Education Qualification</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nedu" value="<%=rs.getString(7)%>" />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="nins">Interested in</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control" name="nins" value="<%=rs.getString(8)%>"  />
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="exp">Experience</label>
                    <div class="col-lg-9">
                        <input type="date" class="form-control" name="nexp" value="<%=rs.getString(9)%>"  />
                    </div></div>
                    <div class="form-group">
                        <label class="control-label col-lg-3" for="name">Status</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" name="nstatus" value="<%=rs.getString(10)%>" />
                        </div>
                    </div>
                        <div class="form-group">
                     <label class="control-label col-lg-3" for="email">Email-Id</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="nemail" value="<%=rs.getString(11)%>" />
                     </div></div> 
                     <div class="form-group">
                     <label class="control-label col-lg-3" for="apply">Applied-For</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="napply" value="<%=rs.getString(12)%>"/>
                     </div></div> 
                     <div class="form-group">
                     <label class="control-label col-lg-3" for="partner">Partners-Id</label>
                     <div class="col-lg-9">
                     <input type="text" class="form-control" name="npid" value="<%=rs.getString(13)%>"/>
                     </div></div> 
                  <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                         <button type="submit" name="sub" class="btn btn-default" value="Update">Update</button>
    </div>
                     </div> </form>
                </fieldset></div>
                 
        <%
        }
if(request.getParameter("sub").equals("Update"))
{
String str1 = "update careers set User_Id="+request.getParameter("nuid")+",Name='"+request.getParameter("nuname")+"',Address='"+request.getParameter("address")+"',Mobile_No="+request.getParameter("nmob")+",Date_Of_Birth='"+request.getParameter("ndob")+"',Education='"+request.getParameter("nedu")+"',Interested='"+request.getParameter("nins")+"',Experience='"+request.getParameter("nexp")+"',Status='"+request.getParameter("nstatus")+"',Email_Id='"+request.getParameter("nemail")+"',Applied_For='"+request.getParameter("napply")+"',Partner_Id="+request.getParameter("npid")+" where Request_No="+request.getParameter("nrid")+"";
int num=ConnectionManager.exQuery(str1);
if(num>0)
{
  out.println("<p style='text-align:center;color:#000;font-size:20px;'>Record Successfully Updated</p>");
     RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                rd.include(request,response);
              

}}}
catch(Exception ex)
{
out.println(ex.getMessage());
}
        %>
    
    </body>
</html>
