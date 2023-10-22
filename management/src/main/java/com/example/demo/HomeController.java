package com.example.demo;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.common.file.GeneralFileUploader;
import com.example.demo.member.service.MemberService;

@Controller
public class HomeController {


	@RequestMapping(value = {"/*.do","/*/*.do","/*/*/*.do","/*/*/*/*.do"})
	public ModelAndView every(HttpServletRequest request) {
		String viewName =  (String) request.getAttribute("viewName");
		System.out.println("/"+viewName);
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println(mav);
		return mav;
	}
	


}