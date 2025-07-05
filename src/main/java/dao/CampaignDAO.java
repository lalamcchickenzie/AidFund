package dao;

import model.Campaign;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CampaignDAO {
    private Connection conn;

    public CampaignDAO(Connection conn) {
        this.conn = conn;
    }

  public List<Campaign> getAllCampaigns(String statusFilter) throws SQLException {
        List<Campaign> campaigns = new ArrayList<>();
        String sql = "SELECT * FROM campaigns";

        if ("active".equalsIgnoreCase(statusFilter)) {
            sql += " WHERE CURRENT_DATE BETWEEN start_date AND end_date";
        } else if ("inactive".equalsIgnoreCase(statusFilter)) {
            sql += " WHERE CURRENT_DATE < start_date OR CURRENT_DATE > end_date";
        }

        sql += " ORDER BY start_date DESC"; // optional ordering

        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            Campaign c = new Campaign();
            c.setId(rs.getInt("id"));
            c.setTitle(rs.getString("title"));
            c.setHeadline(rs.getString("headline"));
            c.setDescription(rs.getString("description"));
            c.setThumbnail(rs.getString("thumbnail"));
            c.setTargetAmount(rs.getDouble("target_amount"));
            c.setStartDate(rs.getString("start_date"));
            c.setEndDate(rs.getString("end_date"));
            campaigns.add(c);
        }

        rs.close();
        stmt.close();
        return campaigns;
    }
}