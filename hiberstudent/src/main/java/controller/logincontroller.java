package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Crudoperation;

@WebServlet("/logincontroller")
public class logincontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public logincontroller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Crudoperation log = new Crudoperation(); 
        int userId = log.login(username, password);

        if (userId != -1) {
            // Authentication successful
            HttpSession session = request.getSession();
            session.setAttribute("userId", userId);

            response.sendRedirect("profile.jsp");
        } else {
            // Authentication failed
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
