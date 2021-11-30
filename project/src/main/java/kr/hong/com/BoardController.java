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
		

		@RequestMapping("/studypage1.do")
		public String studypage1() {
			
			return "studypage1";
		}
		
		@RequestMapping("/studypage2.do")
		public String studypage2() {
			
			return "studypage2";
		}
		
		@RequestMapping("/studypage3.do")
		public String studypage3() {
			
			return "studypage3";
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

		@RequestMapping("/mypage_main.do")
		public String myapge_main() {
			
			return "mypage_main";
		}
		@RequestMapping("/mypage1.do")
		public String myapge1() {
			
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
		@RequestMapping("/sentence_main.do")
		public String sentence_main() {
			
			return "sentence_main";
		}
		@RequestMapping("/voca_main.do")
		public String voca_main() {
			
			return "voca_main";
		}
		@RequestMapping("/syllable_main.do")
		public String syllable_main() {
			
			return "syllable_main";
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
		
			return "studyresult2";
		}

		 


		
	}

