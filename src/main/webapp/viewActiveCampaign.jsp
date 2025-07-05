<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="model.Campaign" %>
<%
    List<Campaign> campaigns = (List<Campaign>) request.getAttribute("activeCampaigns");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Active Campaigns</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .campaign-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px; 
        }
        .campaign-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 16px;
            width: 300px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            background-color: #fff;
        }
        .campaign-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <h2>Active Campaigns</h2>
    <div class="campaign-container">
        <% if (campaigns != null && !campaigns.isEmpty()) {
            for (Campaign c : campaigns) { %>
                <div class="campaign-card">
                    <img src="<%= c.getThumbnail() %>" alt="Campaign Image">
                    <h3><%= c.getTitle() %></h3>
                    <p><b>Headline:</b> <%= c.getHeadline() %></p>
                    <p><b>Description:</b> <%= c.getDescription() %></p>
                    <p><b>Target:</b> RM <%= String.format("%.2f", c.getTargetAmount()) %></p>
                    <p><b>Dates:</b> <%= c.getStartDate() %> to <%= c.getEndDate() %></p>
                </div>
        <%  }
        } else { %>
            <p>No Active Campaigns</p>
        <% } %>
    </div>
</body>
</html>