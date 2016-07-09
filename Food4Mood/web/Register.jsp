<%-- 
    Document   : Register
    Created on : Jun 8, 2016, 8:29:39 AM
    Author     : Farheen
--%>

<%@page import="aaliya.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.servlet.RequestDispatcher" %>
<%@include file="MainLayout.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Register-Food 4 Mood</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    </head> 
    <div class="registerform"><fieldset style="background-color:#E0E0E0"> 
                <form role="form" action="./Register.jsp" method="post" class="form-horizontal" >
                <div class="form-group">
                    <label class="control-label col-lg-3" for="name">User Name</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="uname" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="password">Password</label>
                    <div class="col-lg-9">
                        <input type="password" class="form-control" name="upass" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="cpassword">Confirm Password</label>
                    <div class="col-lg-9">
                        <input type="password" class="form-control" name="nupass" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="Address">Address</label>
                    <div class="col-lg-9">
                        <textarea class="form-control" name="address" required></textarea>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="city">City</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="city" required>
                    </div></div>
                 <div class="form-group">
                    <label class="control-label col-lg-3" for="pincode">Pin Code</label>
                    <div class="col-lg-9">
                        <input type="text" class="form-control" name="pin" required>
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
      <div class="col-lg-offset-3 col-lg-9">
        <div class="checkbox">
          <label><input type="checkbox" name="ch" value="checked">I agree to the terms and conditions of Food 4 Mood.</label>
        </div>
      </div>
    </div>
                <div class="form-group"> 
    <div class="col-lg-offset-3 col-lg-9">
        <button type="submit" name="sub" class="btn btn-default" onmouseup="alert('Successfully Registered,Now you will be redirected to the Login Page');">Submit</button>
    </div>
  </div>
                 
            </form>
        </fieldset></div>
         <footer>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Let's Get in Touch!!</h2>
					<hr>
					<h4>We will love to hear from you.It will be great to know your feedbacks.</h4>
					<br><div class="col-lg-4">
					<img src="img/call.png"  width="35px" height="35px"/><br>+91 8083930093,+91 9631055327</div><div class="col-lg-4"><img src="img/mail.png"width="35px"  height="35px"/><br>aaliyafarheennitp54@gmail.com</div><div class="col-lg-4"><img src="img/facebook.png"  width="35px" height="35px"/><br>www.facebook/food4mood.com
					</div></div><span class="sus"><h3>Subscribe for our NewsLetters</h3></span><br><input type="email" placeholder="Enter your email address here" name="email"/><br>
				<input type="submit" name="sub" value="Subscribe">
              <br><br>
				</div>
				
            </div>
        
    </footer>
<%
if(request.getParameter("sub")!=null)
{
    String pass=request.getParameter("upass");
    String npass=request.getParameter("nupass");
    if(pass.equals(npass) && request.getParameter("ch")!=null)
    {
        String str ="insert into user(User_Name,User_Password,Address,City,PinCode,Mobile,Date_Of_Birth) values('"+request.getParameter("uname")+"','"+request.getParameter("upass")+"','"+request.getParameter("address")+"','"+request.getParameter("city")+"',"+request.getParameter("pin")+","+request.getParameter("mob")+",'"+request.getParameter("dob")+"')";
        int num = ConnectionManager.exQuery(str);
        if(num>0)
        {  
        
      
        response.sendRedirect("index.html");
       
        /* RequestDispatcher rd = request.getRequestDispatcher("");
             request.setAttribute("msg",message);
             rd.include(request,response);*/
        }
    }
    else
{
%>
        <script>alert("Confirm Password donot match or Please check the term and conditions");</script>
<%  } }
%>

</body>
</html>
