package com.employee.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.employee.model.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Integer> {
	 
	
	@Query("from Employee where (lower(firstName)=?1 or lower(secondName)=?1) and (startdate>=?2 or endDate<=?3)")
	public List<Employee> getempforName(String name,Date sdate,Date edate);
	
	

}
