package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.db.HibernateUtil;
import com.entity.Limit;
import com.entity.User;

public class LimitDao
{
	

	private SessionFactory  factory=null;
	private Session  session=null;
	private Transaction tx=null;
	
	public LimitDao(SessionFactory factory) 
	{
		super();
		this.factory = factory;
	}
	    public Limit getLimitByUser(User user ) 
	    {
	        Session session = HibernateUtil.getSessionFactory().openSession();
	        Query<Limit> q = session.createQuery(
	            "from Limit where user=:user", Limit.class);
	        q.setParameter("user", user);

	        Limit limit = q.uniqueResult();
	        session.close();
	        return limit;
	    }
	    
	    
	    public boolean saveOrUpdate(Limit li) {
	        boolean f = false;
	        Transaction tx = null;
	        try (Session session = factory.openSession()) {
	            tx = session.beginTransaction();
	            session.saveOrUpdate(li);
	            tx.commit();
	            f = true;
	        } catch (Exception e) {
	            if (tx != null) tx.rollback();
	            e.printStackTrace();
	        }
	        return f;
	    }

	    
	    public double getTotalExpense(User user, String period) {

	        double total = 0;

	        try (Session session = factory.openSession()) {

	            String hql = "select sum(cast(e.price as double)) " +
	                         "from Expense e where e.user = :user";

	            Query query = session.createQuery(hql);
	            query.setParameter("user", user);

	            if (query.uniqueResult() != null) {
	                total = (double) query.uniqueResult();
	            }
	        }
	        return total;
	    }

	    
	

	
	
}
