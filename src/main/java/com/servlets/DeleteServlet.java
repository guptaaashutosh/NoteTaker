package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class DeleteServlet extends HttpServlet {
	
	
	public DeleteServlet() {
		super();
	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int noteId=Integer.parseInt(request.getParameter("note_id"));
			System.out.println(noteId);
			
			Session s=FactoryProvider.getFactory().openSession();
			
			Transaction tx =s.beginTransaction();
			
			Note note=(Note)s.get(Note.class, noteId);
			
			s.delete(note);
			
			
			tx.commit();
			s.close();
			
			response.sendRedirect("show_notes.jsp");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
