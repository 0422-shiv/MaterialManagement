package com.as.mm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.as.mm.model.Admin;
import com.as.mm.model.Employee;

public interface AdminRepository extends JpaRepository<Admin,Integer>{

	@Query("FROM Admin WHERE adminid=?1 and password=?2")
	List<Admin> checkLogIn(int eid,String pwd);
}
