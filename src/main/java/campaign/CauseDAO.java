package campaign;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CauseDAO {
	private static Connection conn = null;

    public static List<Cause> getAllCauses() throws SQLException {
        List<Cause> campaign = new ArrayList<>();
        try {
        String sql = "SELECT c.*, IFNULL(SUM(d.amount), 0) AS totalCollected " +
                "FROM campaign c " +
                "LEFT JOIN donation d ON c.campaignID = d.campaignID " +
                "GROUP BY c.campaignID";
		conn = ConnectionManager.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            Cause c = new Cause();
            c.setCauseId(rs.getString("campaignID"));
            c.setTitle(rs.getString("title"));
            c.setDescription(rs.getString("description"));
            c.setHeadline(rs.getString("headline"));
            c.setTargetAmount(rs.getDouble("targetAmount"));
            c.setTotalCollected(rs.getDouble("totalCollected"));
            c.setStartDate(rs.getDate("startDate"));
            c.setEndDate(rs.getDate("endDate"));
            c.setStatus(rs.getString("status"));
            c.setThumbnail(rs.getString("thumbnail"));
            c.setUserId(rs.getInt("userID"));
            c.setTotalCollected(rs.getDouble("totalCollected")); 
            campaign.add(c);
        }
        stmt.close();
    	}catch (SQLException e) {
    		e.printStackTrace();
    	}
        return campaign;
    }

    public static void addCause(Cause c) throws SQLException {
    	try {
        String sql = "INSERT INTO campaign (campaignID, title, description, headline, targetAmount, startDate, endDate, status, thumbnail, userID) VALUES (?,?,?, ?, ?, ?, ?, ?, ?, ?)";
    	conn = ConnectionManager.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, c.getCauseId()); 
        stmt.setString(2, c.getTitle());
        stmt.setString(3, c.getDescription());
        stmt.setString(4, c.getHeadline());
        stmt.setDouble(5, c.getTargetAmount());
        stmt.setDate(6, c.getStartDate());
        stmt.setDate(7, c.getEndDate());
        stmt.setString(8, c.getStatus());
        stmt.setString(9, c.getThumbnail());
        stmt.setInt(10, c.getUserId());

        System.out.print(sql);
        stmt.executeUpdate();
        stmt.close();
    }
    	catch (SQLException e) {
    		e.printStackTrace();
    	}
    }

    public static void updateCause(Cause c) throws SQLException {
    	try {
        String sql = "UPDATE campaign SET title=?, description=?, headline=?, targetAmount=?, startDate=?, endDate=?, status=?, userID=? WHERE campaignID=?";
		conn = ConnectionManager.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, c.getTitle());
        stmt.setString(2, c.getDescription());
        stmt.setString(3, c.getHeadline());
        stmt.setDouble(3, c.getTargetAmount());
        stmt.setDate(4, c.getStartDate());
        stmt.setDate(5, c.getEndDate());
        stmt.setString(6, c.getStatus());
        stmt.setString(7,  c.getCauseId());
        stmt.setInt(8, c.getUserId());
        stmt.executeUpdate();
        stmt.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

    public static void deleteCause(String causeId) throws SQLException {
    	try {
        String sql = "DELETE FROM campaign WHERE campaignID=?";
		conn = ConnectionManager.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, causeId);
        stmt.executeUpdate();
        stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
    public static Cause getCauseId(String causeId) throws SQLException {
		Cause c = null;

		try {
			String sql = "SELECT * FROM campaign WHERE campaignID = ?";
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, causeId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				c = new Cause();
				c.setCauseId(rs.getString("campaignID"));
	            c.setTitle(rs.getString("title"));
	            c.setDescription(rs.getString("description"));
	            c.setHeadline(rs.getString("headline"));
	            c.setTargetAmount(rs.getDouble("targetAmount"));
	            c.setStartDate(rs.getDate("startDate"));
	            c.setEndDate(rs.getDate("endDate"));
	            c.setStatus(rs.getString("status"));
	            c.setThumbnail(rs.getString("thumbnail"));
	            c.setUserId(rs.getInt("userID"));
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}

    public void updateCauseStatus(int causeId, String status) {
        String sql = "UPDATE campaign SET status = ? WHERE campaignID = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, status);
            stmt.setInt(2, causeId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static boolean doesCauseIdExist(String causeId) {
        boolean exists = false;
        try {
            Connection con = ConnectionManager.getConnection();
            String sql = "SELECT campaignID FROM campaign WHERE campaignID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, causeId);
            ResultSet rs = ps.executeQuery();
            exists = rs.next(); // if there's a record, ID exists
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

   }
