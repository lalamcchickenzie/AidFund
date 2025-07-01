package donation;

import java.io.Serializable;

public class Donation implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String donationID;
	private String refId;
    private double amount;
    private String date;
    private String paymentMethod;

    // Default constructor
    public Donation() {
    }

    // Getters and Setters
    public String getRefId() {
        return refId;
    }

    public void setRefId(String refId) {
        this.refId = refId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getDonationID() {
		return donationID;
	}

	public void setDonationID(String donationID) {
		this.donationID = donationID;
	}
}
