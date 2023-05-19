<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>

      <%@ include file="head/header.jsp" %>

    <title>Note Taker</title>
  </head>
  <body>
    
    
   <!--  <div class="container-fluid p-0 m-0"> -->
    <div class="container">
    
      <%@ include file="navbar.jsp" %>
      
     
     <div class="card py-5 mt-2">
     
       <img src="img/notepad.png" alt="notePad" class="img-fluid mx-auto" style="max-width:400;" />
       <h1 class="text-primary text-uppercase text-center mt-3" >Start Taking Your Notes</h1>
         <div class="container text-center">
            <a href="add_notes.jsp"> <button class="btn btn-outline-primary text-center"  > Start Here</button></a>
            
         </div>
     </div>
    
    </div>
    
    
    
    
    
    
    
    
 </body>
</html>