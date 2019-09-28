<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script
src="https://code.jquery.com/jquery-3.4.1.js"
integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
crossorigin="anonymous"></script>


<script
src="https://code.jquery.com/jquery-3.4.1.min.js"
integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
crossorigin="anonymous"></script>

<script type="text/javascript">
$(document).ready(function(){
	 $('#register').click(function(event){
		 
		 var name = $('#name').val();
		 var email = $('#email').val();
		 var password = $('#password').val();
		 var address = $('#address').val();
		 
		 $.ajax({
		     
			 type: 'POST',
			 url: 'RegisterServlet',
			 data: {name:name , email:email , password:password , address:address},
			 
			 success : function(result)
			 {
			 	$('#result1').html(result)
			 }
			 
		 })
		 
	 })
})

</script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<span id = "result1"></span>

<form action="RegisterServlet" method="post">
Name:  <input type="text" name="name" id = "name"/><br><br>
Email_id:  <input type="text" name="email" id = "email"/><br><br>
Password: <input type="password" name="password" id = "password"/><br><br>
Address:  <input type="textarea" name="address" id = "address"/><br><br>
<input type="button" value="register" id = "register">
</form>
</body>
</html>