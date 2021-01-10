package com.as.mm.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.as.mm.model.Product;
import com.as.mm.repository.EmployeeRepository;
import com.as.mm.repository.ProductRepository;

@RestController
public class ProductController {

	@Autowired
	ProductRepository productRepository;
	@Autowired
	EmployeeRepository employeeRepository;
	
	
	@GetMapping("/product")
	public ModelAndView viewProduct()
	{
		return new ModelAndView("Product","product",new Product());
	}
	@GetMapping("fetchEmployeeId")
	public List fetchEmployeeId()
	{
		List L=employeeRepository.findAll();
		return L;
	}
	@PostMapping("productSubmit")
	public ModelAndView submitProduct(@RequestPart("pic") MultipartFile file ,@ModelAttribute Product p)
	{
		productRepository.save(p);
		try {
			file.transferTo(new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\ProductImages\\EMP"+p.getEmployeeid()+"_PRODUCT"+p.getProductid()+".jpeg"));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("product", new Product());
		model.put("message", "Product Registered Sucessfully");
		return new ModelAndView("Product",model);
	}
	@GetMapping("/displayAllProducts")
	public ModelAndView displayAll()
	{
		List products=productRepository.findAll();
		return new ModelAndView("DisplayProducts","pro",products);
	}
	@GetMapping("/updateProduct")
	public ModelAndView updateEdit(HttpServletRequest req)
	{
		Product p=productRepository.getOne(Integer.parseInt(req.getParameter("pid")));
		return new ModelAndView("ProductUpdation","product",p);
	}
	@PostMapping("/updateEdit")
	public ModelAndView editUpdate(HttpServletRequest req,@ModelAttribute Product p)
	{
		if(req.getParameter("btn").equals("EDIT"))
		{
			productRepository.save(p);
		}
		else  if(req.getParameter("btn").equals("DELETE"))
		{
			File f=new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\ProductImages\\EMP"+p.getEmployeeid()+"_PRODUCT"+p.getProductid()+".jpeg");
			f.delete();
			productRepository.deleteById(p.getProductid());
			
		}
	
		return new ModelAndView("redirect:/displayAllProducts");
	}
	@PostMapping("/UpdateImage")
	public ModelAndView updateImage(@RequestPart("pic") MultipartFile file ,@ModelAttribute Product p )
	{
		Product pro=productRepository.getOne(p.getProductid());
		try {
			file.transferTo(new File("C:\\Users\\heroa\\Desktop\\Sprig Projects\\MaterialManagement\\src\\main\\resources\\static\\ProductImages\\EMP"+pro.getEmployeeid()+"_PRODUCT"+pro.getProductid()+".jpeg"));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		
		return new ModelAndView("redirect:/displayAllProducts");
	}
	@GetMapping("/SearchProductByID")
	public List searchByProductId(HttpServletRequest req)
	{
		List<Product> data=productRepository.findProductByID(Integer.parseInt(req.getParameter("pid")));
		return data;
	}
	@GetMapping("/fetchProductId")
	public List fetchproducts()
	{
		List l=productRepository.findAll();
		return l;
	}
}
