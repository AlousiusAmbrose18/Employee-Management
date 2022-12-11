package com.alo.employeemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alo.employeemanagement.entity.Employee;
import com.alo.employeemanagement.repository.EmployeeReository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeReository employeeReository;
	
	public void saveEmployee(Employee employee) {
		employeeReository.save(employee);
	}

	public List<Employee> getAllEmployee() {
		return employeeReository.findAll();
	}

	public Employee getEmployeeById(Long id) {
		return employeeReository.findById(id).get();
	}

	public void deleteEmployeeById(Long id) {
		employeeReository.deleteById(id);
	}
	
	public Employee findByMail(String email) {
		return employeeReository.findByEmail(email);
	}
}
