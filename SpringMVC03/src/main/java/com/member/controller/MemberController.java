package com.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.entity.Member;
import com.member.mapper.MemberMapper;





@Controller
public class MemberController {
	@Autowired
	private MemberMapper mapper;
	
	 
	@RequestMapping("/memberInsert.do")
	public String memberInsert(Member member) {
		mapper.memberInsert(member);
		return "index";
	}
	
	@RequestMapping("/memberLogin.do")
	public String memberLogin(Member member, Model model) {
		Member loginMember=mapper.memberLogin(member);
		model.addAttribute("loginMember", loginMember);
		return "index";
	}
}
