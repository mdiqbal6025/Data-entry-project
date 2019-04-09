<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Welcome Boys Enter your Data</title>
	<style>
		body{
			margin:0;
			padding:0;
			text-align:center;
			background: url(space-minimalism-hd-4k.jpg);
			background-size:cover;
			background-position: center;
			font-family: sans-serif;
		}
     .contact-title{
     	margin-top:100px;
     	color:#fff;
     	text-transform: uppercase;
     	transition: all 4s ease-in-out;
     }
     .contact-title h1{
     	font-size: 32px;
     	line-height: 10px;
     }
     form{
     	margin-top:50px;
     	transition: all 4s ease-in-out;

     }
     .form-control{
     	width:600px;
     	background:transparent;
     	border:none;
     	outline:none;
     	border-bottom: 1px solid gray;
     	color:#fff;
     	font-size: 18px;
     	margin-bottom: 16px;
     }
     input{
     	height:45px;
     }
     form .submit{
     	background:#ff5722;
     	border-color:transparent;
     	color:#fff;
     	font-size: 20px;
     	font-weight: bold;
     	letter-spacing: 2px;
     	height:50px;
     	margin-top:20px;
     }
      .logout{
     	position:absolute;
     	top:5%;
     	right:10%;
     }
     .lo{
     		background:green;
     	border-color:transparent;
     	color:#fff;
     	font-size: 20px;
     	font-weight: bold;
     	letter-spacing: 2px;
     	height:50px;
     	margin-top:20px;
     }
	</style>
</head>
<body>
 <% if(session.getAttribute("username")==null){
	 response.sendRedirect("login.jsp");
   }
	 %>
 
	<div class="contact-title">
		<h1>Welcome You All Enter Your Data Here</h1>
	</div>
	<div class="contact-form">
  <form id="contact-form"  method="post" action="send.jsp">
    <input name="Date" type="date" class="form-control" placeholder="Date" required><br>  	
  	<input name="name" type="text" class="form-control" placeholder="Your Name" required>
  	<br>
  	<input name="amount" type="text" class="form-control" placeholder="Total_Amount" required>
  	<br>
  	<textarea name="message" class="form-control" placeholder="Items_Name" rows="5"></textarea><br>
  	<input type="submit" id="alert" class="form_control submit" value="SEND MESSAGE">
  
  </form>
  
 
  
 <form action="Logout" class="logout">
   <input type="submit" class="lo" value="Logout">
 </form>
 </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
       <script>
       
         $('#alert').click(function(){
       
            swal({title:"Successful Inserted",
               text:"your Data",
               icon:'success',
         });
         });</script>
</body>
</html>