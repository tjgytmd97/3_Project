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

	static String oldsleep ="";
	
	
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

	    session.setAttribute("sleepyresult",deltempvidFile(uploadPathvideo)); // 파일 삭제 메서드
	    String tempstr = deltempvidFile(uploadPathvideo);
	    System.out.print("static 졸음 파일 변수 : "+oldsleep);
	    System.out.println("졸음 판정 파일: " + tempstr);
	    
	    if(!(tempstr.isEmpty()||tempstr.equals("")||tempstr==null)||(oldsleep.isEmpty()||oldsleep.equals("")||oldsleep==null)) {
	    if(!oldsleep.equals(tempstr)) {
	    	oldsleep=tempstr;
	    	
	    	System.out.println("알람페이지 리다이렉트 이동");
	    	//return "redirect:/resources/html/alarm_play.html"; //졸음판정시 알람
	    	//return "resources/html/alarm_play.html"; //졸음판정시 알람
	    	mv.setViewName("resources/html/alarm_play.html");
	    	return "gomp3";
	    }
	    }
		
		// View 위치 설정
		mv.setViewName("post/test_upload.basic");
		return "upload js script video upload success ";

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
		
		Mp3Controller mp3con = new Mp3Controller(); // mp3 재생하기위해 딥러닝 비교 메서드 호출

		
		String readtxt= mp3con.readtxt(uploadPath2);	//졸음운정 판정결과 파일 이름 바당옴
		
		String result="";
	
		Arrays.sort(fileslist, Comparator.reverseOrder()); // 영상 삭제를 위해 내림차순으로 배열 정렬
		Arrays.sort(filesname, Comparator.reverseOrder());
	
		if(fileslist.length>1) {
		if(readtxt.equals(filesname[0])||readtxt.equals(filesname[1])) { //만약 가장 최신영상과 그 이전 영상이 딥러닝 판독값과 같다면
			 
			System.out.print("졸음운전 딥러닝 저장된 최신 영화과 비교 판정 결과 :"+readtxt);
			result = readtxt; //리턴값에 파일경로 담기
		}
		
		}
		
				
		if (fileslist.length > 50) { // 파일 최대숫자 지정

			for (int i = 50; i < fileslist.length; i++) {// 파일 지우기. 내림차순 정렬하여 오래된 파일(가장 먼저 생성된) 하나씩 지우기

				System.out.print("삭제될 파일 : " + fileslist[i]);
				boolean fileDeleted = fileslist[i].delete();

				System.out.println(" 파일 삭제 여부 : " + fileDeleted);
			}
		}
		
		return result;//딥러닝 결과를 리턴값에 파일경로 담기, 세션값 저장
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