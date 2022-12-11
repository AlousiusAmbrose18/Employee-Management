package com.alo.employeemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.alo.employeemanagement.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {

	@Query("from Admin where name=:name and password=:password")
	public Admin findByUserNameAndPassword(String name, String password);

	

}
