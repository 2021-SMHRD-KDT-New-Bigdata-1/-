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
import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
import kr.hong.domain.Test;
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
			System.out.println(vo.getUser_id());
			return "redirect:/main.do";
		}
		
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) {
			session.invalidate();
			
			return "redirect:/main.do";
		}
		
	
	
		@RequestMapping("/finalresult.do")
		public String finalresult() {
			
			return "finalresult";
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
			model.addAttribute("cnt",0);
			return "studypage2";
		}
		@RequestMapping("/studypage2_wo.do")
		public String studypage2_wo(String day,Model model){
			List<Word> list = mapper.studypage2_wo(day);
			model.addAttribute("list", list);
			model.addAttribute("cnt",0);
			return "studypage2";
		}
		@RequestMapping("/studypage2_sen.do")
		public String studypage2_sen(String day,Model model){
			List<Sentence> list = mapper.studypage2_sen(day);
			model.addAttribute("list", list);
			model.addAttribute("cnt",0);
			return "studypage2";
		}
		
		
		@RequestMapping("/Syl_weak.do") 
		public String Syl_weak(HttpSession session, Model model){
		User vo = (User)session.getAttribute("vo");
		String id = vo.getUser_id();
		List<Test> list = mapper.Syl_weak(id);
		model.addAttribute("list", list);
		return "weakselect"; 
		 }
		
		@RequestMapping("/Word_weak.do") 
		public String Word_weak(HttpSession session, Model model){
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Test> list = mapper.Word_weak(id);
			model.addAttribute("list", list);
			System.out.println(list);
			return "weakselect"; 
		}
		
		@RequestMapping("/Sen_weak.do") 
		public String Sen_weak(HttpSession session, Model model){
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Test> list = mapper.Sen_weak(id);
			model.addAttribute("list", list);
			System.out.println(list);
			return "weakselect"; 
		}
		 
		 
		
		
		@RequestMapping("/studyhome.do")
		public String studyhome(String cate, Model model) {
			model.addAttribute("cate", cate);
			
			return "studyhome";
		}
		
		
		@RequestMapping("/select.do")
		public String select() {
			
			return "select";
		}

		@RequestMapping("/Syllable_test.do")
		public String Syllable_test(HttpSession session, Model model, String num) {
			User vo  = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Mypage> list = mapper.mypage1_sy(id);
			model.addAttribute("list", list);
			return "mypage1";
		}
		
		@RequestMapping("/Word_test.do")
		public String Word_test(HttpSession session, Model model, String num) {
			User vo  = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Mypage> list = mapper.mypage1_wo(id);
			model.addAttribute("list", list);
			return "mypage1";
		}
		
		@RequestMapping("/Sentence_test.do")
		public String Sentence_test(HttpSession session, Model model, String num) {
			User vo  = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Mypage> list = mapper.mypage1_se(id);
			model.addAttribute("list", list);
			return "mypage1";
		}
		
		@RequestMapping("/Step_Result_sy.do")
		public String Step_Result_sy(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list1 = mapper.mypage1_step_sy1(id, step);
			model.addAttribute("step_list1", step_list1);
			
			List<MypageStep> step_list2 = mapper.mypage1_step_sy2(id, step);
			model.addAttribute("step_list2", step_list2);
			
			List<Mypage> list = mapper.mypage1_sy(id);
			model.addAttribute("list", list);
			return "mypage1";
		}
		
		@RequestMapping("/Step_Result_wo.do")
		public String Step_Result_wo(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list1 = mapper.mypage2_step_wo1(id, step);
			model.addAttribute("step_list1", step_list1);
			
			List<MypageStep> step_list2 = mapper.mypage2_step_wo2(id, step);
			model.addAttribute("step_list2", step_list2);
			
			List<Mypage> list = mapper.mypage1_wo(id);
			model.addAttribute("list", list);
			return "mypage2";
		}
		
		@RequestMapping("/Step_Result_se.do")
		public String Step_Result_se(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list1 = mapper.mypage3_step_se1(id, step);
			model.addAttribute("step_list1", step_list1);
			
			List<MypageStep> step_list2 = mapper.mypage3_step_se2(id, step);
			model.addAttribute("step_list2", step_list2);
			
			List<Mypage> list = mapper.mypage1_se(id);
			model.addAttribute("list", list);
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
		
		@RequestMapping("/test_insert.do")
		public String test_insert(String speak_accuracy, String lip_accuracy, String num, String id, String cnt, String day, String cate,
				Model model, HttpSession Session) {
			//System.out.println(num);
			//System.out.println(speak_accuracy);
			//System.out.println(lip_accuracy);
			//System.out.println(id);
			//System.out.println(cnt);
			
			User vo = (User)Session.getAttribute("vo");
			String user_id = vo.getUser_id();
			
			String weak="N";
			if(Integer.parseInt(speak_accuracy) < 50 || Integer.parseInt(lip_accuracy) < 50) {weak="Y";}
			
			if(cate.equals("1")) {
				mapper.sy_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak); //test 테이블에 인서트하는 mapper
				List<Syllable> list = mapper.studypage2_sy(day); //cate,day 에 맞는 단어 뽑는 mapper
				model.addAttribute("list", list);
			}else if(cate.equals("2")) {
				mapper.wo_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak );
				List<Word> list = mapper.studypage2_wo(day);
				model.addAttribute("list", list);
			}else if(cate.equals("3")) {
				mapper.sen_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak);
				List<Sentence> list = mapper.studypage2_sen(day);
				model.addAttribute("list", list);
			}else{System.out.println("test_insert 오류");}
			
			model.addAttribute("cnt",cnt);
			return "studypage2";
		}


		
	}

