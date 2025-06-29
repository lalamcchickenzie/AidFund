package dao;

import java.sql.*;
import java.util.ArrayList;
import model.Donation;

public class DonationDAO {
    private static Connection connection = null;

    // Get all donation records
    public static ArrayList<Donation> getAllDonations() throws SQLException {
        ArrayList<Donation> donations = new ArrayList<>();

        try {
            String query = "SELECT * FROM donation";
            connection = ConnectionManager.getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Donation d = new Donation();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("donor_name"));
                d.setEmail(rs.getString("email"));
                d.setAmount(rs.getDouble("amount"));
                d.setDate(rs.getString("date"));
                d.setCampaign(rs.getString("campaign_name"));
                donations.add(d);
            }

            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return donations;
    }
}
