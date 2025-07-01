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

@WebServlet("/viewActiveCampaign")
public class ViewActiveCampaignServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Connection conn = ConnectionManager.getConnection();

            CampaignDAO dao = new CampaignDAO(conn);
            List<Campaign> activeCampaigns = dao.getAllCampaigns("active");

            request.setAttribute("activeCampaigns", activeCampaigns);
            request.getRequestDispatcher("ViewActiveCampaign.jsp").forward(request, response);

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
