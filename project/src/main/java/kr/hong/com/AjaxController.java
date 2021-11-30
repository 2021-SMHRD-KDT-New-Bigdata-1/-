package kr.hong.com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
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

}
