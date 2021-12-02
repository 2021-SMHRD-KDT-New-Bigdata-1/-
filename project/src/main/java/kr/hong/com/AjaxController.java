package kr.hong.com;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
import kr.hong.domain.Test_result;
import kr.hong.domain.User;
import kr.hong.domain.Word;
import kr.hong.mapper.MainMapper;

@RestController
public class AjaxController { //ajax를 통한 컨트롤러 통신
	
	@Autowired
	MainMapper mapper;
	
	@RequestMapping("/SylList.do")
	 public List<Syllable> SylList(Model model) {
		   
		   List<Syllable> list=mapper.SylList();
		   return list;
	      
	   }
	@RequestMapping("/WordList.do")
	 public List<Word> WordList(Model model) {
		   
		   List<Word> list=mapper.WordList();
		   return list;
	      
	   }
	@RequestMapping("/SenList.do")
	 public List<Sentence> SenList(Model model) {
		   
		   List<Sentence> list=mapper.SenList();
		   return list;
	      
	   }
	
	//test result ajax 
	@RequestMapping("/Syl_testList.do")
	 public List<Test_result> Syl_testList(String day, HttpSession session, Model model) {
		 User vo = (User)session.getAttribute("vo");
		 String id = vo.getUser_id();

		 List<Test_result> list=mapper.Syl_testList(id, day);
		 return list;
		 }
	 
	@RequestMapping("/Word_testList.do")
	 public List<Test_result> Word_testList(String day, HttpSession session, Model model) {
		 User vo = (User)session.getAttribute("vo");
		 String id = vo.getUser_id();
		 
		 List<Test_result> list=mapper.Word_testList(id, day);
		 return list;
		 }
	 
	@RequestMapping("/Sen_testList.do")
	 public List<Test_result> Sen_testList(String day, HttpSession session, Model model) {
		 User vo = (User)session.getAttribute("vo");
		 String id = vo.getUser_id();
		 
		 List<Test_result> list=mapper.Sen_testList(id, day);
		 return list;
		 }	

}
