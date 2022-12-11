package com.alo.employeemanagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.alo.employeemanagement.entity.Admin;
import com.alo.employeemanagement.repository.AdminRepository;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public void saveAdmin(Admin admin) {
		adminRepository.save(admin);
	}
	
	public String verifyAdmin(ModelMap map, Admin admin) {
		if(adminRepository.findByUserNameAndPassword(admin.getAdminName(), admin.getPassword())!=null)
			return "home";
		else {
			map.put("invalid", "*** Invalid User ***");
			return "login";
		}
			
	}

	
}

