<%@ page import="java.util.List" %>
<%@ page import="model.Campaign" %>
<%
    List<Campaign> campaigns = (List<Campaign>) request.getAttribute("campaigns");
    String currentStatus = request.getParameter("status");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Campaigns</title>
    <style>
        .campaign-card {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            margin: 10px;
            width: 300px;
            display: inline-block;
            vertical-align: top;
            background-color: #f9f9f9;
        }
        .campaign-card img {
            max-width: 100%;
            border-radius: 8px;
        }
        .filter {
            margin: 20px;
        }
    </style>
</head>
<body>

<h2>All Campaigns</h2>

<div class="filter">
    <form action="viewAllCampaigns" method="get">
        <label>Filter by Status: </label>
        <select name="status">
            <option value="">All</option>
            <option value="active" <%= "active".equals(currentStatus) ? "selected" : "" %>>Active</option>
            <option value="inactive" <%= "inactive".equals(currentStatus) ? "selected" : "" %>>Inactive</option>
        </select>
        <button type="submit">Filter</button>
    </form>
</div>

<div class="campaign-list">
    <% if (campaigns != null && !campaigns.isEmpty()) {
        for (Campaign c : campaigns) { %>
            <div class="campaign-card">
                <img src="<%= c.getThumbnail() %>" alt="Campaign Image">
                <h3><%= c.getTitle() %></h3>
                <p><strong>Start:</strong> <%= c.getStartDate() %></p>
                <p><strong>End:</strong> <%= c.getEndDate() %></p>
                <p><strong>Target:</strong> RM <%= String.format("%.2f", c.getTargetAmount()) %></p>
            </div>
    <%  } 
    } else { %>
        <p>No campaigns found.</p>
    <% } %>
</div>

</body>
</html>