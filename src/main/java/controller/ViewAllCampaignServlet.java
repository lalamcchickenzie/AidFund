package controller;

import dao.CampaignDAO;
import model.Campaign;
import admin.ConnectionManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/viewAllCampaigns")
public class ViewAllCampaignServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String statusFilter = request.getParameter("status"); // e.g., "active", "inactive", or null

        try {
            // 1. Connect using ConnectionManager
            Connection conn = ConnectionManager.getConnection();

            // 2. Use DAO to retrieve campaigns
            CampaignDAO campaignDAO = new CampaignDAO(conn);
            List<Campaign> campaigns = campaignDAO.getAllCampaigns(statusFilter);

            // 3. Pass data to JSP
            request.setAttribute("campaigns", campaigns);
            request.getRequestDispatcher("ViewAllCampaign.jsp").forward(request, response);

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
