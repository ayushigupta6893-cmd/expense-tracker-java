package com.db;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.db.HibernateUtil;

public class Test {
    public static void main(String[] args) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        System.out.println("✅ Hibernate session opened successfully!");
        session.close();
        factory.close();
    }
}