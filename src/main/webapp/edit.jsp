<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head/header.jsp"%>
<title>Edit Note</title>
</head>
<body>

	<div class="container">

		<%@ include file="navbar.jsp"%>


		<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));

		//out.println(noteId);

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>


		<h1>Edit your Note</h1>

		<!-- this is add note form   -->

		<form action="UpdateServlet" method="post">
		
		  <input type="hidden" name="note_id" value="<%= note.getId() %>" />
		  
			<div class="form-group">
				<label for="title">Note title</label> <input required type="text"
					class="form-control" id="title" name="title"
					value="<%=note.getTitle()%>" aria-describedby="emailHelp"
					placeholder="Enter here....">
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea required class="form-control" name="content"
					style="height: 300px;" id="content"
					placeholder="Type your content here........"><%=note.getContent()%></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>

		</form>


		<%
		s.close();
		%>



	</div>

</body>
</html>