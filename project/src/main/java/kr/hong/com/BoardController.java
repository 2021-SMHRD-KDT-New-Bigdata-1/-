package kr.hong.com;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.hong.mapper.MainMapper;


@Controller


public class BoardController {
		
		@RequestMapping("/index.do")
		public String index() {
			
			return "index";
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
			
			return "studypage2";
		}
		
		@RequestMapping("/studyhome.do")
		public String studyhome() {
			
			return "studyhome";
		}
		
	
		@RequestMapping("/login.do")
		public String login() {
			
			return "login";
		}
		

		@RequestMapping("/select.do")
		public String select() {
			
			return "select";
		}

		@RequestMapping("/mypage.do")
		public String myapge() {
			
			return "mypage";
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

