package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.UserData;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

/**
 * Add or edit the user
 *
 * @author cmalin
 */
@WebServlet(
        urlPatterns = {"/editUser"}
)

public class EditUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserData userData = new UserData();

        if (req.getParameter("id").equals("")) {
            User user = new User(req.getParameter("firstName"), req.getParameter("lastName"), req.getParameter("userName"), req.getParameter("dateOfBirth"));
            userData.insert(user);
        } else {
            User user = new User(Integer.valueOf(req.getParameter("id")), req.getParameter("firstName"), req.getParameter("lastName"), req.getParameter("userName"), req.getParameter("dateOfBirth"));
            userData.update(user);
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("searchUser?searchTerm=&submit=viewAll");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserData userData = new UserData();
        req.setAttribute("user", userData.getById(req.getParameter("id")));

        RequestDispatcher dispatcher = req.getRequestDispatcher("/editUser.jsp");
        dispatcher.forward(req, resp);
    }
}