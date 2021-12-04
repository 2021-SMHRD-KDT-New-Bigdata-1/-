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
import kr.hong.domain.MypageStep;
import kr.hong.domain.PronAcc;
import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
import kr.hong.domain.Test;
import kr.hong.domain.Test_result;
import kr.hong.domain.User;
import kr.hong.domain.Word;
import kr.hong.domain.weak;
import kr.hong.mapper.MainMapper;


@Controller
public class BoardController60 {

		@Autowired
		MainMapper mapper;
	
		@RequestMapping("/select60.do")
		public String select60() {
			
			return "select60";
		}
		
		@RequestMapping("/study60home.do")
		public String study60home(String cate, Model model) {
			model.addAttribute("cate", cate);
			
			return "test60";
		}
		
		@RequestMapping("/studypage602.do")
		public String studypage2() {
			System.out.println("컨트롤러에 왔니..?");
			return "studypage602";
		}
		
		@RequestMapping("/studypage602_sy.do")
		public String studypage602_sy(String day, Model model){
			List<Syllable> list = mapper.studypage2_sy(day);
			model.addAttribute("list", list);
			model.addAttribute("cnt",0);
			return "studypage602";
		}
		@RequestMapping("/studypage602_wo.do")
		public String studypage602_wo(String day,Model model){
			List<Word> list = mapper.studypage2_wo(day);
			model.addAttribute("list", list);
			model.addAttribute("cnt",0);
			return "studypage602";
		}
		@RequestMapping("/studypage602_sen.do")
		public String studypage602_sen(String day,Model model){
			List<Sentence> list = mapper.studypage2_sen(day);
			model.addAttribute("list", list);
			model.addAttribute("cnt",0);
			return "studypage602";
		}
	}

