<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hibernate Demo</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="styles.css">

</head>
<body>
	<div class="container">
		<div class="jumbotron">
			
			<h1>Your Tasks</h1>
		
			<a class="btn btn-primary" href="logout">Logout</a>
		</div>
		
		<div class="row">
		<div class="col-lg-6">
			<h1>Add Task</h1>
		</div>

		<div class="col-lg-6">
			<form class="mb-2 mr-2" action="add-task">
			
				<div class="form-group mx-sm-3 mb-2 ">
					<div class="form-group">
					
						<label class="mx-sm-3 mb-2" for="name">Description: </label>
						<input id="name" class="form-control mx-sm-3 mb-2" type="text" name="description"> 
					</div>
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="date1">Due Date: </label>
						<input id="date1" class="form-control mx-sm-3 mb-2"  type="date" name="date">
					</div>

			
					<input class=" form-control btn btn-primary mx-sm-3 mb-2" type="submit" value="Add"></div>
	
			</form>
		</div>
		</div>
		<div class="row">
			<h1>Tasks</h1>
			<table class="table">
				<thead>
					<tr>
						<td>Description</td>
						<td>Due Date</td>
						<td>Mark Complete</td>

					</tr>
				</thead>
	
				<c:forEach var="t" items="${tasklist}">
	
					<tr>
						<td>${t.description }</td>
						<td>${t.dueDate }</td>

				 		<td><a class="btn btn-primary" href="/completed?taskid=${t.taskId}">Complete</a></td> 
					</tr>
	
				</c:forEach>
	
	
			</table>
			</div>
			

	</div>

</body>
</html>