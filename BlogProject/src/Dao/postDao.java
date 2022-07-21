package Dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.loader.custom.Return;

import Vo.postVo;
public class postDao {
	
	public List<?> postSearch(postVo pv)
	{
		List<?> ls=new ArrayList<>();
		try
			{
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q = session.createQuery("from postVo");
				ls = q.list();
				
				transaction.commit();
				session.close();
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;
	}
	
	public List<?> goPost(postVo pv)
	{
		List<?> ls=new ArrayList<>();
		try
			{
				System.out.println("search dao");
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q = session.createQuery("from postVo where sid="+pv.getSid());
				ls = q.list();
	
				transaction.commit();
				session.close();
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;
	}
	
	public void insertpost(postVo pv)
	{
		try
		{
			SessionFactory sessionFactory =new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transacion = session.beginTransaction();
			
			session.save(pv);
			
			transacion.commit();
			session.close();		
		}
		catch(Exception e){e.printStackTrace();}
	}
	public void deleteBlog(postVo pv)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transacion = session.beginTransaction();
			
			session.delete(pv);
			
			transacion.commit();
			session.close();
		}
		catch(Exception e){e.printStackTrace();}
	}
	
	public List<?> editPost(postVo pv)
	{
		List<?> ls=new ArrayList<>();
		try
			{
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q = session.createQuery("from postVo where sid="+pv.getSid());
				ls = q.list();
	
				transaction.commit();
				session.close();
			}
		catch(Exception ex){ex.printStackTrace();}
		return ls;
	}
	public void updatepost(postVo pv)
	{
		try
		{
			SessionFactory sessionFactory =new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transacion = session.beginTransaction();
			
			session.update(pv);
			
			transacion.commit();
			session.close();		
		}
		catch(Exception e){e.printStackTrace();}
	}
}
