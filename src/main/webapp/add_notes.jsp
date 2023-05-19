<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="head/header.jsp"%>
<title>Add Notes</title>
</head>
<body>

	<div class="container">

		<%@ include file="navbar.jsp"%>

		<h1 class=" text-center mt-5">Please fill your note details</h1>

		<!-- this is add note form   -->

		<form action="saveNoteServlet"  method="post">
			<div class="form-group">
				<label for="title">Note title</label> <input
				     required
					type="text" class="form-control" id="title" name="title"
					aria-describedby="emailHelp" placeholder="Enter here...."> 
			</div>
			<div class="form-group">
				<label for="content">Content</label> 
				<textarea  required class="form-control" name="content"  style="height:300px;" id="content" placeholder="Type your content here........"></textarea>
			</div>
			
			<div class="container text-center">
			  <button type="submit" class="btn btn-primary">Add Note</button>
			</div>
			
		</form>

	</div>

</body>
</html>