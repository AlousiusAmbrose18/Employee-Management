package com.alo.employeemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alo.employeemanagement.entity.Employee;

@Repository
public interface EmployeeReository extends JpaRepository<Employee, Long> {

	Employee findByEmail(String email);

	
}
