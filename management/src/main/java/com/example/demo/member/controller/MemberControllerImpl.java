package com.example.demo.member.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.common.alert.Alert;
import com.example.demo.common.file.GeneralFileUploader;
import com.example.demo.member.service.MemberService;
import com.example.demo.vo.MemberVO;

@Controller("memberController")
public class MemberControllerImpl implements MemberController {

	@Autowired
	private MemberService memberService;

	@Override
	@RequestMapping(value="/member/register.do", method = RequestMethod.POST)
	public ModelAndView Register(HttpServletRequest request) throws IOException {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("viewName:"+viewName);
		Map MemRegisterMap = GeneralFileUploader.getParameterMap(request);
		try {
			int memberNo = memberService.registerInfoNo(); 
			MemRegisterMap.put("memberNo", memberNo);
			String zipCode = (String) MemRegisterMap.get("zipCode");
			if (zipCode == null || zipCode.trim().length() < 1) {
				MemRegisterMap.put("zipCode", 0);
			}
			System.out.println(MemRegisterMap);

			memberService.insertMemberWithMap(MemRegisterMap);

			mav = Alert.alertAndRedirect("Your account has been registered.", request.getContextPath() + "/member/loginForm.do");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addAllObjects(MemRegisterMap);
			mav = Alert.alertAndRedirect("Failed to create due to error",
					request.getContextPath() + "/member/registerForm.do");
		}
		System.out.println(mav);
		return mav;
		
	}
	@Override
	@RequestMapping(value="/member/nurseRegister.do", method = RequestMethod.POST)
	public ModelAndView nurseRegister(HttpServletRequest request) throws IOException {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		Map nurseRegisterMap = GeneralFileUploader.getParameterMap(request);
		System.out.println("nurseRegister입니다");
		try {
			int memberNo = memberService.registerInfoNo(); 
			nurseRegisterMap.put("memberNo", memberNo);
			String zipCode = (String) nurseRegisterMap.get("zipCode");
			if (zipCode == null || zipCode.trim().length() < 1) {
				nurseRegisterMap.put("zipCode", 0);
			}
			System.out.println(nurseRegisterMap);

			memberService.insertNurserWithMap(nurseRegisterMap);

			mav = Alert.alertAndRedirect("Your account has been registered.", request.getContextPath() + "/member/loginForm.do");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			mav.addAllObjects(nurseRegisterMap);
			mav = Alert.alertAndRedirect("Failed to create due to error",
					request.getContextPath() + "/member/nurseRegisterForm.do");
		}
		System.out.println(mav);
		return mav;
		
	}
	@Override
	@RequestMapping(value="/member/login.do",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) throws IOException {
	String viewName = (String) request.getAttribute("viewName");
	ModelAndView mav = new ModelAndView(viewName);
	Map loginMap = GeneralFileUploader.getParameterMap(request);
	MemberVO memberVo = memberService.login(loginMap);
	System.out.println("memberVO = " + memberVo);
	
	if (memberVo != null && memberVo.getId() != null) {
		HttpSession session = request.getSession();
		session = request.getSession();
		session.setAttribute("isLogOn", true);
		session.setAttribute("memberInfo", memberVo);
		mav = Alert.alertAndRedirect("You have successfully logged in.", request.getContextPath() + "/main/mainPage.do");
		System.out.println("된건가");

	} else {
		System.out.println("로그인 X");
		mav = Alert.alertAndRedirect("Your ID or password is incorrect. Please try again.",
				request.getContextPath() + "/member/loginForm.do");
	}
	
	
	return mav;
	}
}
