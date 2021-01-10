package com.as.mm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.as.mm.model.Issue;
import com.as.mm.model.Product;
import com.as.mm.repository.IssueRepository;
import com.as.mm.repository.ProductRepository;

@RestController
public class IssueController {

	@Autowired
	IssueRepository issueRepository;
	
	@Autowired
	ProductRepository productRepository;
	
	@GetMapping("/issue")
	public ModelAndView issueRegister()
	{
		return new ModelAndView("Issue","issue",new Issue());
	}
	
	@PostMapping("/issueSubmit")
	public ModelAndView issueSubmit(@ModelAttribute Issue issue)
	{
		
		issueRepository.save(issue);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("issue", new Issue());
		model.put("message","Item Issued");
		Product p=productRepository.getOne(issue.getProductid());
		int stock=Integer.parseInt(p.getProductstock())-issue.getQtyissue();
		p.setProductstock(stock+"");
		return new ModelAndView("Issue",model);
	}
	
}