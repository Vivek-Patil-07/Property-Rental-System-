package com.property.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;




import com.property.model.pro;
import com.property.repo.proinfo;


@Controller
public class procon {

	 @Autowired
	    private proinfo proin;
	
	 @PostMapping("/addpro")
	    public String addpro(@ModelAttribute pro p, @RequestParam("imageUrl") String imageUrl,@RequestParam("location") String location) {
	        p.setImageUrl(imageUrl);
	        p.setLocation(location);
	        proin.save(p);
	        return "redirect:/viewpro";
	    }

	    @GetMapping("/viewpro")
	    public String fetch(Model model) {
	        List<pro> proList = proin.findAll();
	        model.addAttribute("proList", proList);
	        return "AdminViewProperty.jsp";
	    }
	    
	    @RequestMapping("delete/{id}")
	    public String deleteuser(@PathVariable int id) {
	        proin.deleteById(id);
	        return "redirect:/viewpro";
	    }
	    
	    @RequestMapping("/{id}")
	    public String edit(@PathVariable int id, Model model) {
	        pro pro = proin.findById(id);
	        model.addAttribute("pro",pro);
	        return "edit.jsp";
	    }
	    
	    @RequestMapping("/edit/{id}")
	    public String edituser(@PathVariable int id,@ModelAttribute pro p) {
	    	pro ob=proin.findById(id);
	    	if(ob!=null) {
	    		ob.setProname(p.getProname());
	    		ob.setProowner(p.getProowner());
	    		ob.setPrice(p.getPrice());
	    		ob.setDate(p.getDate());
	    		ob.setState(p.getState());
	    		ob.setCity(p.getCity());
	    		ob.setCategory(p.getCategory());
	    		ob.setImageUrl(p.getImageUrl());
	    		ob.setLocation(p.getLocation());
	    		ob.setDesc(p.getDesc());
	    		ob.setFeatures(p.getFeatures());
	    		
	    		proin.save(ob);
	    	}
	    	return "redirect:/viewpro";
	    }
	    
	    
	    
	    @GetMapping("/search")
	    public String search(@RequestParam("state") String state, @RequestParam("city") String city, @RequestParam("category") String category, Model model) {
	        List<pro> searchResults = proin.findByStateCityAndCategory(state, city, category);
	        model.addAttribute("proList", searchResults);
	        return "searchResults.jsp";  // A new JSP to display search results
	    }
	    
	    

  
	    
}
