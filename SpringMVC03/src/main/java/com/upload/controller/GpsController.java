package com.upload.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/gps")
@Controller
public class GpsController {
	
	
	//BigDecimal latitude,BigDecimal longitude,BigDecimal currntspeed
@RequestMapping("/insert")
@ResponseBody
	public String gpscon(HttpServletRequest request){
	
	String[] gps = request.getParameterValues("tempgps");//배열로 받아온 gps값 
	double[] dgps = new double[3];//배열로 받아온 값 형변환
	
	for (int i =0;i<gps.length;i++) {
			
		dgps[i] = Double.valueOf(gps[i]) ;
		}
	
	
	
	//위도,경도,현재속도
	
	System.out.println(gps.toString());
	
		System.out.println("gps 입력 메소드, gps 값 : "+dgps[0]+" , "+dgps[1]+" , "+dgps[2]);
		
		
		return "gps upload success";
	}
	
	
}
