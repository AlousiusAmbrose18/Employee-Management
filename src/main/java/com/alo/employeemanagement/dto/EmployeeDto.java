package com.alo.employeemanagement.dto;



public class EmployeeDto{

	private String name;

	private String email;

	private String DOB ;

	private Double salary;

	private String status;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDOB() {
		return DOB;
	}


	public void setDOB(String dOB) {
		this.DOB = dOB;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "EmployeeDto [name=" + name + ", email=" + email + ", DOB=" + DOB + ", salary=" + salary + ", status="
				+ status + "]";
	}
	
	
	
}
