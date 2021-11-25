package kr.hong.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.hong.domain.User;

// 1. Mapper interface + @(에노테이션)
// JDBC(Java+SQL) -> 생산성이떨어진다. 유지보수가 어렵다.
// 2. Mapper interface + XML(SQM Mapper File)
@Mapper
public interface MainMapper {
	// board table에서 게시판 리스트를 가져오는 동작구현
	//@Select("Select * from board")
	public String login();
	public String studyhome();
	public String select();
	public String study();
	public String mypage();
	public String main();
	public String studyhome2();
	public String studyresult();
	public String index();

	public String join(User vo);
}


