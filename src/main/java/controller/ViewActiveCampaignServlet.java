package controller;

import java.io.IOException;

import campaign.Cause;
import campaign.CauseDAO;
//import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewActiveCampaign")
public class ViewActiveCampaignServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String causeId = request.getParameter("causeId");

        if (causeId != null && !causeId.trim().isEmpty()) {
            Cause cause = CauseDAO.getActiveCauseById(causeId); 
            if (cause != null) {
                request.setAttribute("cause", cause);
                request.getRequestDispatcher("campaignDetail.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Active campaign not found.");
            }
        } else {
            var causes = CauseDAO.getActiveCauses();
            request.setAttribute("causes", causes);
            request.setAttribute("causeList", causes);
            request.getRequestDispatcher("causePage.jsp").forward(request, response);
        }
    }
}