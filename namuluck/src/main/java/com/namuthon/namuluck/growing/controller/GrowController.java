package com.namuthon.namuluck.growing.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.namuthon.namuluck.member.model.service.MemberServiceImpl;
import com.namuthon.namuluck.member.model.vo.Member;

@Controller
public class GrowController {
		
	@RequestMapping("growing.gr")
	public String growTree() {
		return "grow/growingTree";
	}
	
	@RequestMapping("shopping.sh")
	public String shopping() {
		return "shop/shoppingMall";
	}
	
	@RequestMapping("quiz.qz")
	public String quiz() {
		return "quiz/quiz";
	}
	
	@RequestMapping("quiz2.qz")
	public String quiz2() {
		return "quiz/quiz2";
	}
	
	

	
	

}
