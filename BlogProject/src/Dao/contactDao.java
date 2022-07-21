package Dao;


import Vo.contactVo;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class contactDao {

	
	public void loginInsert(contactVo cv)
	{
		try
		{
			System.out.println("contact dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			
			Transaction transaction=session.beginTransaction();
			
			session.save(cv);
			
			transaction.commit();
			
			session.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
}
