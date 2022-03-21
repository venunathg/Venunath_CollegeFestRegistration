<page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
< taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" 
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" />
<title>College Fest Registration</title>
</head>
<body>
<nav>
	<div class="logo"><a href="/students/student/list">College Fest Registration</a></div>
	<input type="checkbox" id="click">
<!-- 	<label for="click" class="menu-btn"> -->
<!-- 		<i class="fa-solid fa-bars"></i> -->
<!-- 	</label> -->
<!-- 	<ul> -->
<!-- 		<li><a href="/students/student/list"><i class="fa-solid fa-house"></i> Home</a></li> -->
<!-- 	</ul> -->
</nav>
	
<div class="container">
	<h2 class="heading">${Heading}</h2>
	
	<div class="inner-conatiner">
		<div class="form-container">	
			<form action="/students/student/save" method="post">
				<input type="hidden" name="id" value="${student.id}" />
				
				<div class="form-group">			
					<input type="text" name="first_name" id="first_name" class="form-field" value="${student.first_name}" placeholder="First Name" required="required">
					<label for="first_name" class="form-label">First Name</label>
				</div>
			
				<div class="form-group">
					<input type="text" name="last_name" id="last_name" class="form-field" value="${student.last_name}" placeholder="Last Name" required="required">
					<label for="last_name" class="form-label">Last Name</label>
				</div>
				
			
				<div class="form-group">
					<input type="email" name="email" id="email" class="form-field" value="${student.email}" placeholder="Email" required="required">
					<label for="email" class="form-label">Email</label>
				</div>
				
				
				<button type="submit" class="submit-button"><i class="fa-solid fa-paper-plane"></i> Submit</button>
			</form>
		</div>
	</div>

	<div class="back-button">
		<a href="/students/student/list"><i class="fa-solid fa-angle-left"></i> Back to Students List</a>
	</div>
</div>	

</body>
</html>