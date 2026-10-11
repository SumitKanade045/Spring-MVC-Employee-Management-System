package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.EmployeeDao;
import com.app.model.Employee;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao employeeDeo;

	public void saveEmployee(Employee emp) {

		employeeDeo.saveEmployee(emp);
	}

	public List<Employee> getAllEmployee() {

		return employeeDeo.getAllEmployee();
	}

	public Employee login(String username, String password) {

		return employeeDeo.login(username, password);
	}
	
	public Employee getEmployeebyId(int eid) {
		
		return employeeDeo.getEmployeeId(eid);
	}
	
	public void updateEmployee(Employee emp) {
		
		employeeDeo.updateEmployee(emp);
	}
	
	public void deleteEmployee(int eid) {
		
		employeeDeo.deleteEmployee(eid);
	}

}
