package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import dao.CampaignDAO;
import model.Campaign;
import util.DBConnection;

@WebServlet("/viewActiveCampaign")
public class ViewActiveCampaignServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DBConnection.getConnection()) {
            CampaignDAO dao = new CampaignDAO(conn);
            List<Campaign> activeCampaigns = dao.getAllCampaigns("active");

            request.setAttribute("activeCampaigns", activeCampaigns);
            RequestDispatcher rd = request.getRequestDispatcher("ViewActiveCampaign.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}