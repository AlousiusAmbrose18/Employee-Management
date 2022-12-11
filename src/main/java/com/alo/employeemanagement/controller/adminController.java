package com.alo.employeemanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alo.employeemanagement.entity.Admin;
import com.alo.employeemanagement.service.AdminService;

@Controller
public class adminController {

	@Autowired
	private AdminService adminService;

	@PostMapping(value = "/saveAdmin")
	public Admin saveAdmin(@RequestBody Admin admin) {
		adminService.saveAdmin(admin);
		return admin;
	}

	@PostMapping(value = "/verifyAdmin")
	public String verifyAdmin(ModelMap map , Admin admin) {
		return adminService.verifyAdmin(map,admin);

	}
}
