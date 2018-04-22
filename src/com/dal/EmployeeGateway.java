package com.dal;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bean.Employee;

public class EmployeeGateway {
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	Session session;
	
	public int saveEmpoyee(Employee employee)
	{
		session=sessionFactory.openSession();
		session.beginTransaction();
		int rowEffected=(Integer)session.save(employee);
		session.getTransaction().commit();
		session.close();
		return rowEffected;
	}
	
	public List<Employee> getAllEmployee()
	{
		List<Employee> empList=new ArrayList<Employee>();
		session=sessionFactory.openSession();
		session.beginTransaction();
		empList=(ArrayList<Employee>)session.createCriteria(Employee.class).list();
		session.getTransaction().commit();
		session.close();
		return empList;
	}

}
