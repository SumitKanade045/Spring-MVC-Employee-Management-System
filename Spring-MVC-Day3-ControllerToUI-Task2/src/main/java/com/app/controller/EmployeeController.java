package com.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Admin;
import com.app.model.Employee;
import com.app.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/")
	public String empLogin() {

		return "emp-login";
	}

	@RequestMapping("/emp-login")
	public String empLogin1() {

		return "emp-login";
	}

	@RequestMapping("/register")
	public String empRegister() {
		return "register";
	}

	@RequestMapping("/admin-login")
	public String adminLogin() {

		return "admin-login";
	}

	@RequestMapping("/forgot-password")
	public String fg() {

		return "forgot-password";
	}

	@RequestMapping("/logout")
	public String logout() {

		return "logout";
	}

	@RequestMapping("/editEmployee")
	public String editeEmp(@RequestParam("eid") int eid, Model model) {

		Employee emp = employeeService.getEmployeebyId(eid);

		model.addAttribute("employee", emp);

		return "editEmployee";

	}

	@RequestMapping("/deleteEmp")
	public String deleteEmp(@RequestParam("eid") int eid, Model model) {

		Employee emp = employeeService.getEmployeebyId(eid);

		model.addAttribute("employee", emp);

		return "deleteEmployee";
	}

	// =============================================================================================================

	@RequestMapping("/registerS")
	public String empRegister1(@ModelAttribute Employee emp) {

		employeeService.saveEmployee(emp);

		return "registerS";
	}

	@RequestMapping("/adminLogin")
	public String adminLoginCheck(
	        @RequestParam("username") String username,
	        @RequestParam("password") String password,
	        Model model) {

	    if ("Admin@123".equals(username) &&
	        "admin@123".equals(password)) {

	        return "redirect:/adminDashboard";
	    }

	    model.addAttribute("error",
	            "Invalid Admin Username or Password");

	    return "admin-login";
	}


	@RequestMapping("/adminDashboard")
	public String adminDashboard(Model model) {

	    List<Employee> employees =
	            employeeService.getAllEmployee();

	    model.addAttribute("employees", employees);

	    model.addAttribute("employeeCount",
	            employees.size());

	    return "adminDashboard";
	}
	@RequestMapping("/employeeDashboard")
	public String empDash(@RequestParam("username") String un, @RequestParam("password") String pass, Model model) {

		Employee emp = employeeService.login(un, pass);

//
//			if (emp.getUsername().equals(un) && emp.getPassword().equals(pass)) {
//
//				model.addAttribute("employee", emp);
//
//				return "employeeDashboard";
//
//			}
//	

		if (emp != null) {

			model.addAttribute("employee", emp);

			return "employeeDashboard";
		}

		model.addAttribute("error", "Invalid Username or Password");

		return "emp-login";

	}

	@RequestMapping("/updateEmployee")
	public String updateEmp(@ModelAttribute Employee emp) {

		employeeService.updateEmployee(emp);

		return "redirect:/adminDashboard";
	}

	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("eid") int eid) {

		employeeService.deleteEmployee(eid);

		return "redirect:/adminDashboard";

	}

}