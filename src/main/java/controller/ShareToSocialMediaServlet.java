package controller;

import admin.ConnectionManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/shareToSocialMedia")
public class ShareToSocialMediaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Retrieve form input
        String donorID = request.getParameter("donorID");
        String donorName = request.getParameter("donorName");
        String donorEmail = request.getParameter("donorEmail");
        String donorPhone = request.getParameter("donorPhone");
        String campaignID = request.getParameter("campaignID");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String status = request.getParameter("status");

        try {
            // 2. Connect to database
            Connection conn = ConnectionManager.getConnection();

            // 3. SQL Insert
            String sql = "INSERT INTO shared_campaigns (donorID, donorName, donorEmail, donorPhone, campaignID, title, description, startDate, endDate, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, donorID);
            stmt.setString(2, donorName);
            stmt.setString(3, donorEmail);
            stmt.setString(4, donorPhone);
            stmt.setString(5, campaignID);
            stmt.setString(6, title);
            stmt.setString(7, description);
            stmt.setString(8, startDate);
            stmt.setString(9, endDate);
            stmt.setString(10, status);

            stmt.executeUpdate();

            // 4. Display confirmation
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h2>Campaign Shared Successfully!</h2>");
            out.println("<a href='index.jsp'>Return to Home</a>");

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
