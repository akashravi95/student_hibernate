package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Students;

import service.Crudoperation;


@WebServlet("/registerController")
public class registerController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public registerController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        Students student = new Students();
        student.setName(name);
        student.setAge(age);
        student.setUsername(username);
        student.setPassword(password);
        student.setMail_id(email);

        int status = Crudoperation.save(student);
        System.out.println(status);
        
        if (status > 0) {
            out.print("<script>alert('Record saved successfully!');</script>");
            request.getRequestDispatcher("registration.jsp").include(request, response);
        } else {
            out.print("<script>alert('Sorry! Unable to save record.');</script>");
        }

        out.close();
    }
}
