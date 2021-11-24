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
		
		
		@RequestMapping("/studyhome2.do")
		public String studyhome2() {
			
			return "studyhome2";
		}
	
		@RequestMapping("/study.do")
		public String study() {
			
			return "study";
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
		

		
	}

