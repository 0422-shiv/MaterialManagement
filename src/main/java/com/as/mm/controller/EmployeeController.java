package com.as.mm.controller;

import java.io.File;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.as.mm.model.Admin;
import com.as.mm.model.City;
import com.as.mm.model.Employee;
import com.as.mm.model.State;
import com.as.mm.repository.AdminRepository;
import com.as.mm.repository.CityRepository;
import com.as.mm.repository.EmployeeRepository;
import com.as.mm.repository.ProductRepository;
import com.as.mm.repository.StateRepository;

@RestController
public class EmployeeController {

	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	StateRepository stateRepository;
	@Autowired
	CityRepository cityRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AdminRepository adminRepository;	
	@GetMapping("/LogInPage")
	public ModelAndView landingPage()
	{
		return new ModelAndView("LogInPage","emp",new Employee());
	}
	@GetMapping("/Logout")
	public ModelAndView logout(HttpServletRequest req)
	{ HttpSession ses=req.getSession();
	     ses.invalidate();
		return new ModelAndView("LogInPage","emp",new Employee());
	}
	@GetMapping("/AdminLogout")
	public ModelAndView adminLogout(HttpServletRequest req)
	{ HttpSession ses=req.getSession();
	     ses.invalidate();
		return new ModelAndView("AdminLogIn","admin",new Admin());
	}
	
	@PostMapping("/CheckLogIn")
	public ModelAndView  checkLogIn(@ModelAttribute Employee emp,HttpServletRequest req)
	{
		
		List<Employee> data=employeeRepository.checkLogIn(emp.getEmployeeid(),emp.getPassword());
		if(data.size()==0)
		{
			Map<String,Object>model=new HashMap<String,Object>();
			model.put("emp", emp);
			model.put("Message","Invalid UserId/Password");
			return new ModelAndView("LogInPage",model);
		}
		else
		{
			HttpSession ses=req.getSession();
			ses.setAttribute("EMPSESSION", data.get(0));
			return new ModelAndView("redirect:/HomePage");
		}
		
	}
	@GetMapping("/Admin")
	public ModelAndView adminLogin()
	{
		return new ModelAndView("AdminLogIn","admin",new Admin());
	}
	@PostMapping("/CheckAdminLogIn")
	public ModelAndView checkAdmin(@ModelAttribute Admin admin,HttpServletRequest req)
		{
			List<Admin> data=adminRepository.checkLogIn(admin.getAdminid(), admin.getPassword());
			if(data.size()==0)
			{
				Map<String,Object>model=new HashMap<String,Object>();
				model.put("admin", admin);
				model.put("Message","Invalid UserId/Password");
				return new ModelAndView("AdminLogIn",model);
			}
			else
			{
				HttpSession ses=req.getSession();
				ses.setAttribute("ADMINSESSION", data.get(0));
				return new ModelAndView("AdminHomePage");
			}
		}

	@GetMapping("/AdminHomePage")
	public ModelAndView loginAdmin(HttpServletRequest req)
	{
		return new ModelAndView("AdminHomePage");
	}
	@GetMapping("/HomePage")
	public ModelAndView homePage(HttpServletRequest req)
	{ /*HttpSession ses=req.getSession();
		Employee E=(Employee)ses.getAttribute("EMPSESSION");
         System.out.print("xxxxxxxxxxxxxxxxxxxxxxxx"+E.getEmployeename());
		*/
		return new ModelAndView("HomePage");
	}
	@RequestMapping("/try")
	public String start()
	{
		return "It' Working!!!!";
	}
	@GetMapping("/view")
	public ModelAndView employeeView()
	{
		return new ModelAndView("Employee","emp",new Employee());
	}
	@PostMapping("/submit")
	public ModelAndView employeeSubmit( @RequestPart("pic") MultipartFile file  , @ModelAttribute Employee emp)
	{
		employeeRepository.save(emp);
		try {
			file.transferTo(new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\Pictures\\"+emp.getEmployeename()+"_"+emp.getEmployeeid()+".jpeg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} 
		//emp.setPicture(file.getOriginalFilename());
		//employeeRepository.save(emp);
		
		Map<String,Object> model= new HashMap<String,Object>();
		model.put("emp",new Employee());
		model.put("message","Record Submitted");
		return new ModelAndView("Employee",model);
		
	}
	@GetMapping("/display")
	public ModelAndView display()
	{
		List<Employee> data=employeeRepository.findAll();
		return new ModelAndView("Display","employees",data);
	}
	@GetMapping("/states")
	public List showStates()
	{
		List<State> states=stateRepository.findAll();
		return states;
	}
	@GetMapping("/cities")
	public List showCity(HttpServletRequest req)
	{
		List<City> cities =cityRepository.findCityByState(req.getParameter("statename"));
		return cities;
	}
	@GetMapping("/update")
	public ModelAndView update(HttpServletRequest req)
	{
		Employee E=employeeRepository.getOne(Integer.parseInt(req.getParameter("id")));
	//	int ab=Integer.parseInt(req.getParameter("id"));
		return new ModelAndView("DisplayById","emp",E);
	}
	@PostMapping("/UpdateDelete")
	public ModelAndView EmployeeEditDelete(HttpServletRequest req,@ModelAttribute Employee emp)
	{
		 if(req.getParameter("btn").equals("Edit"))
		 {
		 	 
		 	 employeeRepository.save(emp);
		 	}
		 else if(req.getParameter("btn").equals("Delete"))
		 { 
			 File f=new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\Pictures\\"+emp.getEmployeename()+"_"+emp.getEmployeeid()+".jpeg");
			 f.delete();
			 employeeRepository.deleteById(emp.getEmployeeid());
		 	}
		return new ModelAndView("redirect:/display");		
	}
	@PostMapping("/updateimg")
	public ModelAndView ImageUpdation(@RequestPart("pic") MultipartFile file,@ModelAttribute Employee employee)
	{
		Employee E=employeeRepository.getOne(employee.getEmployeeid());
		try {
			file.transferTo(new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\Pictures\\"+E.getEmployeename()+"_"+E.getEmployeeid()+".jpeg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} 
		return new ModelAndView("redirect:/display"); 
	}
}