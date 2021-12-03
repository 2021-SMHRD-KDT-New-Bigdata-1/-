package kr.hong.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

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
	public String weakselect(String num);
	
	public List<Syllable> studypage2_sy(String day);
	public List<Word> studypage2_wo(String day);
	public List<Sentence> studypage2_sen(String day);
	
	public List<Mypage> mypage1_sy(String id);
	public List<Mypage> mypage1_wo(String id);
	public List<Mypage> mypage1_se(String id);
	
	public List<MypageStep> mypage1_step_sy(@Param("id")String id, @Param("step")String step);
	public List<MypageStep> mypage2_step_wo(@Param("id")String id, @Param("step")String step);
	public List<MypageStep> mypage3_step_se(@Param("id")String id, @Param("step")String step);
	
	public List<PronAcc> mypage1_pron_acc(@Param("id")String id, @Param("step")String step);
	public List<PronAcc> mypage2_pron_acc(@Param("id")String id, @Param("step")String step);
	public List<PronAcc> mypage3_pron_acc(@Param("id")String id, @Param("step")String step);
	
	public String mypage();
	public String main();
	public String studyresult2();
	public String index();
	public String weakpage();
	public String finalresult();
	public List<Word> WordList1(); //기존
	public List<Syllable> SylList(); //new
	public List<Word> WordList();  //new 
	public List<Sentence> SenList(); //new
	//new
	public List<Test> Syl_weak(String id);
	public List<Test> Word_weak(String id);
	public List<Test> Sen_weak(String id);
	
	//test_select
	public List<Test_result> check_sy(@Param("id")String id, @Param("num")int num);
	public List<Test_result> check_word(@Param("id")String id, @Param("num")int num);
	public List<Test_result> check_sen(@Param("id")String id, @Param("num")int num);
	
	//test_insert
	public void sy_test_insert(@Param("num") int num,@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("user_id")String user_id,@Param("weak")String weak);
	public void wo_test_insert(@Param("num") int num,@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("user_id")String user_id,@Param("weak")String weak);
	public void sen_test_insert(@Param("num") int num,@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("user_id")String user_id,@Param("weak")String weak);
	
	//test_update
	public void sy_update(@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("weak")String weak,@Param("num") int num,@Param("user_id")String user_id);
	public void wo_update(@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("weak")String weak,@Param("num") int num,@Param("user_id")String user_id);
	public void sen_update(@Param("speak_accuracy") String speak_accuracy,@Param("lip_accuracy")String lip_accuracy, @Param("weak")String weak,@Param("num") int num,@Param("user_id")String user_id);
	
	//test result
	public List<Test_result> Syl_testList(@Param("id")String id, @Param("day")String day);
	public List<Test_result> Word_testList(@Param("id")String id, @Param("day")String day);
	public List<Test_result> Sen_testList(@Param("id")String id, @Param("day")String day);
	
	//weakpage
	public weak syl_weakstudy(@Param("num")int num, @Param("id")String id);
	public weak word_weakstudy(@Param("num")int num, @Param("id")String id);
	public weak sen_weakstudy(@Param("num")int num, @Param("id")String id);
	
	public List<Test> Syl_weak_my(@Param("id")String id, @Param("step")String step);
	public List<Test> Word_weak_my(@Param("id")String id, @Param("step")String step);
	public List<Test> Sen_weak_my(@Param("id")String id, @Param("step")String step);
}


