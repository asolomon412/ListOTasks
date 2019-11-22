<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Task List App</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" crossorigin="anonymous">
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>Welcome to my Task List App!</h1>
		</div>
		
				<h2 style="color:red">${message }</h2>
			<div class="row">
		<div class="col-lg-3">
			<h1>Login</h1>
		</div>
		</div>
		<div class="row"> 
		<div class="col-lg-3">
			<form class="mb-2 mr-2" action="login-request">
			
				<div class="form-group mx-sm-3 mb-2 ">
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="help">Email: </label>
						<input id="help" class="form-control mx-sm-3 mb-2"  type="email" name="email" required>
					</div>
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="pass">Password: </label>
						<input id="pass" class="form-control mx-sm-3 mb-2"  type="password" name="password" required>
					</div>
			
					<input class="form-control btn btn-primary mx-sm-3 mb-2" type="submit" value="Login"></div>
	
			</form>
		</div>
		</div>
				
	<div class="row">
		<div class="col-lg-3">
			<h1>Register</h1>
		</div>
		</div>
		<div class="row"> 
		<div class="col-lg-3">
			<form class="mb-2 mr-2" action="login-confirmed">
			
				<div class="form-group mx-sm-3 mb-2 ">
					<div class="form-group">
					
						<label class="mx-sm-3 mb-2" for="fname"> First Name: </label>
						<input id="fname" class="form-control mx-sm-3 mb-2" type="text" name="firstname" required> 
					</div>
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="lname">Last Name: </label>
						<input id="lname" class="form-control mx-sm-3 mb-2"  type="text" name="lastname" required>
					</div>
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="uname">Email: </label>
						<input id="uname" class="form-control mx-sm-3 mb-2"  type="email" name="email" required>
					</div>
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="pass">Password: </label>
						<input id="pass" class="form-control mx-sm-3 mb-2"  type="password" name="password" required>
					</div>
			
					<input class=" form-control btn btn-primary mx-sm-3 mb-2" type="submit" value="Register"></div>
	
			</form>
		</div>
		</div>

	</div>
</body>
</html>