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
			System.out.println(list);
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
			return "mypage2";
		}
		
		@RequestMapping("/Sentence_test.do")
		public String Sentence_test(HttpSession session, Model model, String num) {
			User vo  = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<Mypage> list = mapper.mypage1_se(id);
			model.addAttribute("list", list);
			return "mypage3";
		}
		
		@RequestMapping("/Step_Result_sy.do")
		public String Step_Result_sy(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list = mapper.mypage1_step_sy(id, step);
			model.addAttribute("step_list", step_list);
			
			List<PronAcc> pron_acc = mapper.mypage1_pron_acc(id, step);
			model.addAttribute("pron_acc", pron_acc);
			
			List<Mypage> list = mapper.mypage1_sy(id);
			model.addAttribute("list", list);
			
			List<Test> test = mapper.Syl_weak_my(id, step);
			model.addAttribute("test", test);
			return "mypage1";
		}
		
		@RequestMapping("/Step_Result_wo.do")
		public String Step_Result_wo(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list = mapper.mypage2_step_wo(id, step);
			model.addAttribute("step_list", step_list);
			
			List<PronAcc> pron_acc = mapper.mypage2_pron_acc(id, step);
			model.addAttribute("pron_acc", pron_acc);
			
			List<Mypage> list = mapper.mypage1_wo(id);
			model.addAttribute("list", list);
			
			List<Test> test = mapper.Word_weak_my(id, step);
			model.addAttribute("test", test);
			return "mypage2";
		}
		
		@RequestMapping("/Step_Result_se.do")
		public String Step_Result_se(String step, HttpSession session, Model model) {
			
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			List<MypageStep> step_list = mapper.mypage3_step_se(id, step);
			model.addAttribute("step_list", step_list);
			
			List<PronAcc> pron_acc = mapper.mypage3_pron_acc(id, step);
			model.addAttribute("pron_acc", pron_acc);
			
			List<Mypage> list = mapper.mypage1_se(id);
			model.addAttribute("list", list);
			
			List<Test> test = mapper.Sen_weak_my(id, step);
			model.addAttribute("test", test);
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

			User vo = (User)Session.getAttribute("vo");
			String user_id = vo.getUser_id();
			
			
			
			String weak="N";
			if(Integer.parseInt(speak_accuracy) < 50 || Integer.parseInt(lip_accuracy) < 50) {weak="Y";}
			
			if(cate.equals("1")) {
				//우선 내 id, num에 이미 학습한 데이터가 존재하는가? - select문 진행
				List<Test_result> list_t = mapper.check_sy(user_id, Integer.parseInt(num));

				//학습한 데이터가 없다면 insert
				if(list_t.isEmpty()) {
					System.out.println("값이 없어요~ insert 할게여");
					mapper.sy_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak); //test 테이블에 인서트하는 mapper
					
				}else { //존재한다면  update
					System.out.println("already insert...-> update 진행 ..");
					mapper.sy_update(speak_accuracy, lip_accuracy, weak, Integer.parseInt(num),user_id);
				}
				
				List<Syllable> list = mapper.studypage2_sy(day); //cate,day 에 맞는 단어 뽑는 mapper
				model.addAttribute("list", list);
				
			}else if(cate.equals("2")) {
				List<Test_result> list_t = mapper.check_word(user_id, Integer.parseInt(num));
				if(list_t.isEmpty()) {
					mapper.wo_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak );
				}else { 
					System.out.println("already insert...-> update 진행 ..");
					mapper.wo_update(speak_accuracy, lip_accuracy, weak, Integer.parseInt(num),user_id);
				}
				List<Word> list = mapper.studypage2_wo(day);
				model.addAttribute("list", list);
				
			}else if(cate.equals("3")) {
				List<Test_result> list_t = mapper.check_sen(user_id, Integer.parseInt(num));
				
				if(list_t.isEmpty()) {
					mapper.sen_test_insert(Integer.parseInt(num), speak_accuracy, lip_accuracy, user_id, weak);
				}else { 
					System.out.println("already insert...-> update 진행 ..");
					mapper.sen_update(speak_accuracy, lip_accuracy, weak, Integer.parseInt(num),user_id);
				}
				List<Sentence> list = mapper.studypage2_sen(day);
				model.addAttribute("list", list);
					
			}else{System.out.println("test_insert 오류");}
			
			model.addAttribute("cnt",cnt);
			if(cnt.equals("5")) {
				return "redirect:finalresult.do?day="+day+"&cate="+cate;
			}
			
			return "studypage2";
		}

		@RequestMapping("/syl_weakstudy.do") 
		public String syl_weakstudy(Model model, HttpSession session, int num){
		User vo = (User)session.getAttribute("vo");
		String id = vo.getUser_id();
		weak list = mapper.syl_weakstudy(num, id);
		model.addAttribute("list", list);
		return "weakpage"; 
		 }
		
		@RequestMapping("/word_weakstudy.do") 
		public String word_weakstudy(Model model, HttpSession session, int num){
			User vo = (User)session.getAttribute("vo");
			String id = vo.getUser_id();
			weak list = mapper.word_weakstudy(num, id);
			model.addAttribute("list", list);
			return "weakpage"; 
		}
		
		@RequestMapping("/sen_weakstudy.do") 
		public String sen_weakstudy(Model model, HttpSession session, int num){
		User vo = (User)session.getAttribute("vo");
		String id = vo.getUser_id();
		weak list = mapper.sen_weakstudy(num, id);
		model.addAttribute("list", list);
		return "weakpage";   
		 }
		

	}

