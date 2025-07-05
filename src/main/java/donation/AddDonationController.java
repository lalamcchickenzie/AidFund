package donation;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import campaign.Cause;
import campaign.CauseDAO;
import donor.Donor;
import donor.DonorDAO;

/**
 * Servlet implementation class AddDonationController
 */
@WebServlet("/addDonation")
public class AddDonationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddDonationController() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		String causeId = request.getParameter("causeId");
        String Dname = request.getParameter("Dname");
        String Demail = request.getParameter("Demail");
        String Dphone = request.getParameter("Dphone");
        //double amount = Double.parseDouble(request.getParameter("amount"));
        String amountStr = request.getParameter("amount");
        double amount;
        if (amountStr == null || amountStr.trim().isEmpty()) {
            throw new IllegalArgumentException("Donation amount is missing.");
        }
        try {
            amount = Double.parseDouble(amountStr.trim());
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid donation amount format.");
        }
        
        	Donor donor = new Donor();
            donor.setDname(Dname);
            donor.setDemail(Demail);
            donor.setDphone(Dphone);

            int donorID = DonorDAO.addDonor(donor);

            String donationID = "REF-" + UUID.randomUUID().toString().substring(0, 10).toUpperCase();

            Donation donation = new Donation();
            donation.setDonationID(donationID);
            donation.setAmount(amount);
            donation.setCauseId(causeId);
            donation.setDonorID(donorID);
            donation.setDonationDate(new java.sql.Date(System.currentTimeMillis()));

            
            DonationDAO.addDonation(donation);
            
            request.setAttribute("showThankYou", "true");
            request.setAttribute("refId", donationID);
            request.setAttribute("success", "Thank you for your donation!");
           

         // Reload causes for the dropdown and cards
            List<Cause> causes = CauseDAO.getActiveCausesDonor();
            request.setAttribute("causes", causes);
            request.setAttribute("causeList", causes);
            
            request.getRequestDispatcher("causePage.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to add donor", e);

        }
	}

}
