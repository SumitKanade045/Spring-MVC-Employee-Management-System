package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.model.Employee;


@Repository
public class EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	//SAVE EMPLOYEE
	
	public void saveEmployee(Employee emp) {
		
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		
		session.persist(emp);
		
		session.getTransaction().commit();
		
		session.close();
	}
	
	// GET ALL EMPLOYEES
	
	public List<Employee> getAllEmployee(){
		
		
		Session session = sessionFactory.openSession();
		
		List<Employee> employees = session.createQuery("from Employee",Employee.class).getResultList();
		
		session.close();
		
		return employees;
	}
	
	// LOGIN
	
	public Employee login(String username , String password) {
		
		Session session = sessionFactory.openSession();
		
		Employee emp = session.createQuery("from Employee where username = :username and password = :password",Employee.class).setParameter("username", username).setParameter("password", password).uniqueResult();
		
		session.close();
		
		return emp;
	}
	
	
	// GET EMPLOYEE BY ID
	
	public Employee getEmployeeId(int eid) {
		
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		
		Employee emp = session.get(Employee.class, eid);
		
		session.close();
		
		return emp;
	}
	
	//UPDATE EMPLOYEE
	
	public void updateEmployee(Employee emp) {
		
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		
		session.merge(emp);
		
		session.getTransaction().commit();
		
		session.close();
	}
	
	public void deleteEmployee(int eid) {
		
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		
		Employee emp = session.get(Employee.class, eid);
		
		if(emp!=null) {
			
			session.remove(emp);
		}
		
		session.getTransaction().commit();
		
		session.close();
	}
}
