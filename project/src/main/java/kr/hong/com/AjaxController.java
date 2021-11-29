package kr.hong.com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.hong.domain.User;
import kr.hong.domain.Word;
import kr.hong.mapper.MainMapper;

@RestController
public class AjaxController { //ajax를 통한 컨트롤러 통신
	
	@Autowired
	MainMapper mapper;
	
	@RequestMapping("/WordList1.do")
	 public List<Word> WordList1(Model model) {
		   
		   List<Word> list=mapper.WordList1();
		   return list;
	      
	   }

}
