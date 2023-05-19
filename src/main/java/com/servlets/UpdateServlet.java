package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {

	public UpdateServlet() {
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			int id = Integer.parseInt(request.getParameter("note_id").trim());
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			System.out.println(id + " : " + title);

			Session s = FactoryProvider.getFactory().openSession();

			Transaction tx = s.beginTransaction();
			
			Note note=(Note)s.get(Note.class,id);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			
			tx.commit();
			
			s.close();
			
			
			response.sendRedirect("show_notes.jsp");

		

		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();
		}

	}

}
