package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.mypage.user.service.CommunityInterviewService;
import kr.co.jobstory.repository.domain.InterBoard;

@Controller
@RequestMapping("/community/interview")
public class CommunityInterviewController {
	
	@Autowired
	private CommunityInterviewService service;
	
	@RequestMapping("/list.do")
	public void list(Model model) throws Exception {
		System.out.println("list() invoked");
		List<InterBoard> list = service.list();
		for ( InterBoard b : list ) {
			System.out.println(b.getBoardNo());
			System.out.println(b.getApplyDate());
			System.out.println(b.getRegDate());

		
		}
		model.addAttribute("list", service.list());
		
		System.out.println(service.list());
	}

	@RequestMapping("/detail.do")
	public ModelAndView detail(int no) {
		service.viewCnt(no);
		ModelAndView mav = new ModelAndView("community/interview/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception{
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}
	
	@RequestMapping("/writeForm.do")
	public void writeForm() throws Exception {
	}
	
	@RequestMapping("/writes.do")
	public String insertBoard(InterBoard board,List<MultipartFile> attach)throws Exception{
		
		System.out.println("넘어오는값"+board);
		
		String fileName="";
		for(MultipartFile file : attach) {
			if(file.isEmpty()==true)continue;
//			System.out.println("제목 :" + board.getTitle());
//			System.out.println("파일 이름 :" +file.getOriginalFilename());
			file.transferTo(new File("C:/app/tomcat-work/wtpwebapps/jobstory/attach/community/interview",file.getOriginalFilename()));		
			fileName += file.getOriginalFilename();
		}
		board.setSerName(fileName);
		board.setSerPath("/attach/community/interview");
		System.out.println("잡 :"+board.getJobId());
		service.insertBoard(board);
		return "redirect:list.do";
	}
	
	
	
//	@RequestMapping("/interviewwrite.do")
//	public String insertBoard(InterBoard board) {
//		service.insertBoard(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "boardInterview.do";
//	
//	}

	
	
	
	
	
}















