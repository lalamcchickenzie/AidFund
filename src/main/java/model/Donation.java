package model;

public class Donation {
    private int id;
    private String name;
    private String email;
    private double amount;
    private String date;
    private String campaign;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
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

    public String getCampaign() {
        return campaign;
    }
    public void setCampaign(String campaign) {
        this.campaign = campaign;
    }
}
