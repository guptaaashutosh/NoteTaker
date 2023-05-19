<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head/header.jsp"%>
<title>All Notes</title>
</head>
<body>


	<div class="container">

		<%@ include file="navbar.jsp"%>

		<h1 class=" text-center mt-5" >All Notes</h1>


		<div class="row">
			<div class="col-12">


				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note"); // is is hibernate query language(HQL) to fetch data from db
				List<Note> list = q.list();

				for (Note note : list) {
				%>


				<div class="card mt-4">
				
				
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px;"
						src="img/notepad.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
                           <p class='dateColor'><%= note.getAddedDate() %></p>
						<div class="container text-center mt-2">
							<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a> 
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						</div>

					</div>
				</div>


				<%
				}
				%>



			</div>
		</div>














	</div>


</body>
</html>