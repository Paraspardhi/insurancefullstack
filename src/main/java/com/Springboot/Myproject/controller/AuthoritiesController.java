package com.Springboot.Myproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Springboot.Myproject.Entity.Authorites;

import com.Springboot.Myproject.Service.AuthoritiesService;

@Controller
public class AuthoritiesController {
	@Autowired
	private AuthoritiesService as;

	@RequestMapping("Authorlogin")
	public String getLogin(Authorites a) {
		return as.LoginUser(a);
	}
	
	@RequestMapping("addAuthor")
	@ResponseBody
	public Authorites addAuthor( Authorites a) {
		return as.addAuthor(a);
	}
	
	@RequestMapping("viewAuthor")
	public ModelAndView Authorites(int Id) {
		ModelAndView mav = new ModelAndView("displayAuthorities.jsp");
		mav.addObject("data", as.viewAuthor(Id));
		mav.addObject("mode","single");
		return mav;
	}

	@RequestMapping("viewAllAuthor")
	public ModelAndView viewAllAuthor() {
		ModelAndView mvc = new ModelAndView("displayAuthorities.jsp");
		mvc.addObject("mode", "list");
		mvc.addObject("data", as.viewAllAuthor());
		return mvc;
	}

	
	
	@RequestMapping("updateAuthor")
	@ResponseBody
	public Authorites updateAuthor( Authorites a) {
		return as.updateAuthor(a);
	}

	@RequestMapping("deleteAuthor")
	@ResponseBody
	public String deleteAuthor(int Id) {
		return as.deleteAuthor(Id);
	}
}
