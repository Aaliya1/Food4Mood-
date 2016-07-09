<%-- 
    Document   : Edituser1
    Created on : Jun 10, 2016, 11:24:32 AM
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
    </head>
    <body>
        <%
            try{
        String str = "Select * from user where ID="+session.getAttribute("Id")+"";
        ResultSet rs = ConnectionManager.exeQuery(str);
        if(rs.next())
        {
        %>
        <div class="registerform"><fieldset style="background-color:#E0E0E0"><form action="./Edituser1.jsp" role="form" method="post" class="form-horizontal" >
                <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nuname" value="<%=rs.getString(2)%>" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="password">Password</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="nupass" value="<%=rs.getString(3)%>" required>
                    </div></div>
                    <div class="form-group">
                    <label class="control-label col-lg-3" for="Address">Address</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="naddress" value="<%=rs.getString(4)%>" required/>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="city">City</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="ncity" value="<%=rs.getString(5)%>" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="pincode">Pin Code</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="npin" value="<%=rs.getString(6)%>" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="mob">Mobile No.</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control" name="nmob" value="<%=rs.getString(7)%>" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="dob">Date Of Birth</label>
                    <div class="col-lg-9">
                        <input type="date" class="form-control" name="ndob" value="<%=rs.getString(8)%>"  required>
                    </div></div>
                        <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                         <button type="submit" name="sub" class="btn btn-default" value="Update1">Update</button>
    </div>
                     </div>
                 </form></fieldset></div>
                 
        <%
        }
if(request.getParameter("sub").equals("Update1"))
{
String str1 = "update user set User_Name='"+request.getParameter("nuname")+"',User_Password='"+request.getParameter("nupass")+"',Address='"+request.getParameter("naddress")+"',City='"+request.getParameter("ncity")+"',PinCode="+request.getParameter("npin")+",Mobile="+request.getParameter("nmob")+",Date_Of_Birth='"+request.getParameter("ndob")+"' where ID="+session.getAttribute("Id")+"";
int num=ConnectionManager.exQuery(str1);
if(num>0)
{
  out.println("<p style='text-align:center;color:#000;font-size:20px;'>Record Successfully Updated</p>");
  response.sendRedirect("./MyAccount.jsp");
    /* RequestDispatcher rd = request.getRequestDispatcher("MyAccount.jsp");
                rd.include(request,response);*/
              

}}}
catch(Exception ex)
{
out.println(ex.getMessage());
}
        %>
    
    </body>
</html>

    </body>
</html>
