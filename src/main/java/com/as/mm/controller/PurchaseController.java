package com.as.mm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.as.mm.model.Issue;
import com.as.mm.model.Purchase;
import com.as.mm.repository.PurchaseRepository;

@RestController
public class PurchaseController {
	
	@Autowired
	PurchaseRepository purchaseRepository;

	@GetMapping("/purchase")
	public ModelAndView purchaseRegister()
	{
		return new ModelAndView("Purchase","purchase",new Purchase());
	}
	@PostMapping("/purchaseSubmit")
	public ModelAndView purchaseSubmit(@ModelAttribute Purchase purchase)
	{
		purchaseRepository.save(purchase);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("purchase", new Purchase());
		model.put("message","Item Purchased");
		
		return new ModelAndView("Purchase",model);
	}
}
