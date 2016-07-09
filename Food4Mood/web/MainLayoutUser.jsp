<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>My-Account-Food 4 Mood</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Fonts -->
   <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css"> -->
   <!-- <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css"> -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
</head>

<body>
    <div class="row">
	<div class="col-lg-12">
	<div class="brand">Food 4 Mood</div>
    <div class="address-bar">"We Love to Serve Variety."</div></div>
	</div>
    <!-- Navigation -->
    <div style="text-align: center;color:#ac2925;font-weight:bold">Welcome <%=session.getAttribute("uname")%></div>
                      
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header">
		 
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
					    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
          <a class="navbar-brand" href="index.html">Food 4 Mood</a><br><hr style="width:100%"><div class="address1" >"We Love to Serve Variety"</div>
		 
			</div>
            </div> 
            <!-- Collect the nav links, forms, and other content for toggling --> 
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
                 <ul class="nav navbar-nav">
              <li>
                <button type="submit" name="sub1" value="Myaccount" ><a href="./MyAccount.jsp"style="color:#fff;text-decoration:none">My HomePage</a></button>
                    </li>
                     <li>
                        <button type="submit" name="sub1" value="MyProfile" onclick="profile()">My Profile</button>
                     </li>
                    <li>
                        <button type="submit" name="sub1" value="Editprofile" onclick="Editprofile()">Edit Profile</button>
                    </li>
                    <li>
                        <button type="submit" name="sub1" value="OrderDetails" onclick="OrderDetails()">Order Details</button>
                    </li>
                     <li>
                        <button type="submit" name="sub1" value="BookingDetails" onclick="BookingDetails()">Booking Details</button>
                    </li>
		     <li>
                         <button type="submit" name="sub1" value="logout" ><a href="./Logout"style="color:#fff;text-decoration:none">Log Out</a></button>
                    </li>		
                </ul>
		 	    
				<!--   </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    </html>
