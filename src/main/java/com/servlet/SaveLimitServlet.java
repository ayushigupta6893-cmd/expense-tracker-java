package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ExpenseDao;
import com.dao.LimitDao;
import com.db.HibernateUtil;
import com.entity.Expense;
import com.entity.Limit;
import com.entity.User;



@WebServlet("/limitexpense")
public class SaveLimitServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String limit = req.getParameter("limit");
        String period = req.getParameter("period");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginUser");

        LimitDao limitDao = new LimitDao(HibernateUtil.getSessionFactory());

        // ✅ Get existing limit
        Limit li = limitDao.getLimitByUser(user);

        // ✅ If no limit exists, create one
        if (li == null) {
            li = new Limit();
            li.setUser(user);
        }

        li.setLimit(limit);
        li.setPeriod(period);

        limitDao.saveOrUpdate(li);

        // ✅ Check expense total
        ExpenseDao expenseDao = new ExpenseDao(HibernateUtil.getSessionFactory());

        double limitAmount = Double.parseDouble(li.getLimit());
        double totalExpense = expenseDao.getTotalExpense(user, period);

        if (totalExpense > limitAmount) {
            session.setAttribute("warning", "⚠ Expense limit exceeded!");
            resp.sendRedirect("user/limit_warning.jsp");
            return;
        }

        resp.sendRedirect("user/home.jsp");
    }
}
