package servlet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;
import model.Donation;
import dao.DonationDAO;

@WebServlet("/GenerateReportServlet")
public class GenerateReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GenerateReportServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

		String action = request.getParameter("action");

		try {
			if (action == null || action.equals("generate")) {
				generateReport(request, response);
			} else {
				response.getWriter().println("Unknown action: " + action);
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request, response);
	}

	private void generateReport(HttpServletRequest request, HttpServletResponse response)
		throws Exception {
		List<Donation> donations = DonationDAO.getAllDonations();
		request.setAttribute("donations", donations);
		RequestDispatcher dispatcher = request.getRequestDispatcher("report.jsp");
		dispatcher.forward(request, response);
	}
}
