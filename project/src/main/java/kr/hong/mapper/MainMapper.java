package kr.hong.mapper;

import org.apache.ibatis.annotations.Mapper;

// 1. Mapper interface + @(에노테이션)
// JDBC(Java+SQL) -> 생산성이떨어진다. 유지보수가 어렵다.
// 2. Mapper interface + XML(SQM Mapper File)
@Mapper
public interface MainMapper {
	// board table에서 게시판 리스트를 가져오는 동작구현
	//@Select("Select * from board")
	public String index();
	public String main1();
}
