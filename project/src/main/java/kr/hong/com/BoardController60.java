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
	}

