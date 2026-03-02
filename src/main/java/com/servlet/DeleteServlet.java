package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ExpenseDao;
import com.db.HibernateUtil;



@WebServlet("/delete_expense")
public class DeleteServlet extends HttpServlet
{



	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int id=Integer.parseInt(req.getParameter("id"));
        ExpenseDao dao= new ExpenseDao(HibernateUtil.getSessionFactory());
		HttpSession session= req.getSession();

        boolean f= dao.deleteExpense(id);
        if (f)
		{
		   session.setAttribute("msg", "values deleted succesfully");
		   resp.sendRedirect("user/view_expense.jsp");
		}
		else
		{
			session.setAttribute("msg", "Something is wrong ");
			   resp.sendRedirect("user/view_expense.jsp");

		}
		
		
		
		
	
	}
}

