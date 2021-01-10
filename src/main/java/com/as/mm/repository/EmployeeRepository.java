package com.as.mm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.as.mm.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Integer>
{
	@Query("FROM Employee WHERE employeeid=?1 and password=?2")
	List<Employee> checkLogIn(int eid,String pwd);
 	
	
}