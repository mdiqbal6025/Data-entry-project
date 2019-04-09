<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <style>
    	body{
    		margin:0;
    		padding:0;
    		text-align:center;
    		background:linear-gradient(rgb(0,0,50,0.5),rgb(0,0,50,0.5)),url("amazing-animal-beautiful-beautifull.jpg");
    		background-size:cover;
    		background-position:center;
    		font-family:sans-serif;
    	}
    	.form-title{
    			margin-top:100px;
     	color:#fff;
     	text-transform: uppercase;
     	transition: all 4s ease-in-out;
    	}
    	.form-title h1{
    		font-size: 32px;
    		line-height: 10px;
    	}
    	form{
    			margin-top:50px;
     	transition: all 4s ease-in-out;
    	}
    	#sign_form{

    		
    	}
    	.abc{
    			width:500px;
     	background:transparent;
     	border:none;
     	outline:none;
     	border-bottom: 1px solid gray;
     	color:#fff;
     	font-size: 18px;
     	margin-bottom: 16px;
    	}
    	.bu{
    		background-color:tomato;
    		border:none;
    		width:150px;
    		height:25px;
    		border-radius:10px;
    	}
    	.bu:hover{
            background-color:blue; 
            box-shadow: 2px 3px 2px  white;  
            border-radius:10px; 
            cursor:pointer;
    	}
    </style>
	<title>signup in 2816</title>
</head>
<body>
	<div class="form-title">
	<h1>Signup</h1>
     <form id="sign_form" action="reg.jsp" >
     	<input type="text" class="abc" placeholder="User Name" name="username">
     	<br>
     	<input type="password" class="abc" placeholder="Password" name="password">
     	<br>
     	<input type="submit" class="bu" placeholder="Submit">
     </form></div>
</body>
</html>