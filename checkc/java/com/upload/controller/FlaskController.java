package com.upload.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.member.entity.Member;

@RequestMapping("/flask")
@Controller
public class FlaskController {

	@RequestMapping(value = "/upsleepy")	
	public String upsleepy(String deepresult, ModelAndView mv, HttpSession session, Member member) {

		System.out.println("딥러닝 결과 : " + deepresult);
		
		FileController fc = new FileController();
		fc.sleepystate("gomp3"); //전역변수 변경, db이용으로 바꿀것
		
		return "redirect:/resources/html/alarm_play.html";
		
	}
	
	public void upvideo(MultipartFile file) {
		
		
	}
}
