package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/main")
    public String index(Model model) {
        System.out.println("시험이당");
        return "main";
    }
    
    @RequestMapping("/member/registerForm")
    public String index1(Model model) {
        System.out.println("/member/registerForm");
        return "/member/registerForm";
    }
}
