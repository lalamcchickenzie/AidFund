package dao;

import java.sql.*;
import java.util.ArrayList;
import model.Donation;

public class DonationDAO {
    public static ArrayList<Donation> getAllDonations() throws Exception {
        ArrayList<Donation> list = new ArrayList<>();

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/aidfund", "root", "");

        String sql = "SELECT * FROM donation";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            Donation d = new Donation();
            d.setId(rs.getInt("id"));
            d.setName(rs.getString("donor_name"));
            d.setEmail(rs.getString("email"));
            d.setAmount(rs.getDouble("amount"));
            d.setDate(rs.getString("date"));
            d.setCampaign(rs.getString("campaign_name"));
            list.add(d);
        }

        conn.close();
        return list;
    }
}