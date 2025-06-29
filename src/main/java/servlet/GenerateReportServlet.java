package servlet;

import java.io.IOException;
import java.util.ArrayList;
import dao.DonationDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Donation;

@WebServlet("/GenerateReportServlet")
public class GenerateReportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        try {
            ArrayList<Donation> donations = DonationDAO.getAllDonations();
            request.setAttribute("donations", donations);
            request.getRequestDispatcher("report.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("report.jsp").forward(request, response);
        }
    }
}
