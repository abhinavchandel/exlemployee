package com.employee.servicesImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.model.Employee;
import com.employee.repository.EmployeeRepo;
import com.employee.services.EmployeeService;
@Service
public class EmployeeSeviceImpl implements EmployeeService {
	@Autowired EmployeeRepo emprepo;

	@Override
	public List<Employee> getemp(Employee emp) {
		List<Employee> data;
			data=	emprepo.getempforName(emp.getFirstName(), emp.getStartdate(), emp.getEndDate());
		
		return data;
	}

	@Override
	public void createEmp(Employee emp) {
		emprepo.save(emp);
		
	}

}
