package com.Springboot.Myproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.Springboot.Myproject.Entity.InsuranceModel;
import com.Springboot.Myproject.Service.InsuranceModelService;

@Controller
public class InsurancemodelController {
	@Autowired
	private InsuranceModelService imd;

	@RequestMapping("addinsurance")
	@ResponseBody
	public String addInsurance(InsuranceModel im) {
		return imd.addInsurance(im);
	}

	@RequestMapping("viewInsurance")
	public ModelAndView viewInsurance(String plateNumber) {
		ModelAndView mvc = new ModelAndView("displayInsurance.jsp");
		mvc.addObject("mode", "single");
		mvc.addObject("data", imd.viewInsurance(plateNumber));
		return mvc;
	}

	@RequestMapping("viewAll")
	public ModelAndView viewAllInsurance() {
		ModelAndView mvc = new ModelAndView("displayInsurance.jsp");
		mvc.addObject("mode", "list");
		mvc.addObject("data", imd.viewAllInsurance());
		return mvc;
	}

	@RequestMapping("getAuthorityInsurance")
	public ModelAndView getAllAuthor(String provider) {
		ModelAndView mvc = new ModelAndView();
		mvc.addObject("mode", "list");
		mvc.addObject("data",imd.getInsuranceDetails(provider));
		return mvc;
	}

	@RequestMapping("updateinsurance")
	@ResponseBody
	public String updateInsurance(InsuranceModel im) {
		return imd.updateInsurance(im);
	}

	@RequestMapping("deleteInsurance")
	@ResponseBody
	public String deleteInsurance(String insuranceNumber) {
		return imd.deleteInsurance(insuranceNumber);
	}

}