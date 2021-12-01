package kr.hong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.hong.domain.LoginInfo;
import kr.hong.domain.Mypage;
import kr.hong.domain.Sentence;
import kr.hong.domain.Syllable;
import kr.hong.domain.User;
import kr.hong.domain.Word;

// 1. Mapper interface + @(에노테이션)
// JDBC(Java+SQL) -> 생산성이떨어진다. 유지보수가 어렵다.
// 2. Mapper interface + XML(SQM Mapper File)
@Mapper
public interface MainMapper {
	// board table에서 게시판 리스트를 가져오는 동작구현
	//@Select("Select * from board")
	public User login(LoginInfo info);
	public void join(User vo);
	//public String studyhome1();
	//public String studyhome2();
	//public String studyhome3();
	public String studyhome(String num); //new
	public String select();
	//public String studypage1();
	public String studypage2(String day);
	//public String studypage3();
	
	public List<Syllable> studypage2_sy(String day);
	public List<Word> studypage2_wo(String day);
	public List<Sentence> studypage2_sen(String day);
	
	public List<Mypage> mypage1_sy(String id);
	public List<Mypage> mypage1_wo(User vo);
	public List<Mypage> mypage1_se(User vo);
	
	public String mypage();
	public String main();
	public String studyresult2();
	public String index();
	public String weakpage();
	public String finallresult();
	public List<Word> WordList1(); //기존
	public List<Syllable> SylList(); //new
	public List<Word> WordList();  //new 
	public List<Sentence> SenList(); //new
	
}


