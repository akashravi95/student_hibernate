package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Students;
import service.Crudoperation;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int status = 0;
        String studentId = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String username = request.getParameter("username");
        String email = request.getParameter("email");

        Students student = new Students();
        student.setId(Integer.parseInt(studentId));
        student.setName(name);
        student.setAge(age);
        student.setUsername(username);
        student.setMail_id(email);

        status = Crudoperation.editUser(student);

        if (status > 0) {
            response.getWriter().println("Student updated successfully.");
        } else {
            response.getWriter().println("Failed to update student.");
        }
    }
}