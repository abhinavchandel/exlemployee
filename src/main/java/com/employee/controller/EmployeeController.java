package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.employee.model.Employee;
import com.employee.services.EmployeeService;

@Controller
public class EmployeeController {
	// @Autowired EmployeeRepo emprepo;
	@Autowired
	EmployeeService employeeService;

	@GetMapping("/")

	public String welcome() {
		return "index";
	}

	@GetMapping("/create")

	public String create() {

		return "create";
	}

	@PostMapping("saveData")
	@ResponseBody
	public String savedata(@RequestBody Employee emp) {
		employeeService.createEmp(emp);

		return "success";
	}

	@PostMapping("/getEmp")
	@ResponseBody
	public List<Employee> getEmp(@RequestBody Employee emp) {
		System.out.println(emp.getStartdate());
		System.out.println(emp.getEndDate());
		List<Employee> data = employeeService.getemp(emp);

		return data;

	}

}
