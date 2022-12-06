package com.upload.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.Comparator;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.member.entity.Member;

@Controller
@RequestMapping("/file")
public class FileController {

	
	static String new_sleepy_satate="";
	static String old_sleepy_satate="";
//properties에 있는 uploadPath값 가져오기, 이미지와 비디오 저장 경로, root_context.xml 
	@Resource(name = "uploadPath")
	String uploadPath;
	

	@Resource(name = "uploadPath")
	String uploadPath2;

//이 경로는 GET방식으로만 호출이 가능 (페이지 호출)
	@RequestMapping(value = "/checkupload", method = RequestMethod.GET)
	public String fileupload() {

		// return "post/test_file.basic"
		return "";
	}
	
	public void sleepystate(String result){
		
		new_sleepy_satate = result;
		
	}
	
	@RequestMapping("/wantsleepy")
	@ResponseBody
	public String wantsleepy(){
		
		if(new_sleepy_satate.equals("gomp3"))
			new_sleepy_satate="";
			return "gomp3";
		
		
	}

//이 경로는 POST방식으로만 호출이 가능 (파일 등록)

	//영상 등록 메서드
	@RequestMapping(value = "/checkuploadvideo", method = RequestMethod.POST)
	@ResponseBody	
	// 웹캡 js 에 데이터 보내주기 위해서
	// public ModelAndView uploadForm(MultipartFile file, ModelAndView mv) {
	public String uploadForm(MultipartFile file, ModelAndView mv, HttpSession session, Member member) {

		
		
		String vidpath = "\\video"; // 업로드 경로에 비디오 폴더 붙여서 넣기

		if (session.getAttribute("loginMember") != null) {

			member = (Member) session.getAttribute("loginMember");
			System.out.println("로그인된 아이디로 폴더 생성 : " + member.getM_no());
			vidpath = "\\membervid\\" + member.getM_no();
		}

		String uploadPathvideo = uploadPath + vidpath;

		System.out.println("현재 uploadPathvideo : " + uploadPathvideo);

		String fileName = file.getOriginalFilename();
		File target = new File(uploadPathvideo, fileName);
		System.out.println("파일업로드 클래스 진입, 파일이름 : " + fileName + " ,파일 경로 : " + target);

		// 경로 생성
		if (!new File(uploadPathvideo).exists()) {
			new File(uploadPathvideo).mkdirs();
			System.out.println("파일 경로 생성");
		}

		// 파일 복사
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			mv.addObject("file", file);
			System.out.println("파일 복사 ");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("file", "error");

		}
		
		deltempvidFile(uploadPathvideo); // 파일 삭제 메서드
		
		//딥러닝 결과  static 변수에 대입해서 자바스크립트에게 전달	
	    System.out.println("static 이전 졸음 파일 변수 : "+	old_sleepy_satate);
	    System.out.println("static 최근 졸음 파일 변수: " + new_sleepy_satate);
	    
	    if(!new_sleepy_satate.isEmpty()||new_sleepy_satate.contentEquals("")||new_sleepy_satate==null) {
	    	
	    	if(!new_sleepy_satate.equals(old_sleepy_satate)) {
	    		old_sleepy_satate=new_sleepy_satate;
	    		
	    		return "gomp3";
	    	}
	    }
	    // View 위치 설정
		//mv.setViewName("post/test_upload.basic");
		return "upload video complite. sleepy is no change ";

	}

	
	
	
	
	//회원 수정에서 영상 올려주는 메서드
	@RequestMapping(value = "/insertmemvid", method = RequestMethod.POST)
	@ResponseBody // 웹캡 js 에 데이터 보내주기 위해서
	// public ModelAndView uploadForm(MultipartFile file, ModelAndView mv) {
	public String uploadForm2(MultipartFile file, ModelAndView mv, HttpSession session, Member member) {

		String vidpath = "\\insertmemvid"; // 업로드 경로에 비디오 폴더 붙여서 넣기

		if (session.getAttribute("loginMember") != null) {

			member = (Member) session.getAttribute("loginMember");
			System.out.println("로그인된 아이디로 폴더 생성 : " + member.getM_no());
			vidpath = vidpath + "\\" + member.getM_no();
		}

		String uploadPathvideo = uploadPath + vidpath;

		String fileName = "vid_" + member.getM_no() + ".mp4";
		File target = new File(uploadPathvideo, fileName);
		System.out.println("파일업로드 클래스 진입, 파일이름 : " + fileName + " ,파일 경로 : " + target);

		// 경로 생성
		if (!new File(uploadPathvideo).exists()) {
			new File(uploadPathvideo).mkdirs();
			System.out.println("파일 경로 생성");
		}

		// 파일 복사
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			mv.addObject("file", file);
			System.out.println("파일 복사 ");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("file", "error");

		}

		deltempvidFile(uploadPathvideo); // 파일 삭제

		// View 위치 설정
		mv.setViewName("post/test_upload.basic");
		return "upload js script video upload success ";

	}
	
	
	
	public String deltempvidFile(String uploadPath) { // 업로드 된 비디오 개수 조절

		File dir = new File(uploadPath); // 받아온 경로 지정
		File fileslist[] = dir.listFiles(); // 파일 리스트 배열로 생성, 경로 포함
		String filesname[] = dir.list();//파일 이름만 배열로 반환
		
		String result="";
	
		Arrays.sort(fileslist, Comparator.reverseOrder()); // 영상 삭제를 위해 내림차순으로 배열 정렬
		Arrays.sort(filesname, Comparator.reverseOrder());
					
		if (fileslist.length > 50) { // 파일 최대숫자 지정

			for (int i = 50; i < fileslist.length; i++) {// 파일 지우기. 내림차순 정렬하여 오래된 파일(가장 먼저 생성된) 하나씩 지우기

				System.out.print("삭제될 파일 : " + fileslist[i]);
				boolean fileDeleted = fileslist[i].delete();

				System.out.println(" 파일 삭제 여부 : " + fileDeleted);
			}
		}
		
		return result;
	}

	@RequestMapping(value = "/alarm", method = RequestMethod.POST)
	@ResponseBody // 웹캡 js 에 데이터 보내주기 위해서
	// public ModelAndView uploadForm(MultipartFile file, ModelAndView mv) {
	public String uploadalarm(MultipartFile file, ModelAndView mv, HttpSession session, Member member) {

		String vidpath = "\\alarm"; // 업로드 경로에 비디오 폴더 붙여서 넣기

		if (session.getAttribute("loginMember") != null) {

			member = (Member) session.getAttribute("loginMember");
			System.out.println("로그인된 아이디로 폴더 생성 : " + member.getM_no());
			vidpath = vidpath + "\\" + member.getM_no();
		}

		String uploadPathvideo = uploadPath + vidpath;

		String fileName = "mp3alarm";
		File target = new File(uploadPathvideo, fileName);
		System.out.println("파일업로드 클래스 진입, 파일이름 : " + fileName + " ,파일 경로 : " + target);

		// 경로 생성
		if (!new File(uploadPathvideo).exists()) {
			new File(uploadPathvideo).mkdirs();
			System.out.println("파일 경로 생성");
		}

		// 파일 복사
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			mv.addObject("file", file);
			System.out.println("파일 복사 ");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("file", "error");

		}

		// View 위치 설정
		mv.setViewName("post/test_upload.basic");
		return "upload js script video upload success ";

	}
}