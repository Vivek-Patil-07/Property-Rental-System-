package com.property.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

// Import HttpSession

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.property.model.pro;
import com.property.model.user;
import com.property.repo.proinfo;
import com.property.repo.userinfo;

@Controller
public class usercon {
	
	@Autowired
    private userinfo usinfo;
	
	 @Autowired
	    private proinfo proRe;
	
	@GetMapping("/")
    public String home(HttpSession session, Model model) {
        if (session.getAttribute("username") != null) {
            model.addAttribute("username", session.getAttribute("username"));
        }
        return "Home.jsp";
    }
	
	
	@PostMapping("/register")
    public String registers(@ModelAttribute user ee) {
        usinfo.save(ee);
        return "Login.jsp";
    }

    @PostMapping("/Login")
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session) {
        user ob = usinfo.findByEmail(email);
        if (ob != null && ob.getEmail().equals("admin@gmail.com") && ob.getPassword().equals("admin")) {
            return "AdminHome.jsp";

        } else if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
            session.setAttribute("username", ob.getName());
            return "redirect:/UserViewProperty";
        }

        else {
            return "Login.jsp";
        }
    }
	
	
	 @GetMapping("/UserViewProperty")
	    public String userViewProperty(Model model) {
	        List<pro> userpro = proRe.findAll();
	        model.addAttribute("userpro", userpro);
	        return "ViewProperty.jsp";
	    }
	 


}
