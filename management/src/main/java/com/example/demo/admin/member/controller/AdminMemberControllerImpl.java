package com.example.demo.admin.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.admin.member.service.AdminMemberService;
import com.example.demo.common.file.GeneralFileUploader;
import com.example.demo.vo.MemberVO;

@Controller("adminMemberController")
public class AdminMemberControllerImpl implements AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;

	@RequestMapping(value = "/admin/principal/adminMemberApprovalList", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView adminMemberApprovalList(HttpServletRequest request) throws Exception {
		System.out.println("HERE adminMemberApprovalList");
		request.setCharacterEncoding("utf-8");
		String viewName = (String) request.getAttribute("viewName");
		Map memberMap = GeneralFileUploader.getParameterMap(request);
		List<MemberVO> adminMemberApprovalList = adminMemberService.adminMemberApprovalList(memberMap);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("adminMemberApprovalList", adminMemberApprovalList);
		System.out.println(mav);
		return mav;
	}


}
