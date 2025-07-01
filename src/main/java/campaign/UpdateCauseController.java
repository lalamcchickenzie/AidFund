package campaign;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * To update Status of Cause
 */
@WebServlet("/UpdateCauseController")
public class UpdateCauseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int causeId = Integer.parseInt(request.getParameter("causeId"));
	        String status = request.getParameter("status");
	        try (Connection connection = ConnectionManager.getConnection()) {
	            CauseDAO causeDAO = new CauseDAO();
	            causeDAO.updateCauseStatus(causeId, status);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        response.sendRedirect("dashboard.jsp"); // Redirect back to the dashboard
	    }

	}


