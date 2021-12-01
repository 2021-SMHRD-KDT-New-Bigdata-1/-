package kr.hong.com;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.hong.domain.LoginInfo;
import kr.hong.domain.Mypage;
import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
import kr.hong.domain.User;
import kr.hong.domain.Word;
import kr.hong.mapper.MainMapper;


@Controller
public class BoardController {

		@Autowired
		MainMapper mapper;
		
		@RequestMapping("/join.do")
		public String join(User vo) {
			
			mapper.join(vo);
			
			return "redirect:/main.do";
		}
		
		@RequestMapping("/login.do")
		public String login(LoginInfo info, HttpSession session) {
			
			User vo = mapper.login(info);
			
			session.setAttribute("vo", vo);
			
			return "redirect:/main.do";
		}
		
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) {
			session.invalidate();
			
			return "redirect:/main.do";
		}
		
	
	
		@RequestMapping("/finallresult.do")
		public String finallresult() {
			
			return "finallresult";
		}
		
		
		@RequestMapping("/weakpage.do")
		public String weakpage() {
			
			return "weakpage";
		}
		
		@RequestMapping("/studypage2.do")
		public String studypage2() {
			System.out.println("컨트롤러에 왔니..?");
			return "studypage2";
		}
		
		@RequestMapping("/studypage2_sy.do")
		public String studypage2_sy(String day, Model model){
			List<Syllable> list = mapper.studypage2_sy(day);
			model.addAttribute("list", list);
			return "studypage2";
		}
		@RequestMapping("/studypage2_wo.do")
		public String studypage2_wo(String day,Model model){
			System.out.println("여긴 옴?");
			List<Word> list = mapper.studypage2_wo(day);
			System.out.println("2");
			model.addAttribute("list", list);
			System.out.println("3");
			return "studypage2";
		}
		@RequestMapping("/studypage2_sen.do")
		public String studypage2_sen(String day,Model model){
			List<Sentence> list = mapper.studypage2_sen(day);
			model.addAttribute("list", list);
			return "studypage2";
		}
		
		
		@RequestMapping("/studyhome.do")
		public String studyhome(String num, Model model) {
			model.addAttribute("num", num);
			
			return "studyhome";
		}
		
		
		@RequestMapping("/select.do")
		public String select() {
			
			return "select";
		}

		@RequestMapping("/mypage1.do")
		public String mypage1(String num, Model model) {
			model.addAttribute("num", num);
			
			return "mypage1";
		}
		
		@RequestMapping("/Syllable_test.do")
		public String Syllable_test(HttpSession session, Model model) {
			System.out.println("되냐?0");
			User vo  = (User)session.getAttribute("vo");
			System.out.println("되냐?1");
			String id = vo.getUser_id();
			System.out.println("되냐?2");
			List<Mypage> list = mapper.mypage1_sy(id);
			System.out.println("되냐?3");
			model.addAttribute("list", list);
			System.out.println(list);
			return "mypage1";
		}
		
		@RequestMapping("/mypage2.do")
		public String myapge2() {
			
			return "mypage2";
		}
		@RequestMapping("/mypage3.do")
		public String myapge3() {
			
			return "mypage3";
		}
		
		@RequestMapping("/main.do")
		public String main() {
			
			return "main";
		}
		
		@RequestMapping("/flask_send_data3.do")
		public String flask_send_data3() {
			System.out.println("컨트롤러에 왔니..?");
			return "flask_send_data3";
		}
		@RequestMapping("/Result3.do")
		public String Result3() {
			System.out.println("hi");
			return "rece";
		}
		
		@RequestMapping("/studyresult2.do")
		public String studyresult2() {
			System.out.println("hi");
			return "studyresult2";
		}

		 


		
	}

