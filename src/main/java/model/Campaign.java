package model;

public class Campaign {
    private int id;
    private String title;
    private String headline;
    private String description;
    private String thumbnail;
    private double targetAmount;
    private String startDate;
    private String endDate;

    // Constructors
    public Campaign() {}

    public Campaign(int id, String title, String headline, String description, String thumbnail,
                    double targetAmount, String startDate, String endDate, double donationAmount) {
        this.id = id;
        this.title = title;
        this.headline = headline;
        this.description = description;
        this.thumbnail = thumbnail;
        this.targetAmount = targetAmount;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getters
    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getHeadline() { return headline; }
    public String getDescription() { return description; }
    public String getThumbnail() { return thumbnail; }
    public double getTargetAmount() { return targetAmount; }
    public String getStartDate() { return startDate; }
    public String getEndDate() { return endDate; }
   


    // Setters
    public void setId(int id) { this.id = id; }
    public void setTitle(String title) { this.title = title; }
    public void setHeadline(String headline) { this.headline = headline; }
    public void setDescription(String description) { this.description = description; }
    public void setThumbnail(String thumbnail) { this.thumbnail = thumbnail; }
    public void setTargetAmount(double targetAmount) { this.targetAmount = targetAmount; }
    public void setStartDate(String startDate) { this.startDate = startDate; }
    public void setEndDate(String endDate) { this.endDate = endDate; }
    }