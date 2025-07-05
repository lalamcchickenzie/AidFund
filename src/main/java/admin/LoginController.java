package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Create user object
            Admin admin = new Admin();
            // Retrieve and set email and password
            admin.setEmail(request.getParameter("email"));
            admin.setPassword(request.getParameter("password"));

            // Call login() in AdminDAO
            admin = AdminDAO.login(admin);

            // Check if the login was successful
            if (admin != null && admin.isLoggedIn()) {
                // Set user session if user is valid
                HttpSession session = request.getSession(true);
                session.setAttribute("userID", admin.getUserID());
                session.setAttribute("email", admin.getEmail());
                response.sendRedirect("dashboard.jsp"); 
            } else {
                // Forward to login page with error message
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                request.getRequestDispatcher("admin-login.html").forward(request, response); // Adjusted path
            }
        } catch (Throwable ex) {
            ex.printStackTrace();
     
        }
    }
}
