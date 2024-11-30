package net.yassine.learningforms;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // garantit la compatibilité entre différentes versions d'une classe sérialisable.

    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // We can able to get the form data by means of the below ways.
        // Form arguments should be matched and then only they are recognised
        String userName = request.getParameter("userName");
        String yourEmailID = request.getParameter("yourEmailID");
        String yourPassword = request.getParameter("yourPassword");
        String gender = request.getParameter("gender");
        String favoriteLanguage = request.getParameter("favoriteLanguage");
        System.out.println("gender.." + gender);
        System.out.println("favoriteLanguage.." + favoriteLanguage);

        // Here the business validations goes. As a sample,
        // we can check against a hardcoded value or pass the
        // values into a database which can be available in local/remote  db
        // For easier way, let us check against a hardcoded value
        if (userName != null && yourEmailID != null &&  yourPassword != null ) {
            // We can redirect the page to a welcome page
            // Need to pass the values in session in order
            // to carry forward that one to next pages
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("emailId", yourEmailID);
            httpSession.setAttribute("gender", gender);
            httpSession.setAttribute("favoriteLanguage", favoriteLanguage);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }
    }
}

