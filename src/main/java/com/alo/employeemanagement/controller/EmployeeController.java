package com.alo.employeemanagement.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alo.employeemanagement.dto.EmployeeDto;
import com.alo.employeemanagement.entity.Employee;
import com.alo.employeemanagement.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@GetMapping(value = "/")
	public String loginPage() {
		return "login";
	}

	@GetMapping(value = "/home")
	public String indexRequest() {
		return "home";
	}

	@PostMapping(value = "/saveEmployee")
	public String saveEmployee(ModelMap modelMap, EmployeeDto employeeDto) throws ParseException {

		Employee employee = new Employee();
		employee.setName(employeeDto.getName());
		employee.setEmail(employeeDto.getEmail());
		employee.setDOB(LocalDate.parse(employeeDto.getDOB()));
		employee.setSalary(employeeDto.getSalary());

		if (employeeDto.getStatus().equals("true"))
			employee.setStatus(true);
		else
			employee.setStatus(false);

		employeeService.saveEmployee(employee);
		modelMap.put("successMsg", "*** Employee Details Added Successfully ***");
		return "home";

	}

	@GetMapping(value = "/getAllEmployee")
	public String getAllEmployee(ModelMap model) {
		List<Employee> employeeList = employeeService.getAllEmployee();
		model.addAttribute("Employees", employeeList);
		return "viewAllEmployee";
	}

	@GetMapping(value = "/edit/{id}")
	public String getEmployeeById(@PathVariable Long id, ModelMap modelMap) {
		Employee employee = employeeService.getEmployeeById(id);
		modelMap.addAttribute("employee", employee);
		return "editEmployee";

	}

	@PostMapping(value = "/updateEmployee")
	public String updateEmployee(EmployeeDto employeeDto, ModelMap modelMap) {
		System.out.println(employeeDto);
		Employee employee = employeeService.findByMail(employeeDto.getEmail());
		
		employee.setName(employeeDto.getName());
		employee.setEmail(employeeDto.getEmail());
		employee.setDOB(LocalDate.parse(employeeDto.getDOB()));
		employee.setSalary(employeeDto.getSalary());

		if (employeeDto.getStatus().equals("true"))
			employee.setStatus(true);
		else
			employee.setStatus(false);

		employeeService.saveEmployee(employee);
		modelMap.put("updateMsg", "*** Employee Details updated Successfully ***");
		return "editEmployee";
	}


	@GetMapping(value = "/deleteEmployee/{id}")
	public String deleteEmployeeById(@PathVariable Long id,ModelMap map) {
		employeeService.deleteEmployeeById(id);
		return getAllEmployee(map);
	}

}
