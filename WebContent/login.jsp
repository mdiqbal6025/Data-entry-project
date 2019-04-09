<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

	<title>2816</title>
	<style>
	*{
		font-family:fiesta;
}
		body{
	
	
	margin: 0;
	padding:0;
	text-align:center;
	
	background: linear-gradient(rgba(0,0,50,0.5),rgba(0,0,50,0.5)), url(hd-wallpaper-8.jpg);
	background-size:cover;
    background-position: center;
 
	font-family: sans-serif;
}
  .container{
  	width:320px;
  	height:420px;
  	background:#000;
  	color:#fff;
  	top:50%;
  	left:50%;
  	position:absolute;
  	transform: translate(-50%,-50%);
  	box-sizing: border-box;
  	opacity:0.8;
  }
  .avatar{
  	width:100px;
  	height:100px;
    border-radius:50%;
   	position: absolute;
  	top:-10%;
  	left:35%;
  	
  }

 .form_input{
     margin:10px;
    padding:0px;
    } 
form{
	position:relative;
	top:20%;

}
b{
	font-size:20px;
    margin:0px;
    padding:0px;
}
.abc{
	color:white;
	text-decoration: none;
	position:absolute;
	top:210px;
	left:135px;
    font-size:20px;
}


	</style>
</head>
<body>
  <div class="container">
   <img src="admin-logo-png-6.png" class="avatar">
  	<form action="verifypwd.jsp">

  		<div class="form_input">
  			<b><p>User Name</p></b>
  			<input  type="text" name="username" placeholder="Enter your user Name" required>
  			
             </div>
             <div class="form_input">
  		     <b><p>Password</p></b>
  			 <input type="password" name="password" placeholder="Enter your Password" required>
  		</div>
      
  		<input type="submit" name="submit" value="Login" class="btn-login"/><br>
         <a href="signup.jsp" class="abc">signup</a>
  	</form>
  	
  </div>
</body>
</html>