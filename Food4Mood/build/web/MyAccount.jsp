<%@page contentType="text/html" pageEncoding="UTF-8"%>
         
         <body id="bdyo">
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
           <%@include file="MainLayoutUser.jsp" %>
          <span id="bdy"></span>
            <span id="spn"></span>
          <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
				<h2> At Your Service</h2><hr><br>
                    <div class="col-lg-3">
                        <a href="Search.jsp" title="Search restaurants,Shops and order online"><img src="img/search.png" width="111px" height="111px"/>
					</a><br><br>
					Search nearby Restaurants,and Sweet Shops and Book your table or Order Online.
                                        </div>
					<div class="col-lg-3">
					 <a href="ShowMenu.jsp" title="View Menu of different Restaurants"><img src="img/menu.png"  width="111px" height="111px"/>
                                         </a><br><br>
					View Menus from different restaurants and make your Choice.
					</div>
					<div class="col-lg-3">
                                            <a href="CareerRequest.jsp" title="Apply for job or Internship"><img src="img/job.png" width="111px" height="111px"/></a>
					<br><br>
					Wanna work as an Intern or searching for a job in this sector.<br>We are here to help.
					</div>
					<div class="col-lg-3">
                                            <a href="BookHall1.jsp" title="Book Halls for BirthDays,Marriages and different functions"><img src="img/bday.png" width="111px" height="111px"/></a>
					<br><br>
					Book Halls for birthdays,marriages.Order for Catering and decoration
					</div>
					</div>
                    
            </div>
        </div>
                   
    </body>
</html>
