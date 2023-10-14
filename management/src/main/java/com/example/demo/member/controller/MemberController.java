package com.example.demo.member.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.vo.MemberVO;

public interface MemberController {	
	public ModelAndView Register(HttpServletRequest request)throws Exception;
	public ModelAndView nurseRegister(HttpServletRequest request)throws Exception;

	
}
