package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DBConnection;

@WebServlet("/shareToSocialMedia")
public class ShareToSocialMediaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Retrieve input
        String donorID = request.getParameter("donorID");
        String dname = request.getParameter("dname");
        String demail = request.getParameter("demail");
        String dphone = request.getParameter("dphone");
        String campaignID = request.getParameter("campaignID");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String status = request.getParameter("status");

        // 2. Connect to DB
        try (Connection conn = DBConnection.getConnection()) {

            // 3. SQL Insert
            String sql = "INSERT INTO shared_campaigns (donorID, dname, demail, dphone, campaignID, title, description, startDate, endDate, status) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, donorID);
            stmt.setString(2, dname);
            stmt.setString(3, demail);
            stmt.setString(4, dphone);
            stmt.setString(5, campaignID);
            stmt.setString(6, title);
            stmt.setString(7, description);
            stmt.setString(8, startDate);
            stmt.setString(9, endDate);
            stmt.setString(10, status);

            stmt.executeUpdate();
            stmt.close();

            // 4. Display success message (or redirect to a confirmation page)
            response.getWriter().println("Campaign shared successfully to social media.");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
