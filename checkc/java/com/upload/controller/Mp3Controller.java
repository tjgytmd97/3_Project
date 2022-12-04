package com.upload.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Scanner;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@RequestMapping("/mp3")
public class Mp3Controller {

	//properties에 있는 uploadPath값 가져오기, 이미지와 비디오 저장 경로, root_context.xml 
    @Resource(name="uploadPath")
    String uploadPath;
	
    
    //@RequestMapping("/readresult")
    @ResponseBody
    public String readtxt(){
    	    	
    	String txt_dir = "\\vid_test_result"; //경로 설정
    	
    	String inFilePath = uploadPath+txt_dir+"\\test_result.txt";
    	String outFilePath = uploadPath+txt_dir+"\\test_result2.txt";
    	
    	String returnstr="";
    	
    	//nioCopy(inFilePath, outFilePath);  //파일 복사
    	
    	
    	
    	if ( ! new File(txt_dir).exists()) {
            new File(txt_dir).mkdirs();
            System.out.println("파일 경로 생성");
        }
    	
    	Scanner scanner;
		try {
			//scanner = new Scanner(new File(outFilePath)); //텍스트 파일을 복사한후 이용할경우
			scanner = new Scanner(new File(inFilePath));
		
    	 
        while (scanner.hasNext()) {//공백으로 구분된 문자열 읽기
            String str = scanner.next();
            
            
            
            String[] cityArr = str.split("\\\\");
            for (int i = 0; i < cityArr.length; i++){
            	if(i==(cityArr.length-1)) {
                System.out.println("딥러닝 결과 텍스트 일기. 최종 파일 뽑아내기 : "+cityArr[i]);
                returnstr = cityArr[i];
            	}
            }
            
            
            
        }
    	
		} catch (FileNotFoundException e) {
			System.out.println("판정결과 파일읽기 실패");
			e.printStackTrace();
		}
    	return returnstr;
    }
    
    
    
    public boolean nioCopy(String inFilePath, String outFilePath) {
        File orgFile = new File(inFilePath);
        File outFile = new File(outFilePath);

        try {
            Files.copy(orgFile.toPath(), outFile.toPath(),
                            StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    
}
