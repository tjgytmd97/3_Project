package com.upload.controller;

import java.io.File;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/file")
public class FileController {
    
	

//properties에 있는 uploadPath값 가져오기
    @Resource(name="uploadPath")
    String uploadPath;//upload
    
//이 경로는 GET방식으로만 호출이 가능 (페이지 호출)
    @RequestMapping(value="/upload", method=RequestMethod.GET)
    public String fileupload() {
    	
        //return "post/test_file.basic";
    	return "redilect:/";
    }
    
//이 경로는 POST방식으로만 호출이 가능 (파일 등록)
    @RequestMapping(value="/upload", method=RequestMethod.POST)
    @ResponseBody //웹캡 js 에 데이터 보내주기 위해서
    
    //public ModelAndView uploadForm(MultipartFile file, ModelAndView mv) {
    public String uploadForm(MultipartFile file, ModelAndView mv) {
        String fileName = file.getOriginalFilename();
        File target = new File(uploadPath, fileName);
        System.out.println("파일업로드 클래스 진입, 파일이름 : "+fileName+" ,파일 타겟 : "+target);
        
        //경로 생성
        if ( ! new File(uploadPath).exists()) {
            new File(uploadPath).mkdirs();
            System.out.println("파일 경로 생성");
        }
       
        
        //파일 복사
        try {
            FileCopyUtils.copy(file.getBytes(), target);
            mv.addObject("file", file);
            System.out.println("파일 복사 ");
        } catch(Exception e) {
            e.printStackTrace();
            mv.addObject("file", "error");
           
        }
       
        //View 위치 설정
        mv.setViewName("post/test_upload.basic");
        return "업로드 클래스 진입후 포스트 방식 입력완료";
    }
}