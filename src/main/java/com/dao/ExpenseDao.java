package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Expense;
import com.entity.User;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.Query;

public class ExpenseDao 
{

	private SessionFactory  factory=null;
	private Session  session=null;
	private Transaction tx=null;
	public ExpenseDao(SessionFactory factory) 
	{
		super();
		this.factory = factory;
	}
	
	public boolean saveExpense(Expense ex)
	{
	boolean f= false;

	try
	{
		
	session =factory.openSession();
	tx=session.beginTransaction();
	session.save(ex);
	tx.commit();
	f=true;
	
   }
	catch (Exception e) 
	{
	if(tx!=null)
	{
		f=false;
		e.printStackTrace();
	}
	
	
	}
	
	return f;
	
	}
	public List<Expense> getAllExpenseByUser(User user)
	{
		
	List<Expense> list =new ArrayList<Expense>();
	
	try
	{
	session=factory.openSession();
	Query q=session.createQuery("from Expense where user=:us");
	q.setParameter("us",user);
	  list= q.getResultList();
	
	
	}
	
	catch (Exception e)
	
	{
		e.printStackTrace();
		
	}
	
	
		
		
	return list;
	
	
		
		
		
		
	}
 public Expense getExpenseById(int id)
 {
	 Expense ex=null;
	 
	 try {
		 
		 
		 session=factory.openSession();
		 Query q=session.createQuery("from Expense where id=:id");
		 q.setParameter("id", id);
		ex =(Expense) q.uniqueResult();
		
	}
	 catch (Exception e) 
	 {
		// TODO: handle exception
	}
	 return ex;
 }

 public boolean updateExpense(Expense ex)
	{
	boolean f= false;

	try
	{
		
	session =factory.openSession();
	tx=session.beginTransaction();
	session.saveOrUpdate(ex);
	tx.commit();
	f=true;
	
}
	catch (Exception e) 
	{
	if(tx!=null)
	{
		f=false;
		e.printStackTrace();
	}
	
	
	}
	
	return f;
	
	}
 
 public boolean deleteExpense(int id)
	{
	 boolean f=false;
	 session =factory.openSession();
		tx=session.beginTransaction();
		Expense ex=session.get(Expense.class, id);
		session.delete(ex);
		
		tx.commit();
		f=true;
	 
	 
	 
	 return f;
	}
 
 public double getTotalExpense(User user, String period) {

	    Session session = factory.openSession();
	    Query<Expense> q = session.createQuery(
	        "from Expense e where e.user = :user", Expense.class);
	    q.setParameter("user", user);

	    List<Expense> list = q.list();
	    session.close();

	    double total = 0;
	    for (Expense e : list) {
	        total += Double.parseDouble(e.getPrice());
	    }
	    return total;
	}

 
	
}
	
	
	

