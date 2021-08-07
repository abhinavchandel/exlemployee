package com.employee.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.employee.model.Employee;
@Service
public interface EmployeeService {
	
public List<Employee> getemp(Employee emp);
	
	
	
	
	
	public void createEmp(Employee emp);
	

}
