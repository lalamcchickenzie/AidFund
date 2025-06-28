<%@ page import="java.util.*, model.Donation" %>
<!DOCTYPE html>
<html>
<head>
    <title>Donation Report</title>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
        h2 { text-align: center; }
    </style>
</head>
<body>
    <h2>Donation Report</h2>

    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color:red;"><%= error %></p>
    <%
        }
        List<Donation> list = (List<Donation>) request.getAttribute("donations");
        if (list != null && !list.isEmpty()) {
    %>
    <table>
        <tr>
            <th>No.</th>
            <th>Donor Name</th>
            <th>Email</th>
            <th>Amount (RM)</th>
            <th>Date</th>
            <th>Campaign Name</th>
        </tr>
        <%
            int count = 1;
            for (Donation d : list) {
        %>
        <tr>
            <td><%= count++ %></td>
            <td><%= d.getName() %></td>
            <td><%= d.getEmail() %></td>
            <td>RM <%= String.format("%.2f", d.getAmount()) %></td>
            <td><%= d.getDate() %></td>
            <td><%= d.getCampaign() %></td>
        </tr>
        <% } %>
    </table>
    <% } else { %>
        <p>No donation records found.</p>
    <% } %>
</body>
</html>